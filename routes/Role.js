var express = require('express');
var router = express.Router();
var ExtractDatabase=require('../models/ExtractDatabase');

router.post('/LoadRole', function(req,res,next){
	if(req.body.groupid){
	  ExtractDatabase.LoadRole(req.body.groupid,function(err,rows){
	 
	    if(err)
	    {
	    	if (err['errno']){
				return res.json({status:'400'}); 
	    	}
	      	res.json(err);
	    }
	    else
	    {
	    	if (Object.keys(rows).length){
			        var newrows = rows.reduce((result, items) => {
			          const a = result.find(({roleid}) => roleid === items.roleid);
			          a ? a.items.push(items) : result.push({roleid: items.roleid,
			          	rolename: items.rolename,
			          	rolecolor: items.rolecolor, 
			          	groupid: items.groupid, 
			          	originrole: items.originrole,
			          	items: [items]});
		          	delete items.roleid;
		          	delete items.rolename;
		          	delete items.rolecolor;
		          	delete items.groupid; 
		          	delete items.originrole;
			        return result;
			        }, []);
			        for (var i=0;i<newrows.length;i++){
			        	var newitems = newrows[i]['items'].reduce((result1,items1) => {
			        		const a = result1.find(({settinggroupid}) => settinggroupid === items1.settinggroupid);
					          a ? a.items.push(items1) : result1.push({settinggroupid: items1.settinggroupid,
					          	settinggroupname: items1.settinggroupname,
					          	settinggroupdescription: items1.settinggroupdescription,
					          	items: [items1]});
				          	delete items1.settinggroupid;
				          	delete items1.settinggroupname;
				          	delete items1.settinggroupdescription;
					        return result1;
			        	}, []);
			        	newrows[i]['items']=newitems;
			        }
			        for (var i=0;i<newrows.length;i++){
			        	for (var j=0;j<newrows[i]['items'].length;j++){
			        		var newitems = newrows[i]['items'][j]['items'].reduce((result1,items1) => {
			        		const a = result1.find(({settingdescriptionid}) => settingdescriptionid === items1.settingdescriptionid);
					          a ? a.items.push(items1) : result1.push({settingdescriptionid: items1.settingdescriptionid,
					          	settingdescriptionname: items1.settingdescriptionname,
					          	items: [items1]});
				          	delete items1.settingdescriptionid;
				          	delete items1.settingdescriptionname;
					        return result1;
			        		}, []);
			        		newrows[i]['items'][j]['items']=newitems;
			        	}
			        }
			        res.json(newrows);
			      }else{
			        res.json({status:'400'}); 
			      }
	    }
	 
	  });
	}else{
	  res.send('Cannot POST');
	} 
});

router.post('/CreateRole', function(req,res,next){
	if(req.body.groupid){
	  ExtractDatabase.CreateRole(req.body.groupid,function(err,rows){
	 
	    if(err)
	    {
	    	if (err['errno']){
				return res.json({status:'400'}); 
	    	}
	      	res.json(err);
	    }
	    else
	    {
	    	if (Object.keys(rows[3]).length){
			        var newrows = rows[3].reduce((result, items) => {
			          const a = result.find(({roleid}) => roleid === items.roleid);
			          a ? a.items.push(items) : result.push({roleid: items.roleid,
			          	rolename: items.rolename,
			          	rolecolor: items.rolecolor, 
			          	groupid: items.groupid, 
			          	originrole: items.originrole,
			          	items: [items]});
		          	delete items.roleid;
		          	delete items.rolename;
		          	delete items.rolecolor;
		          	delete items.groupid; 
		          	delete items.originrole;
			        return result;
			        }, []);
			        for (var i=0;i<newrows.length;i++){
			        	var newitems = newrows[i]['items'].reduce((result1,items1) => {
			        		const a = result1.find(({settinggroupid}) => settinggroupid === items1.settinggroupid);
					          a ? a.items.push(items1) : result1.push({settinggroupid: items1.settinggroupid,
					          	settinggroupname: items1.settinggroupname,
					          	settinggroupdescription: items1.settinggroupdescription,
					          	items: [items1]});
				          	delete items1.settinggroupid;
				          	delete items1.settinggroupname;
				          	delete items1.settinggroupdescription;
					        return result1;
			        	}, []);
			        	newrows[i]['items']=newitems;
			        }
			        for (var i=0;i<newrows.length;i++){
			        	for (var j=0;j<newrows[i]['items'].length;j++){
			        		var newitems = newrows[i]['items'][j]['items'].reduce((result1,items1) => {
			        		const a = result1.find(({settingdescriptionid}) => settingdescriptionid === items1.settingdescriptionid);
					          a ? a.items.push(items1) : result1.push({settingdescriptionid: items1.settingdescriptionid,
					          	settingdescriptionname: items1.settingdescriptionname,
					          	items: [items1]});
				          	delete items1.settingdescriptionid;
				          	delete items1.settingdescriptionname;
					        return result1;
			        		}, []);
			        		newrows[i]['items'][j]['items']=newitems;
			        	}
			        }
			        res.json(newrows);
			      }else{
			        res.json({status:'400'}); 
			      }
	    }
	 
	  });
	}else{
	  res.send('Cannot POST');
	} 
});

module.exports=router;