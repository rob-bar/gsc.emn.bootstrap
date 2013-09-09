define ['module','underscore','backbone'],
(module, _, Backbone) ->
  site=
    config: {}
    vent: _.extend {}, Backbone.Events

  module.exports = site
