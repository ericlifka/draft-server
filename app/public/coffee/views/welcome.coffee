VH = Loader.require 'views/Helper'
$ = Loader.require 'jQuery'

Loader.register 'views/welcome', (viewPane) ->
    viewPane.append $ '<h1>Welcome</h1>'
    viewPane.append VH.makeList [
        VH.makeLink 'Register', 'register'
        VH.makeLink 'Sign In', 'dashboard'
    ]

