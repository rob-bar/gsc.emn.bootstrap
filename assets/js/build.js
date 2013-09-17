(function() {
  require.config({
    deps: ['base'],
    baseUrl: "/js/",
    paths: {
      jquery: 'vendor/jquery',
      underscore: 'vendor/underscore',
      backbone: 'vendor/backbone',
      async: 'vendor/async',
      blade: '/blade/blade'
    },
    shim: {
      underscore: {
        exports: "_"
      },
      blade: {
        exports: "blade"
      },
      backbone: {
        deps: ['underscore', 'jquery'],
        exports: 'Backbone'
      }
    }
  });

}).call(this);
