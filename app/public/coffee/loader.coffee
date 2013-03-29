$ = window.$
_ = window._

isntFunction = (func) ->
    typeof func isnt "function"

if not $ or not _ or isntFunction($) or isntFunction(_)
    throw "Module Loader requires jQuery and Underscore.js"

class Loader
    constructor: ->
        @modules = {}
        @loadScripts = []

    register: (modName, modObject) ->
        if @modules[modName]
            throw "Duplicate module: #{modName}"
        @modules[modName] = modObject

    require: (modName) ->
        if !@modules[modName]
            throw "Unregistered module: #{modName}"
        @modules[modName]

    addLoadScript: (script) ->
        if isntFunction script
            throw "Can't register loadScript, not a function"
        @loadScripts.push script

window.Loader = new Loader()

window.Loader.register 'jQuery', $
window.Loader.register 'underscore', _

$ -> script() for script in window.Loader.loadScripts

