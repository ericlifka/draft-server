ViewPane = Loader.require 'views/ViewPane'
VH = Loader.require 'views/Helper'
$ = Loader.require 'jQuery'

makeNewGamesList = (items) ->
    links = (VH.makeLink("New #{type}", 'newGame', type) for type in items)
    VH.makeList links

loadUser = (target) ->
    $.ajax '/user',
        error: -> (req, status, error) ->
            console.log 'failed', status, error
        success: (data) ->
            $(target).html "Welcome #{data.username}!"

Loader.register 'views/dashboard', (viewPane, config) ->
    gameTypes = config.gameTypes or []
    activeGames = config.activeGames or []

    welcomeDiv = $ '<div class="userWelcome">'
    viewPane.append welcomeDiv
    loadUser welcomeDiv

    viewPane.append $ '<h1>Dashboard</h1>'
    viewPane.append makeNewGamesList gameTypes

    myGamesPane = $ '<div>'
    myGamesConfig =
        activeGames: activeGames
    ViewPane.renderSub 'dashboard/myGames', myGamesConfig, myGamesPane
    viewPane.append myGamesPane

