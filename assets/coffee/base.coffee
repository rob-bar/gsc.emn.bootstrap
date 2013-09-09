define ['backbone', 'router', 'site'],
(Backbone, AppRouter, site) ->

  $ ->
    site.router = new AppRouter()
    # Backbone.emulateJSON = true
    # Backbone.emulateHTTP = true
