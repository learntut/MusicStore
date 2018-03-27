const sql = require('mssql');
const dao = require('../dataacess/sqldao');

module.exports = {
    Addalbum : function(req,res){
        console.log();
        var cmd = 'INSERT INTO public.albums(genreid, artsistid, title, description, price) ';
        dao.execute(cmd, function(result, err){
            if (err) {
                res.json('error ' + err);
            } else {
                res.json(JSON.stringify(result));
            }
        });
    },
    updateAlbum : function(req, res) {
        var cmd = 'UPDATE public.albums SET genreid=('+  req.body.genreid + ',' + 
        'artsistid=' + req.body.artsistid + ',title=\'' + req.body.title + '\',' +
        'price=' + req.body.price + ',description=\''+ req.body.description + '\'' +
        ' WHERE albumid=' + req.body.albumid;
        dao.execute(cmd, function(result, err){
            if (err) {
                res.json('error ' + err);
            } else {
                res.json(JSON.stringify(result));
            }
        });
    },
    deleteAlbum : function(req, res) {
        var cmd = 'delete from public.albums where albumid={req.albumid}';
        dao.execute(cmd, function(result, err){
            if (err) {
                res.json('error ' + err);
            } else {
                res.json(JSON.stringify(result));
            }
        });
    },
    selectAlbum : function(req, res){
        var cmd = 'select * from public.albums';
        dao.execute(cmd, function(result, err){
            if (err) {
                res.json('error ' + err);
            } else {
                res.json(JSON.stringify(result));
            }
        });
    }
}