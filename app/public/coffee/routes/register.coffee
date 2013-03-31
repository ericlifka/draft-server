ViewPane = Loader.require 'views/ViewPane'

class Register
    index: ->
        ViewPane.render 'register'


Loader.register 'routes/register', new Register()

