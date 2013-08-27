config = require "../config/config.coffee"
if config.site.db?
  mongoose = require "mongoose"
  mongoose.connect config.site.db

exports.routes =
  index: (req, res) ->
    res.render "pages/index"
    @