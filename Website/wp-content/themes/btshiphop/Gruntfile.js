module.exports = function (grunt) {
  'use strict';
  grunt.initConfig({
    clean: {
      build: ['build']
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
        dest: 'js/scripts.js'
      }
    },
    watch: {
      sass: {
        files: [
          'assets/sass/main.scss',
          'assets/sass/**/*.scss'
        ],
        tasks: ['sass:build']
      },
      build: {
        files: ['js/*.js'],
        tasks: ['jshint', 'browserify', 'uglify']
      },
    },
    sass: {
      options: {
        sourceMap: true
      },
      dist: {
        files: {
          'main.css': 'main.scss'
        }
      }
    },
    uglify: {
      player: {
        options: {
          sourceMap: true
        },
        files: {
          'js/scripts.min.js': ['js/scripts.js']
        }
      }
    }
  });


  grunt.loadNpmTasks('grunt-contrib-connect');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-browserify');
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-concurrent');
  grunt.loadNpmTasks('grunt-sass');
  grunt.loadNpmTasks('grunt-contrib-concat');

  // Register tasks
  grunt.registerTask('default', [
    'dev',
    'build'
  ]);
  grunt.registerTask('dev', [
    'jshint',
    'concat'
  ]);
  grunt.registerTask('build', [
    'sass',
    'uglify'
  ]);

  grunt.task.run([
    'open',
    'watch'
  ]);
};
