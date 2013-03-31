var mongo = require('mongodb'),
    Db = mongo.Db,
    connString = "mongodb://localhost/DraftServer";

Db.connect(connString, function(err, db) {
    var users = db.collection("users");
    users.ensureIndex("username", {"unique": true}, function(err) {
        if (!err) {
            console.log("Created 'users.username' index.");
        }
        else {
            console.log("Couldn't create 'users.username' index.");
        }

        db.close();
    });
});

