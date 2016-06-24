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
  grunt.loadNpmTasks('grunt-deployments');

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
/*
grunt.initConfig({
  deployments: {
    options: {
      // any should be defined options here
    },
    // "Local" target
    "local": {
      "title": "Local",
      "database": "local_db_name",
      "user": "local_db_username",
      "pass": "local_db_password",
      "host": "local_db_host",
      "url": "local_db_url"
      // note that the `local` target does not have an "ssh_host"
    },
    // "Remote" targets
    "develop": {
      "title": "Development",
      "database": "development_db_name",
      "user": "development_db_username",
      "pass": "development_db_password",
      "host": "development_db_host",
      "url": "development_db_url",
      "ssh_host": "ssh_user@ssh_host"
    },
    "stage": {
      "title": "Stage",
      "database": "stage_db_name",
      "user": "stage_db_username",
      "pass": "stage_db_password",
      "host": "stage_db_host",
      "url": "stage_db_url",
      "ssh_host": "ssh_user@ssh_host"
    },
    "production": {
      "title": "Production",
      "database": "production_db_name",
      "user": "production_db_username",
      "pass": "production_db_password",
      "host": "production_db_host",
      "url": "production_db_url",
      "ssh_host": "ssh_user@ssh_host"
    }
  },
})*/