ViewPane = Loader.require 'views/ViewPane'
Router = Loader.require 'routes/Router'
$ = Loader.require 'jQuery'
_ = Loader.require 'underscore'

makeNewGamesList = (items) ->
    ul = $ '<ul>'
    _.each items, (type) ->
        li = $ "<li><a href='#'>New #{type} game</a></li>"
        li.on 'click', ->
            Router.goTo 'newGame', type
        ul.append li
    ul

Loader.register 'views/dashboard', (viewPane, config) ->
    gameTypes = config.gameTypes or []
    activeGames = config.activeGames or []

    viewPane.append $ '<h1>Dashboard</h1>'
    viewPane.append makeNewGamesList gameTypes

    myGamesPane = $ '<div>'
    myGamesConfig =
        activeGames: activeGames
    ViewPane.render 'dashboard/myGames', myGamesConfig, myGamesPane
    viewPane.append myGamesPane

