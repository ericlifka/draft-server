VH = Loader.require 'views/Helper'
$ = Loader.require 'jQuery'

Loader.register 'views/registered', (viewPane) ->
    viewPane.append $ '<h3>Thanks for registering!</h3>'
    viewPane.append VH.makeLink 'Go to your dashboard', 'dashboard'

