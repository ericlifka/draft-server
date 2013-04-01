ViewPane = Loader.require 'views/ViewPane'
$ = Loader.require 'jQuery'


class Router
    initialize: ->
        @routes = {}
        $(window).hashchange()
    
    getRoute: (routeName) ->
        if not @routes[routeName]
            @routes[routeName] = Loader.require "routes/#{routeName}"
        @routes[routeName]

    goTo: (routeName, action='index') ->
        try
            route = @getRoute routeName
            route[action].call()
        catch err
            # If the route doesn't exist attempt to call the view directly
            # This allows 'default' routes that don't modify the view in any way
            ViewPane.render routeName

router = new Router()

$(window).hashchange ->
    hash = location.hash.split('?')[0] # pull off any url parameters
    parts = hash.split '/'
    route = parts[0][1..]
    action = parts[1]
    if not route
        route = "welcome"

    router.goTo route, action

Loader.register 'routes/Router', router

