var express = require('express');
var router = express.Router();
var database = require('../dataacess/sqldao');

router.get('artist/list', function(req,res){
    var sql = 'SELECT artistid, artistname FROM public.artists;';
    database.executequery(sql, '',(req,resp)=>{
        res.json(resp);
    });
});

router.post('artist/create', function(req,res){
    params= [req.body.artistname];
    var sql = 'insert into public.artists(artistname)' +
            ' values($1);';
    database.executequery(sql, params,(req,resp)=>{
        res.json(resp);
    });
});

router.post('artist/update', function(req,res){
    params= [req.body.artistid, req.body.artistname];
    var sql = 'update public.artists SET artistname=$2 ' +
            'WHERE artistid=$1;';
    database.executequery(sql, params,(req,resp)=>{
        res.json(resp);
    });
});


router.put('artist/delete/:id', function(req,res){
    params= [4];
    var sql = 'delete from public.albums where categoryid=$1;';
    database.executequery(sql, params,(req,resp)=>{
        res.json(resp);
    });
});

module.exports = router;




