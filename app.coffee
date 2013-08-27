express = require "express"
router = require "./router"
config = require "./config/config.coffee"
path = require "path"
http = require "http"

# APP CONFIG
app = do express
app.configure ->
  app.set 'port', config.site.port
  app.set 'title', config.site.title
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'jade'
  app.use express.logger 'dev'
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router
  app.use(express.static(path.join(__dirname, 'assets')))
  @
app.configure 'development', ->
  app.use express.errorHandler()
  @

# ROUTES
app.get '/', router.routes.index

# LISTEN
http.createServer(app).listen app.get('port'), config.site.host, ->
  console.log "Express server listening on port: #{config.site.port}"
