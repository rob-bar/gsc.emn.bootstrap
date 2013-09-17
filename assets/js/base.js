(function() {
  define(['backbone', 'router', 'site', 'helper'], function(Backbone, AppRouter, site, helper) {
    return $(function() {
      return $('body').html(helper.get_template("first", {
        value: "node template engine"
      }));
    });
  });

}).call(this);
