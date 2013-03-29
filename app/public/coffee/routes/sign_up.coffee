ViewPane = Loader.require 'views/ViewPane'

class SignUp
    index: ->
        ViewPane.render 'signUp'

Loader.register 'routes/signUp', new SignUp()

