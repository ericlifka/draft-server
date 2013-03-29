$ = Loader.require 'jQuery'

class ViewPane
    initialize: ->
        @views = {}
        @pane = $ '<div>'
        @pane.appendTo $ 'body'

    resetView: ->
        @pane.empty()

    getView: (viewName) ->
        if not @views[viewName]
            @views[viewName] = Loader.require "views/#{viewName}"
        @views[viewName]

    render: (viewName, config={}, target=@pane) ->
        view = @getView viewName
        view target, config

Loader.register 'views/ViewPane', new ViewPane()

