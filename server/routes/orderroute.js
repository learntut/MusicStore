var express = require('express');
var router = express.Router();
var database = require('../dataacess/sqldao');

router.get('/list', function(req,res){
    var sql = 'SELECT albumid, genreid, artsistid, title, description, price FROM public.albums;';
    database.executequery(sql, '',(req,resp)=>{
        res.json(resp);
    });
});

router.post('/create', function(req,res){
    params= [req.body.genreid, req.body.artsistid, req.body.title, req.body.description, req.body.price];
    var sql = 'INSERT INTO public.albums(genreid, artsistid,' +
            'title, description, price)' +
            ' values($1,$2,$3,$4,$5);';
    database.executequery(sql, params,(req,resp)=>{
        res.json(resp);
    });
});

router.post('/update', function(req,res){
    params= [req.body.albumid, req.body.genreid, req.body.artsistid,
             req.body.title, req.body.description, req.body.price];
    var sql = 'UPDATE public.albums SET genreid=$2, artsistid=$3,' +
            'title=$4, description=$4, price=$5     ' +
            'WHERE albumid=$1;';
    database.executequery(sql, params,(req,resp)=>{
        res.json(resp);
    });
});


router.put('/delete/:id', function(req,res){
    params= [4];
    var sql = 'delete from public.albums where categoryid=$1;';
    database.executequery(sql, params,(req,resp)=>{
        res.json(resp);
    });
});

module.exports = router;




