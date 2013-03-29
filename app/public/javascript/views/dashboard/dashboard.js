// Generated by CoffeeScript 1.6.1
(function() {
  var $, Router, ViewPane, makeNewGamesList, _;

  ViewPane = Loader.require('views/ViewPane');

  Router = Loader.require('routes/Router');

  $ = Loader.require('jQuery');

  _ = Loader.require('underscore');

  makeNewGamesList = function(items) {
    var ul;
    ul = $('<ul>');
    _.each(items, function(type) {
      var li;
      li = $("<li><a href='#'>New " + type + " game</a></li>");
      li.on('click', function() {
        return Router.goTo('newGame', type);
      });
      return ul.append(li);
    });
    return ul;
  };

  Loader.register('views/dashboard', function(viewPane, config) {
    var activeGames, gameTypes, myGamesConfig, myGamesPane;
    gameTypes = config.gameTypes || [];
    activeGames = config.activeGames || [];
    viewPane.append($('<h1>Dashboard</h1>'));
    viewPane.append(makeNewGamesList(gameTypes));
    myGamesPane = $('<div>');
    myGamesConfig = {
      activeGames: activeGames
    };
    ViewPane.render('dashboard/myGames', myGamesConfig, myGamesPane);
    return viewPane.append(myGamesPane);
  });

}).call(this);
