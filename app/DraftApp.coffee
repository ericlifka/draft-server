express = require 'express'
users = require './server/users'
pages = require './server/pages'

auth = express.basicAuth users.authenticate

app = express()
app.use express.bodyParser()
app.post '/signup', users.register
app.use express.static "#{__dirname}/public"

#demonstrates where user is located
app.get '/test', auth, (req, res) ->
    console.log '/test'
    res.send req.user

app.listen 3000
console.log 'listening on http://localhost:3000'

