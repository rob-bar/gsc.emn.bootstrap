mongoose = require "mongoose"
config = require "../config/config.coffee"

if config.site.db?
  mongoose.connect config.site.db

exports.routes =
  index: (req, res) ->
    res.render "pages/index"
    @