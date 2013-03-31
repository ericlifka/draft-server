$ = Loader.require 'jQuery'

formTemplate = "
<form method='POST' action='signup'>
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
        <td><button>Submit</button>
    </tr>
</table>
</form>
"

Loader.register 'views/register', (viewPane) ->
    viewPane.append $ '<h1>Register</h1>'
    viewPane.append $ formTemplate

