var express = require('express');
var router = express.Router();
var database = require('../dataacess/sqldao');

router.get('/genres/list', function(req,res){
    var sql = 'SELECT * FROM public.generes;';
    database.executequery(sql, '',(req,resp)=>{
        res.json(resp.rows);
    });
});

router.put('/genres/getbyid/:id', function(req,res){
    params= [4];
    var sql = 'select * from public.generes where genreid=$1;';
    database.executequery(sql, params,(req,resp)=>{
        res.json(resp.rows);
    });
});

router.post('/genres/create', function(req,res){
    params= [req.body.genrename, req.body.decsription];
    var sql = 'INSERT INTO public.generes(genrename, decsription)' +
            ' values($1,$2);';
    database.executequery(sql, params,(req,resp)=>{
        res.json(resp);
    });
});

router.post('/genres/update', function(req,res){
    params= [req.body.genreid, req.body.genrename, req.body.decsription];
    var sql = 'UPDATE public.generes SET genrename=$2, decsription=$3 ' +
            'WHERE genreid=$1;';
    database.executequery(sql, params,(req,resp)=>{
        res.json(resp.rows);
    });
});


router.put('/genres/delete/:id', function(req,res){
    params= [4];
    var sql = 'delete from public.generes where genreid=$1;';
    database.executequery(sql, params,(req,resp)=>{
        res.json(resp);
    });
});

module.exports = router;