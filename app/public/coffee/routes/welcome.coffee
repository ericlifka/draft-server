ViewPane = Loader.require 'views/ViewPane'

class Welcome
    index: ->
        ViewPane.render 'welcome'

Loader.register 'routes/welcome', new Welcome()

