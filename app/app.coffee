express = require 'express'
auth = require './server/users/authentication'
pages = require './server/pages'

app = express()
app.get '/', (req, res) ->
    res.send 'hi'

app.use express.basicAuth auth
app.use express.static "#{__dirname}/public"

#demonstrates where user is located
app.get '/test', (req, res) ->
    res.send req.user

app.listen 3000
console.log 'listening on http://localhost:3000'

