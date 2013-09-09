(function() {
  define(['module', 'underscore', 'backbone'], function(module, _, Backbone) {
    var site;
    site = {
      config: {},
      vent: _.extend({}, Backbone.Events)
    };
    return module.exports = site;
  });

}).call(this);
