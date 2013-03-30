
module.exports =
    register: (req, res) ->
        console.log "request to register: #{req}"
        res.send 'ok'

    authenticate: (user, pass) ->
        true

