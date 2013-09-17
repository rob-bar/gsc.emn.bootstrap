(function() {
  define(['backbone', 'jquery', 'router', 'site', 'helper'], function(Backbone, $, AppRouter, site, helper) {
    return $(function() {
      return helper.get_template('first', {});
    });
  });

}).call(this);
