(function() {
  define(['backbone', 'router', 'site'], function(Backbone, AppRouter, site) {
    return $(function() {
      return site.router = new AppRouter();
    });
  });

}).call(this);
