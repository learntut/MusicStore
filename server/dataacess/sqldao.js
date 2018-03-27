const pg = require('pg');

let client = new pg.Client({
    user: 'postgres',
    host: 'localhost',
    database: 'musicstore',
    password: '2top90',
    port: 5432,
});
client.connect();

module.exports = {
    executequery: function(sql,params,callback){
        client.query(sql, params , (err, res) => {
            console.log('executed query');
            // client.end();
            callback(err,res);
        });
    }
};