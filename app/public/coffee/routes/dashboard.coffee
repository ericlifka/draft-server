ViewPane = Loader.require 'views/ViewPane'

class Dashboard
    index: ->
        ViewPane.render 'dashboard',
            gameTypes: ['sealed', 'draft', 'constructed']
            activeGames: []


Loader.register 'routes/dashboard', new Dashboard()

