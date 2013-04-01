express = require 'express'
users = require './server/users'
pages = require './server/pages'

auth = express.basicAuth users.authenticate

app = express()
app.use express.bodyParser()
app.use express.static "#{__dirname}/public"
app.post '/signup', users.register
app.get '/user', auth, users.whoAmI

app.listen 3000
console.log 'listening on http://localhost:3000'

