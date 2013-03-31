mongo = require 'mongodb'
Db = mongo.Db
connectionUri = "mongodb://localhost/DraftServer?w=1"

module.exports =
    insert: (collection, data, callback) ->
        Db.connect connectionUri, (connectionError, db) ->
            if connectionError
                db.close()
                callback connectionError
            else
                col = db.collection collection
                col.insert data, (insertError, objects) ->
                    db.close()
                    callback insertError, objects

    findOne: (collection, query, callback) ->
        Db.connect connectionUri, (connectionError, db) ->
            if connectionError
                db.close()
                callback connectionError
            else
                col = db.collection collection
                col.findOne query, (queryError, document) ->
                    db.close()
                    callback queryError, document

