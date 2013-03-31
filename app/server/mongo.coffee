mongo = require 'mongodb'
Db = mongo.Db

connString = "mongodb://localhost/DraftServer"

module.exports =
    insert: (collection, data, callback) ->
        Db.connect connString, (err, db) ->
            col = db.collection collection
            col.insert data, (err, objs) ->
                db.close()
                callback(err, objs)


