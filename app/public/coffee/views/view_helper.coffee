$ = Loader.require 'jQuery'
Router = Loader.require 'routes/Router'

class ViewHelper
    makeLink: (text, route, action='') ->
        href = "#{route}"
        if action
            href += "/#{action}"

        link = $ "<a href='##{href}' class='button-link'>#{text}</a>"

    makeList: (items) ->
        ul = $ '<ul>'
        for item in items
            ul.append $('<li>').append item
        ul

    br: ->
        $ '<br>'

    h1: (text) ->
        $('<h1>').html text

Loader.register 'views/Helper', new ViewHelper()

