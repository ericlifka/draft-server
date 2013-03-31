mongo = require './mongo'

module.exports =
    register: (req, res) ->
        user =
            username: req.body.username
            password: req.body.password
        mongo.insert 'users', user, (err) ->
            if not err
                res.send 'ok'
            else
                res.send "Couldn't register"

    authenticate: (user, pass) ->
        true

