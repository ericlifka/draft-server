Loader.register 'views/dashboard/myGames', (viewPane, config) ->
    $ = Loader.require 'jQuery'

    $('<h3>My Games</h3>').appendTo viewPane

