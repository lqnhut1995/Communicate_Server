var mysql=require('mysql');
 var connection=mysql.createPool({
 
host:'localhost',
user:'root',
password:'lamquangnhut',
database:'Community_Server',
 multipleStatements: true
 
});
 module.exports=connection;
