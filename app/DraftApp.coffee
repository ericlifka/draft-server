express = require 'express'
users = require './server/users'
pages = require './server/pages'

app = express()
app.get '/', pages.welcome
app.get '/signup', pages.signup
app.post '/signup', users.register

app.use express.basicAuth users.authenticate
app.use express.static "#{__dirname}/public"

#demonstrates where user is located
app.get '/test', (req, res) ->
    res.send req.user

app.listen 3000
console.log 'listening on http://localhost:3000'

