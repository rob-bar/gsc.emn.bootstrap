module.exports = (grunt) ->
  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

  # Project configuration.
  grunt.initConfig
    vendorlibs:['assets/js/vendor/*.js', 'assets/js/base.js']
    compass:
      app:
        options:
          require: ['compass-h5bp','ceaser-easing']
          sassDir: 'assets/css'
          cssDir: 'assets/css'
          imagesDir: 'assets/img'
          fontsDir: 'assets/font'
          httpPath: "/"
          relativeAssets: true
          boring: true
          debugInfo: false
          outputStyle: 'nested'
          raw: 'preferred_syntax = :sass\n'

    coffee:
      app:
        files: [
          expand: true
          preserve_dirs: true
          bare: false
          cwd: 'assets/coffee'
          src: ['**/*.coffee']
          dest: 'assets/js'
          ext: '.js'
        ]

    requirejs:
      compile:
        options:
          mainConfigFile: 'assets/js/build.js'
          baseUrl: "assets/js"
          name: "base"
          include: ['templates', 'build']
          insertRequire: ['templates']
          out: 'assets/js/base.min.js'
          preserveLicenseComments: false

    imagemin:
      dist:
        options:
          optimizationLevel: 3
        files: [
            expand: true,
            cwd: "assets/img/",
            src: "**/*.{jpg,jpeg}"
            dest: "assets/img/"
        ]

    jade:
      compile:
        options:
          compileDebug: false
          client: true
          amd: true
        files:
          "assets/templates/templates.js": ["assets/templates/*.jade"]

    jshint:
      app:
        options:
          sub: true
          boss: true
          expr: true
          eqnull: true
        files:
          src: ['assets/js/base.js', 'app.js']

    concat:
      options:
        stripBanners: true
      dist:
        src: '<%= vendorlibs %>',
        dest: 'assets/js/app.js'

    uglify:
      app:
        options:
          sourceMap: 'assets/js/app.js.map' # the sourcemap
        files:
          'assets/js/app.min.js': ['assets/js/app.js']

    watch:
      app:
        files: ['assets/coffee/**/*.coffee']
        tasks: ['coffee:app']
      sass:
        files: ['assets/css/**/*.sass']
        tasks: ['compass']
      scss:
        files: ['assets/css/**/*.scss']
        tasks: ['compass']
      jade:
        files: ['assets/templates/**/*.jade']
        tasks: ['jade']

  # Default task.
  grunt.registerTask 'default', ['compass', 'coffee:app', 'jshint']

  # deploy
  grunt.registerTask 'deploy', ['compass', 'coffee:app', 'jshint', 'concat', 'uglify', 'imagemin', 'requirejs']
