express = require 'express'
auth = require './users/authentication'

app = express()
app.use express.basicAuth auth
app.use express.static "#{__dirname}/public"

#demonstrates where user is located
app.get '/test', (req, res) ->
    res.send req.user

app.listen 3000
console.log 'listening on http://localhost:3000'

