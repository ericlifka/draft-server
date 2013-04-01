ViewPane = Loader.require 'views/ViewPane'
Router = Loader.require 'routes/Router'

Loader.addLoadScript ->
    console.log 'Launching App'

    ViewPane.initialize()
    Router.initialize()

