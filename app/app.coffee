express = require 'express'

PUBLIC = "#{__dirname}/public"

appServer = express()
appServer.use express.static PUBLIC

appServer.listen 3000
console.log 'listening on http://localhost:3000'

