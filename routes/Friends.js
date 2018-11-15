var express = require('express');
var router = express.Router();
var ExtractDatabase=require('../models/ExtractDatabase');

router.post('/FriendRequest', function(req,res,next){
	if(req.body.userid,req.body.requestuserid){
	  ExtractDatabase.FriendRequest(req.body.userid,req.body.requestuserid,function(err,rows){
	 
	    if(err)
	    {
	    	if (err['errno']){
				return res.json({status:'400'}); 
	    	}
	      	res.json(err);
	    }
	    else
	    {
	    	res.json({status:'200'});
	    }
	 
	  });
	}else{
	  res.send('Cannot POST');
	} 
});

router.post('/ListAllFriend', function(req,res,next){
	if(req.body.userid){
	  ExtractDatabase.ListAllFriend(req.body.userid,function(err,rows){
	 
	    if(err)
	    {
	    	if (err['errno']){
				return res.json({status:'400'}); 
	    	}
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

router.post('/ListAllRequest', function(req,res,next){
	if(req.body.userid){
	  ExtractDatabase.ListAllRequest(req.body.userid,function(err,rows){
	 
	    if(err)
	    {
	    	if (err['errno']){
				return res.json({status:'400'}); 
	    	}
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

router.post('/ListFriendBlocked', function(req,res,next){
	if(req.body.userid){
	  ExtractDatabase.ListFriendBlocked(req.body.userid,function(err,rows){
	 
	    if(err)
	    {
	    	if (err['errno']){
				return res.json({status:'400'}); 
	    	}
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

router.post('/FriendAccept', function(req,res,next){
	if(req.body.userid,req.body.otheruserid){
	  ExtractDatabase.FriendAccept(req.body.userid,req.body.otheruserid,function(err,rows){
	 
	    if(err)
	    {
	    	if (err['errno']){
				return res.json({status:'400'}); 
	    	}
	      	res.json(err);
	    }
	    else
	    {
	    	res.json({status:'200'});
	    }
	 
	  });
	}else{
	  res.send('Cannot POST');
	} 
});

router.post('/Block', function(req,res,next){
	if(req.body.userid,req.body.otheruserid){
	  ExtractDatabase.Block(req.body.userid,req.body.otheruserid,function(err,rows){
	 
	    if(err)
	    {
	    	if (err['errno']){
				return res.json({status:'400'}); 
	    	}
	      	res.json(err);
	    }
	    else
	    {
	    	res.json({status:'200'});
	    }
	 
	  });
	}else{
	  res.send('Cannot POST');
	} 
});

router.post('/Unlock', function(req,res,next){
	if(req.body.userid,req.body.otheruserid){
	  ExtractDatabase.Unlock(req.body.userid,req.body.otheruserid,function(err,rows){
	 
	    if(err)
	    {
	    	if (err['errno']){
				return res.json({status:'400'}); 
	    	}
	      	res.json(err);
	    }
	    else
	    {
	    	res.json({status:'200'});
	    }
	 
	  });
	}else{
	  res.send('Cannot POST');
	} 
});

router.post('/ListBlockedID', function(req,res,next){
	if(req.body.userid,req.body.otheruserid){
	  ExtractDatabase.ListBlockedID(req.body.userid,req.body.otheruserid,function(err,rows){
	 
	    if(err)
	    {
	    	if (err['errno']){
				return res.json({status:'400'}); 
	    	}
	      	res.json(err);
	    }
	    else
	    {
	    	res.json(rows[0]);
	    }
	 
	  });
	}else{
	  res.send('Cannot POST');
	} 
});

router.post('/LoadMessagesFromPrivateRoom', function(req,res,next){
	if(req.body.privateroomid,req.body.page){
		if(req.body.page != -1){
			ExtractDatabase.LoadMessagesFromPrivateRoom(req.body.privateroomid,req.body.page,0,function(err,rows){
	 	
		    if(err)
		    {
		    	console.log(err);
		    	if (err['errno']){
					return res.json({status:'400'}); 
		    	}
		      	res.json(err);
		    }
		    else
		    {
		        if (Object.keys(rows).length){
		        	
			        var newrows = rows.reduce((result, items) => {
			          const a = result.find(({messageid}) => messageid === items.messageid);
			          a ? a.items.push(items) : result.push({messageid: items.messageid,
			          	userid: items.userid,
			          	subtopicid: items.subtopicid, 
			          	privateroomid: items.privateroomid, 
			          	username: items.username, 
			          	email: items.email, 
			          	password: items.password, 
			          	telephone: items.telephone, 
			          	usertype: items.usertype, 
			          	status: items.status, 
			          	secure: items.secure, 
			          	userimage: items.userimage, 
			          	uploadtime: items.uploadtime,
			          	page: req.body.page,
			          	items: [items]});
		          	delete items.messageid;
		          	delete items.userid;
		          	delete items.subtopicid;
		          	delete items.privateroomid; 
		          	delete items.username;
		          	delete items.email;
		          	delete items.password; 
		          	delete items.telephone; 
		          	delete items.usertype;
		          	delete items.status;
		          	delete items.secure; 
		          	delete items.userimage; 
		          	delete items.uploadtime; 
			          return result;
			        }, []);
			        res.json(newrows);
			      }else{
			        res.json({status:'400'}); 
			      }
		    }
		 
		  });
			return;
		}
		ExtractDatabase.LoadCountPrivateMessage(req.body.privateroomid,function(err,outrows){
			const range=outrows[0]['page']-(Math.floor(outrows[0]['page']/20)*20);
			ExtractDatabase.LoadMessagesFromPrivateRoom(req.body.privateroomid,req.body.page,range,function(err,rows){
	 	
		    if(err)
		    {
		    	console.log(err);
		    	if (err['errno']){
					return res.json({status:'400'}); 
		    	}
		      	res.json(err);
		    }
		    else
		    {
		        if (Object.keys(rows).length){
		        	var page=Math.ceil(outrows[0]['page']/20);
			        var newrows = rows.reduce((result, items) => {
			          const a = result.find(({messageid}) => messageid === items.messageid);
			          a ? a.items.push(items) : result.push({messageid: items.messageid,
			          	userid: items.userid,
			          	subtopicid: items.subtopicid, 
			          	privateroomid: items.privateroomid, 
			          	username: items.username, 
			          	email: items.email, 
			          	password: items.password, 
			          	telephone: items.telephone, 
			          	usertype: items.usertype, 
			          	status: items.status, 
			          	secure: items.secure, 
			          	userimage: items.userimage, 
			          	uploadtime: items.uploadtime,
			          	page: page,
			          	items: [items]});
		          	delete items.messageid;
		          	delete items.userid;
		          	delete items.subtopicid;
		          	delete items.privateroomid; 
		          	delete items.username;
		          	delete items.email;
		          	delete items.password; 
		          	delete items.telephone; 
		          	delete items.usertype;
		          	delete items.status;
		          	delete items.secure; 
		          	delete items.userimage; 
		          	delete items.uploadtime; 
			          return result;
			        }, []);
			        res.json(newrows);
			      }else{
			        res.json({status:'400'}); 
			      }
		    }
		 
		  });
		});
	}else{
	  res.send('Cannot POST');
	} 
});

router.post('/LoadMessagesFromSubtopic', function(req,res,next){
	if(req.body.subtopicid,req.body.page){
	  if(req.body.page != -1){
			ExtractDatabase.LoadMessagesFromSubtopic(req.body.subtopicid,req.body.page,0,function(err,rows){
	 	
		    if(err)
		    {
		    	console.log(err);
		    	if (err['errno']){
					return res.json({status:'400'}); 
		    	}
		      	res.json(err);
		    }
		    else
		    {
		        if (Object.keys(rows).length){
		        	
			        var newrows = rows.reduce((result, items) => {
			          const a = result.find(({messageid}) => messageid === items.messageid);
			          a ? a.items.push(items) : result.push({messageid: items.messageid,
			          	userid: items.userid,
			          	subtopicid: items.subtopicid, 
			          	privateroomid: items.privateroomid, 
			          	username: items.username, 
			          	email: items.email, 
			          	password: items.password, 
			          	telephone: items.telephone, 
			          	usertype: items.usertype, 
			          	status: items.status, 
			          	secure: items.secure, 
			          	userimage: items.userimage, 
			          	uploadtime: items.uploadtime,
			          	page: req.body.page,
			          	items: [items]});
		          	delete items.messageid;
		          	delete items.userid;
		          	delete items.subtopicid;
		          	delete items.privateroomid; 
		          	delete items.username;
		          	delete items.email;
		          	delete items.password; 
		          	delete items.telephone; 
		          	delete items.usertype;
		          	delete items.status;
		          	delete items.secure; 
		          	delete items.userimage; 
		          	delete items.uploadtime; 
			          return result;
			        }, []);
			        res.json(newrows);
			      }else{
			        res.json({status:'400'}); 
			      }
		    }
		 
		  });
			return;
		}
		ExtractDatabase.LoadCountSubtopicMessage(req.body.subtopicid,function(err,outrows){
			const range=outrows[0]['page']-(Math.floor(outrows[0]['page']/20)*20);
			ExtractDatabase.LoadMessagesFromSubtopic(req.body.subtopicid,req.body.page,range,function(err,rows){
	 	
		    if(err)
		    {
		    	console.log(err);
		    	if (err['errno']){
					return res.json({status:'400'}); 
		    	}
		      	res.json(err);
		    }
		    else
		    {
		        if (Object.keys(rows).length){
		        	var page=Math.ceil(outrows[0]['page']/20);
			        var newrows = rows.reduce((result, items) => {
			          const a = result.find(({messageid}) => messageid === items.messageid);
			          a ? a.items.push(items) : result.push({messageid: items.messageid,
			          	userid: items.userid,
			          	subtopicid: items.subtopicid, 
			          	privateroomid: items.privateroomid, 
			          	username: items.username, 
			          	email: items.email, 
			          	password: items.password, 
			          	telephone: items.telephone, 
			          	usertype: items.usertype, 
			          	status: items.status, 
			          	secure: items.secure, 
			          	userimage: items.userimage, 
			          	uploadtime: items.uploadtime,
			          	page: page,
			          	items: [items]});
		          	delete items.messageid;
		          	delete items.userid;
		          	delete items.subtopicid;
		          	delete items.privateroomid; 
		          	delete items.username;
		          	delete items.email;
		          	delete items.password; 
		          	delete items.telephone; 
		          	delete items.usertype;
		          	delete items.status;
		          	delete items.secure; 
		          	delete items.userimage; 
		          	delete items.uploadtime; 
			          return result;
			        }, []);
			        res.json(newrows);
			      }else{
			        res.json({status:'400'}); 
			      }
		    }
		 
		  });
		});
	}else{
	  res.send('Cannot POST');
	} 
});

module.exports=router;