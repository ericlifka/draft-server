$ = Loader.require 'jQuery'
Router = Loader.require 'routes/Router'

class ViewHelper
    makeLink: (text, route, action='index') ->
        link = $ "<a href='#'>#{text}</a>"
        link.on 'click', ->
            Router.goTo route, action
            false

    makeList: (items) ->
        ul = $ '<ul>'
        for item in items
            ul.append $('<li>').append(item)
        ul

Loader.register 'views/Helper', new ViewHelper()

