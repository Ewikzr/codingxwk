var mysql = require('promise-mysql');
const cron = require('node-cron');
var thisDB;

mysql.createPool (
    {
        host : "127.0.0.1"
        , user : "root"
        , password : ""
        , database : "mydb"
        , multipleStatements : false
        , port : 3306
        ,connectionLimit: 10
    }).then((conn) => {
        thisDB = conn;
        if(conn) console.log ( "Connected MyDB Already!" );    
    });
;

module.exports = mysql;
module.exports = thisDB;

function dbquery(dataquery,callback) {
    return new Promise((resolve, reject) => {
        thisDB.query(dataquery, function (err, result, field) {
          if (err) {
            reject(err);
          } else {
            resolve(result);
          }
        });
      });   
}

function dbParamQuery(dataquery, params) {
  return new Promise((resolve, reject) => {
      thisDB.query(dataquery, params, function (err, result, field) {
          if (err) {
              reject(err);
          } else {
              resolve(result);
          }
      });
  });
}

cron.schedule('* * * * *', async () => {
  var query = "SELECT * FROM `products` WHERE `product_id` = 1";
  await thisDB.query(query, thisDB);     
});


module.exports = {
    dbquery: dbquery,
    dbParamQuery: dbParamQuery,
};