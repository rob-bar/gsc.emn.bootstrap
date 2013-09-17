define ['backbone', 'jquery', 'router', 'site', 'helper'],
(Backbone, $, AppRouter, site, helper) ->
  $ ->
    helper.get_template 'first', {}
