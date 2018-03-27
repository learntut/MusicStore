const sql = require('mssql');
const dao = require('../dataacess/sqldao');

module.exports = {
    Addalbum : function(req,res){
        var cmd = 'INSERT INTO Albums(GenreId,ArtistId,Title,Price,AlbumArtUrl) ' +
        'VALUES ({req.GenreId},{req.ArtistId},{req.Title},{req.Price},{req.AlbumArtUrl})';
        dao.execute(cmd, function(result, err){
            if (err) {
                res.json('error ' + err);
            } else {
                res.json(JSON.stringify(result));
            }
        });
    },
    updateAlbum : function(req, res) {
        var cmd = 'UPDATE Albums SET GenreId={req.GenreId},ArtistId={req.ArtistId},' +
        'Title={req.Title},Price={req.Price},AlbumArtUrl={req.AlbumArtUrl}' +
        ' WHERE AlbumId={req.AlbumId}';
        dao.execute(cmd, function(result, err){
            if (err) {
                res.json('error ' + err);
            } else {
                res.json(JSON.stringify(result));
            }
        });
    },
    deleteAlbum : function(req, res) {
        var cmd = 'delete from Albums WHERE AlbumId={req.AlbumId}';
        dao.execute(cmd, function(result, err){
            if (err) {
                res.json('error ' + err);
            } else {
                res.json(JSON.stringify(result));
            }
        });
    },
    selectAlbum : function(req, res){
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