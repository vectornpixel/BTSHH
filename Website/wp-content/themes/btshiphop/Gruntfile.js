module.exports = function (grunt) {
  'use strict';
  var packageInfo = require('./package'),
      webHome = grunt.option('web'),
      serverPort = grunt.option('port') || 8777,
      proxy = require('proxy-middleware'),
      url = require('url'),
      ampProxyOpts = url.parse('https://api2.iheart.com/api');

  ampProxyOpts.route = '/amp';

  grunt.initConfig({
    clean: {
      build: ['build']
    },
    'saucelabs-qunit': {
      dev: {
        options: {
          //Set creds in ENV vars
          // export SAUCE_USERNAME=XXX
          // export SAUCE_ACCESS_KEY=XXX
          urls: ['http://localhost:' + serverPort + '/tests/qunit/runners/basic.html'],
          tunnelTimeout: 5,
          build: packageInfo.version,
          concurrency: 3,
          'avoid-proxy': false,
          browsers: [
            {
              browserName: 'chrome',
              version: '34',
              platform: 'Windows 7'
            }
          ],
          testInterval: 60000,
          testname: 'player qunit tests',
          tags: ['master', 'dev', packageInfo.version]
        }
      }
    },
    connect: {
      server: {
        options: {
          port: serverPort,
          hostname: '0.0.0.0',
          middleware: function(connect, options, middlewares) {
            // inject a custom middleware into the array of default middlewares
            middlewares.push(proxy(ampProxyOpts));
            return middlewares;
          }
        }
      },
      alive: {
        options: {
          port: serverPort,
          keepalive: true,
          hostname: '0.0.0.0',
           middleware: function(connect, options, middlewares) {
            // inject a custom middleware into the array of default middlewares
            middlewares.push(proxy(ampProxyOpts));
            return middlewares;
          }
        }
      }
    },
    browserify: {
      client: {
        src: ['index.js'],
        dest: 'dist/player.js',
        options: {
          // For weblibjs so that browserify doesn't try to resolve request
          ignore: ['request'],
          browserifyOptions: {
            standalone: 'IHRPlayer',
            debug: true
          }
        }
      },
      test: {
        src: ['./tests/suite.js'],
        dest: 'tests/suite.browserified.js',
        options: {
          // For weblibjs so that browserify doesn't try to resolve request
          ignore: ['request'],
          browserifyOptions: {
            debug: true
          }
        }
      }
    },
    jshint: {
      options: {
        jshintrc: true
      },
      all: ['lib/**/*.js']
    },
    mochaTest: {
      test: {
        options: {
          reporter: 'spec'
        },
        src: ['tests/mocha/**/test.*.js']
      }
    },
    watch: {
      build: {
        files: ['lib/**/*.js', 'tests/**/*.js'],
        tasks: ['jshint', 'jsdoc', 'browserify', 'uglify']
      },
      dev: {
        files: ['lib/**/*.js', 'tests/**/*.js'],
        tasks: ['test']
      }
    },
    concurrent: {
      target: {
        tasks: ['server', 'watch:build'],
        options: {
          logConcurrentOutput: true
        }
      }
    },
    uglify: {
      player: {
        options: {
          sourceMap: true
        },
        files: {
          'dist/player.min.js': ['dist/player.js']
        }
      }
    }
  });

  grunt.registerTask('jsdoc', 'Generate jsdoc', function () {
    var exec = require('child_process').exec
      , done = this.async();
    grunt.log.writeln('Generating jsdoc...');
    exec('jsdoc README.md -c conf.json -r -t node_modules/ink-docstrap/template', done);
  });

  grunt.loadNpmTasks('grunt-contrib-connect');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-browserify');
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-mocha-test');
  grunt.loadNpmTasks('grunt-saucelabs');
  grunt.loadNpmTasks('grunt-concurrent');
  grunt.loadNpmTasks('grunt-connect-proxy');
  grunt.loadNpmTasks('grunt-browserify');

  grunt.registerTask('server', ['build', 'connect:alive']);
  grunt.registerTask('build', ['jshint', 'browserify', 'uglify']);
  grunt.registerTask('test', ['build', 'connect:server', 'configureProxies']);
  grunt.registerTask('test-sauce', ['build', 'connect:server', 'saucelabs-qunit']);
  grunt.registerTask('default', ['concurrent']);
};
