$ = Loader.require 'jQuery'

template = "
<form>
    <h1>Sign Up</h1>
    <table>
        <tr>
            <td><label>Username</label></td>
            <td><input type='text' name='username' /></td>
        </tr>
        <tr>
            <td><label>Password</label></td>
            <td><input type='password' name='password' /></td>
        </tr>
        <tr>
            <td></td>
            <td><button>Sign Up</button></td>
        </tr>
    </table>
</form>
"

Loader.register 'views/signUp', (viewPane, config) ->
    form = $ template
    viewPane.append form
    $('button').on 'click', ->
        false

