class Router
    initialize: ->
        @routes = {}
    
    getRoute: (routeName) ->
        if not @routes[routeName]
            @routes[routeName] = Loader.require "routes/#{routeName}"
        @routes[routeName]

    goTo: (routeName, action='index') ->
        route = @getRoute routeName
        route[action].call()


Loader.register 'routes/Router', new Router()

