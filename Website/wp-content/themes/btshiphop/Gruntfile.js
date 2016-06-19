/*
  Grunt Build version 1.
  Version 1.5 will include: Github, FTP, Database Backup, Proxy Server, Css Lint
*/
module.exports = function (grunt) {
  'use strict';
  grunt.initConfig({
    clean: {
      assets: 'assets'
    },
    jshint: {
      options: {
        jshintrc: true
      },
      all: ['js/*.js']
    },
    concat: {
      dist: {
        src: ['js/*.js'],
        dest: 'assets/js/scripts.js'
      }
    },
    sass: {
      dist: {
        options: {
          style: 'expanded'
        },
        files: {
          'assets/css/main.css': 'assets/sass/main.scss'
        }
      }
    },
    watch: {
      sass: {
        files: ['assets/sass/main.scss','assets/sass/**/*.scss'],
        tasks: ['sass']
      },
      build: {
        files: ['js/*.js'],
        tasks: ['jshint', 'browserify', 'uglify']
      },
    },
    uglify: {
      player: {
        options: {
          sourceMap: true
        },
        files: {
          'assets/js/scripts.min.js': ['assets/js/scripts.js']
        }
      }
    }
  });

// load NPM tasks individually
  grunt.loadNpmTasks('grunt-contrib-connect');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-browserify');
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-concurrent');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-sass');
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-clean');

  // Register tasks
  grunt.registerTask('default', [
    'dev',
    'build'
  ]);
  grunt.registerTask('dev', [
    'jshint',
     'sass'
  ]);
  grunt.registerTask('build', [
    'concat',
    'uglify'
  ]);

  grunt.task.run([
    'dev',
    'watch'
  ]);
};
