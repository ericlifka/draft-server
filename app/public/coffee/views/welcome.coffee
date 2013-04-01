VH = Loader.require 'views/Helper'
$ = Loader.require 'jQuery'

Loader.register 'views/welcome', (viewPane) ->
    viewPane.append VH.h1 'Welcome'
    viewPane.append VH.makeLink 'Register', 'register'
    viewPane.append VH.makeLink 'Sign In', 'dashboard'

