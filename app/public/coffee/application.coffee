ViewPane = Loader.require 'views/ViewPane'
Router = Loader.require 'routes/Router'

Loader.addLoadScript ->
    console.log 'Launching Draft App'

    ViewPane.initialize()
    Router.initialize()

    Router.goTo 'signUp'

