// Generated by CoffeeScript 1.6.1
(function() {
  var SignUp, ViewPane;

  ViewPane = Loader.require('views/ViewPane');

  SignUp = (function() {

    function SignUp() {}

    SignUp.prototype.index = function() {
      return ViewPane.render('signUp');
    };

    return SignUp;

  })();

  Loader.register('routes/signUp', new SignUp());

}).call(this);
