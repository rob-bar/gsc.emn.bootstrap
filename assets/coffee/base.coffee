define ['backbone', 'router', 'site', 'helper'],
(Backbone, AppRouter, site, helper) ->

  $ ->
    # site.router = new AppRouter()
    $('body').html helper.get_template "first", {value: "node template engine"}
    # Backbone.emulateJSON = true
    # Backbone.emulateHTTP = true
