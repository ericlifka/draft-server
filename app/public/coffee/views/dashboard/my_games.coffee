$ = Loader.require 'jQuery'

Loader.register 'views/dashboard/myGames', (viewPane, config) ->
    viewPane.append $ '<h3>My Games</h3>'
    $.ajax '/test',
        complete: ->
            console.log 'request completed'

