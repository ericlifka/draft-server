$ = Loader.require 'jQuery'
Router = Loader.require 'routes/Router'

class ViewHelper
    makeLink: (text, route, action='') ->
        href = "#{route}"
        if action
            href += "/#{action}"

        link = $ "<a href='##{href}'>#{text}</a>"

    makeList: (items) ->
        ul = $ '<ul>'
        for item in items
            ul.append $('<li>').append item
        ul

Loader.register 'views/Helper', new ViewHelper()

