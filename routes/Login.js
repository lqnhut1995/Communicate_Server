var express = require('express');
 var router = express.Router();
 var ExtractDatabase=require('../models/ExtractDatabase');

router.post('/',function(req,res,next){
  res.send('Cannot POST');
});

router.post('/userLogin',function(req,res,next){
 
if(req.body.email,req.body.password){
  ExtractDatabase.UserLogin(req.body.email,req.body.password,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      res.json(rows);
    }
 
  });
}else{
  res.send('Cannot POST');
}
 
});

router.post('/userSignin',function(req,res,next){

if(req.body.email,req.body.password,req.body.username){
  ExtractDatabase.UserSignin(req.body.email,req.body.password,req.body.username,function(err,count){
    if(err)
    {
      res.json({'status':'400'});
    }
    else{
      res.json({'status':'200'});//or return count for 1 &amp;amp;amp; 0
    }
  });
}else{
  res.send('Cannot POST');
}

});
 module.exports=router;
