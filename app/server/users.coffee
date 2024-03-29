mongo = require './mongo'

module.exports =
    whoAmI: (req, res) ->
        res.set 'Content-Type', 'application/json'
        res.send
            username: req.user

    register: (req, res) ->
        user =
            username: req.body.username
            password: req.body.password
        mongo.insert 'users', user, (err) ->
            if not err
                res.redirect "#registered"
            else
                res.send "Couldn't register: #{err}"

    authenticate: (user, pass, auth) ->
        query =
            username: user
        mongo.findOne 'users', query, (err, doc) ->
            if not err and doc?.password is pass
                auth null, user
            else
                auth "Couldn't authenticate", null

