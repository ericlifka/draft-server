ViewPane = Loader.require 'views/ViewPane'
Router = Loader.require 'routes/Router'
VH = Loader.require 'views/Helper'
$ = Loader.require 'jQuery'
_ = Loader.require 'underscore'

makeNewGamesList = (items) ->
    links = (VH.makeLink("New #{type}", 'newGame', type) for type in items)
    VH.makeList links

Loader.register 'views/dashboard', (viewPane, config) ->
    gameTypes = config.gameTypes or []
    activeGames = config.activeGames or []

    viewPane.append $ '<h1>Dashboard</h1>'
    viewPane.append makeNewGamesList gameTypes

    myGamesPane = $ '<div>'
    myGamesConfig =
        activeGames: activeGames
    ViewPane.renderSub 'dashboard/myGames', myGamesConfig, myGamesPane
    viewPane.append myGamesPane

