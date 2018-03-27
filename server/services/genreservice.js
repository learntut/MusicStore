const sql = require('mssql');
const dao = require('../dataacess/sqldao');

module.exports = {
    Addgenre : function(req,res){
        var cmd = 'INSERT INTO Genres(GenreName,Description) ' +
        'VALUES ({req.GenreName},{req.Description})';
        dao.execute(cmd, function(result, err){
            if (err) {
                res.json('error ' + err);
            } else {
                res.json(JSON.stringify(result));
            }
        });
    },
    updategenre : function(req, res) {
        var cmd = 'UPDATE Genres SET GenreName={req.GenreName},Description={req.Description},' +
        ' WHERE GenreId={req.GenreId}';
        dao.execute(cmd, function(result, err){
            if (err) {
                res.json('error ' + err);
            } else {
                res.json(JSON.stringify(result));
            }
        });
    },
    deletegenre : function(req, res) {
        var cmd = 'delete from Genres WHERE GenreId={req.GenreId}';
        dao.execute(cmd, function(result, err){
            if (err) {
                res.json('error ' + err);
            } else {
                res.json(JSON.stringify(result));
            }
        });
    },
    selectgenres : function(req, res){
        var cmd = 'select * from Genres';
        dao.execute(cmd, function(result, err){
            if (err) {
                res.json('error ' + err);
            } else {
                res.json(JSON.stringify(result));
            }
        });
    }
}