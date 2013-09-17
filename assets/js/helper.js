(function() {
  define(['module', 'jquery', 'backbone', 'blade'], function(module, $, Backbone, blade) {
    var helper;
    helper = {
      get_template: function(name, data) {
        return blade.Runtime.loadTemplate("" + name + ".blade", function(err, tmpl) {
          return tmpl(data, function(err, html) {
            if (err) {
              throw err;
            }
            return html;
          });
        });
      },
      track_page: function() {
        var frag, _gaq;
        _gaq = window._gaq || [];
        frag = Backbone.history.getFragment();
        return _gaq.push(['_trackPageview', "/" + frag]);
      }
    };
    return module.exports = helper;
  });

}).call(this);
