var express = require("express");
var bodyparser = require("body-parser");
var app = express();

var router = express.Router();
app.use(bodyparser.json()); // support json encoded bodies
app.use(bodyparser.urlencoded({ extended: true })); // support encoded bodies
//CORS Middleware
app.use(function (req, res, next) {
    //Enabling CORS 
    // Website you wish to allow to connect
    res.setHeader('Access-Control-Allow-Origin', '*');
    // Request methods you wish to allow
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
    // Request headers you wish to allow
    res.header("Access-Control-Allow-Headers", "Content-Type");
    // Set to true if you need the website to include cookies in the requests sent
    // to the API (e.g. in case you use sessions)
    // res.setHeader('Access-Control-Allow-Credentials', false);
    // Pass to next layer of middleware
    next();
});

// declaring routes

var album = require('./routes/albumroute');
var artist = require('./routes/artistroute');
var genres = require('./routes/genresroute');


app.use('/api', router);
app.use('/api/', genres);
app.use('/api/', album);
app.use('/api/', artist);

//Setting up server
var server = app.listen(process.env.PORT || 8080, function () {
    var port = server.address().port;
    console.log("App now running on port", port);
 });
