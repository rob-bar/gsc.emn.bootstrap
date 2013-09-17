define ['module', 'jquery', 'backbone','blade'],
(module, $, Backbone, blade) ->

  helper =
    get_template: (name, data) ->
      blade.Runtime.loadTemplate "#{name}.blade", (err, tmpl) ->
        tmpl data, (err, html) ->
          if err then throw err
          return html

    track_page: ->
      _gaq = window._gaq || []
      frag = Backbone.history.getFragment()
      _gaq.push(['_trackPageview', "/#{frag}"])

  module.exports = helper
