
buildPage = (title, body) -> "
<!DOCTYPE html>
<html>
<head><title>#{title}</title></head>
<body>#{body}</body>
</html>
"
        
welcomeBody = "
<h1>Welcome</h1>
<a href='/dashboard'>Sign In</a><br />
<a href='/signup'>Sign Up</a>
"

signupBody = "
<h1>Sign Up</h1>
<form method='POST'>
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

module.exports =
    welcome: (req, res) ->
        res.send buildPage('MTG Draft Server', welcomeBody)

    signup: (req, res) ->
        res.send buildPage('Sign Up', signupBody)

