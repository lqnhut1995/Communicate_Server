var db=require('../dbconnection'); //reference of dbconnection.js
 
var ExtractDatabase={

//Login-Signin
UserLogin:function (email,password,callback){
	return db.query("Select * from userdetail where email=? and password=?",[email,password],callback);
},

UserSignin:function (email,password,username,callback){
	return db.query("Insert into userdetail (email,password,username) values (?,?,?)",[email,password,username],callback);
},

//Group
LoadGroup:function(userid,callback){
 	return db.query("Select * from `group`,`userinfo` where group.groupid=userinfo.groupid and userid=?",[userid],callback);
 },
CreateGroup:function (userid,groupname,groupimage,callback){
	var sql="insert into role (rolename,rolecolor,groupid,originrole) values ('everyone','#E4E5E6',@id,1);set @roleid=LAST_INSERT_ID();"
	+"insert into rolesetting (roleid,settingdetailid,isactive) values ";
	for( var i=55;i<82;i++){
		switch (i){
			case 63: case 67: case 69: case 70: case 71: case 72: case 73: case 74: case 75: case 76: case 80:
				sql+="(@roleid,"+i+",1),";
				break;
			default:
				if (i==81){
					sql+="(@roleid,"+i+",0);";
					break;
				}
				sql+="(@roleid,"+i+",0),";
				
		}
	}
	return db.query("INSERT INTO `group` (groupname,groupimage) VALUES (?,?); set @id=LAST_INSERT_ID();"
		+"Select * from `group` where groupid=@id;"
		+"INSERT INTO `userinfo` (userid,groupid) VALUES (?,@id);"+sql,[groupname,groupimage,userid],callback);
},
DeleteGroup:function (groupid,callback){
	return db.query("Delete from `group` where groupid=?",[groupid],callback);
},
DeleteGroupByNonAdmin:function (groupid,userid,callback){
	return db.query("Delete from `group` where groupid=?",[groupid],callback);
},


//SubGroup
LoadSubGroup:function(groupid,callback){
 	return db.query("Select * from `subgroup` where groupid=?",[groupid],callback);	
 },
CreateSubGroup:function (subgroupname,groupid,callback){
	return db.query("Insert into `subgroup` (subgroupname,groupid) values (?,?);"
		+"Select * from `subgroup` where subgroupid=LAST_INSERT_ID()",[subgroupname,groupid],callback);
},
DeleteSubGroup:function (subgroupid,callback){
	return db.query("Delete from `subgroup` where subgroupid=?",[subgroupid],callback);
},


//Topic
LoadTopic:function(subgroupid,callback){
 	return db.query("Select topic.*,subtopic.subtopicid,subtopicname,subtopic.channeltype from `topic` left join `subtopic` on subtopic.topicid=topic.topicid where subgroupid=?",[subgroupid],callback);
},

CreateTopic:function (topicname,subgroupid,callback){
	return db.query("Insert into `topic` (topicname,subgroupid) values (?,?);"
		+"Select * from `topic` where topicid=LAST_INSERT_ID()",[topicname,subgroupid],callback);
},
DeleteTopic:function (topicid,callback){
	return db.query("Delete from `topic` where topicid=?",[topicid],callback);
},

CreateSubTopic:function (subtopicname,topicid,channeltype,callback){
	return db.query("Insert into `subtopic` (subtopicname,topicid,channeltype) values (?,?,?);"
		+"Select * from `subtopic` where subtopicid=LAST_INSERT_ID()",[subtopicname,topicid,channeltype],callback);
},
DeleteSubTopic:function (subtopicid,callback){
	return db.query("Delete from `subtopic` where subtopicid=?",[subtopicid],callback);
},


//Private Message
LoadPrivateMessage:function(userid,callback){
 	return db.query("Select * from `privateroom` pr,`privateroomdetail` prd where pr.privateroomid=prd.privateroomid and userid=? or otheruserid =? ",[userid,userid],callback);	
 },
 LoadPrivateMessageID:function(userid,otheruserid,callback){
 	return db.query("Select * from `privateroom` pr,`privateroomdetail` prd where pr.privateroomid=prd.privateroomid and (userid=? and otheruserid =?) or (otheruserid=? and userid=?) ",[userid,otheruserid,otheruserid,userid],callback);	
 },
 CreatePrivateMessage:function(userid,otheruserid,roomname,membercount,callback){
 	return db.query("insert into `privateroom` (privateroomname,membercount) values(?,?);"
 		+"insert into `privateroomdetail` values(?,?,LAST_INSERT_ID());"
 		+"Select * from `privateroom` pr,`privateroomdetail` prd where pr.privateroomid=prd.privateroomid and pr.privateroomid=LAST_INSERT_ID()",[roomname,membercount,userid,otheruserid],callback);
 },
 SavePrivateMessage:function(userid,uploadtime,roomid,type,data,callback){
 	var sql="";
 	switch (type){
 		case "private":
 			sql="insert into `message` (userid,uploadtime,privateroomid) values (?,?,?);";
 			break;
 		default:
 			sql="insert into `message` (userid,uploadtime,subtopicid) values (?,?,?);";
 	}
	
	sql+="set @messageid=LAST_INSERT_ID();";
	if(data[0]['mimetype']=="text" && data.length==1){
		sql+="insert into `data` (datatype,dataname,messageid,message) values "
		+"('"+data[0]['mimetype']+"','',@messageid,'"+data[0]['message']+"');";
	}
	else if(data[0]['mimetype']=="text"){
		sql+="insert into `data` (datatype,dataname,messageid,message) values "
		+"('"+data[0]['mimetype']+"','',@messageid,'"+data[0]['message']+"');";
		sql+="insert into `data` (datatype,dataname,dataurl,datathumbnail,messageid,width,height,size) values ";

		for (var i = 1; i < data.length; i++) {
			if(i == data.length-1){
				sql+="('"+data[i]['mimetype']+"','"+data[i]['filename']+"','"+data[i]['url']+"','"+data[i]['thumbnail']+"',@messageid,"+data[i]['width']+","+data[i]['height']+","+data[i]['size']+");";
			}else{
				sql+="('"+data[i]['mimetype']+"','"+data[i]['filename']+"','"+data[i]['url']+"','"+data[i]['thumbnail']+"',@messageid,"+data[i]['width']+","+data[i]['height']+","+data[i]['size']+"),";
			}
		}
	}else{
		sql+="insert into `data` (datatype,dataname,dataurl,datathumbnail,messageid,width,height,size) values ";

		for (var i = 0; i < data.length; i++) {
			if(i == data.length-1){
				sql+="('"+data[i]['mimetype']+"','"+data[i]['filename']+"','"+data[i]['url']+"','"+data[i]['thumbnail']+"',@messageid,"+data[i]['width']+","+data[i]['height']+","+data[i]['size']+");";
			}else{
				sql+="('"+data[i]['mimetype']+"','"+data[i]['filename']+"','"+data[i]['url']+"','"+data[i]['thumbnail']+"',@messageid,"+data[i]['width']+","+data[i]['height']+","+data[i]['size']+"),";
			}
		}
	}
	
	
	sql+="select * from `data` where messageid=@messageid"
	return db.query(sql,[userid,uploadtime,roomid],callback);
 },
 UpdatePrivateMessage:function(data,callback){
 	var sql="";
	
	sql+="insert into `data` (datatype,dataname,dataurl,title,description,image,icon,messageid) values ";
	sql+="('"+data['mimetype']+"','"+data['filename']+"','"+data['url']+"','"+data['title']+"','"+data['description']+"','"+data['image']+"','"+data['icon']+"',"+data['messageid']+");";
	sql+="select * from `data` where dataid=LAST_INSERT_ID()"
	return db.query(sql,callback);
 },
 SaveMessage:function(messagename,userid,uploadtime,subtopicid,callback){
 	return db.query("insert into `message` (messagename,userid,uploadtime,subtopicid) values (?,?,?,?)",[messagename,userid,uploadtime,subtopicid],callback);	
 },

 LoadCountPrivateMessage:function(privateroomid,callback){
 	return db.query("select count(*) as page from `message` where privateroomid=?",[privateroomid],callback);
 },

 LoadCountSubtopicMessage:function(subtopicid,callback){
 	return db.query("select count(*) as page from `message` where subtopicid=?",[subtopicid],callback);
 },

 LoadMessagesFromPrivateRoom:function(privateroomid,page,range,callback){
 	if (page == -1){
	 	return db.query(" select * from (select msg.privateroomid,msg.uploadtime,`userdetail`.*,`data`.* from "
	 		+" (select * from `message` where privateroomid=? order by `message`.messageid desc limit ?) msg "
	 		+" left join `userdetail` on msg.userid=`userdetail`.userid "
	 		+" left join `data` on msg.messageid=`data`.messageid ) result "
	 		+" order by result.messageid,result.dataid",[privateroomid,range],callback);
 	}else{
 		const from=(page*20)-20;
	 	return db.query(" select * from (select msg.privateroomid,msg.uploadtime,`userdetail`.*,`data`.* from "
	 		+" (select * from `message` where privateroomid=? order by `message`.messageid limit ?,20) msg "
	 		+" left join `userdetail` on msg.userid=`userdetail`.userid "
	 		+" left join `data` on msg.messageid=`data`.messageid ) result "
	 		+" order by result.messageid,result.dataid",[privateroomid,from],callback);
 	}	
 },
 LoadMessagesFromSubtopic:function(subtopicid,page,range,callback){
 	if (page == -1){
	 	return db.query(" select * from (select msg.subtopicid,msg.uploadtime,`userdetail`.*,`data`.* from "
	 		+" (select * from `message` where subtopicid=? order by `message`.messageid desc limit ?) msg "
	 		+" left join `userdetail` on msg.userid=`userdetail`.userid "
	 		+" left join `data` on msg.messageid=`data`.messageid ) result "
	 		+" order by result.messageid,result.dataid",[subtopicid,range],callback);
 	}else{
 		const from=(page*20)-20;
	 	return db.query(" select * from (select msg.subtopicid,msg.uploadtime,`userdetail`.*,`data`.* from "
	 		+" (select * from `message` where subtopicid=? order by `message`.messageid limit ?,20) msg "
	 		+" left join `userdetail` on msg.userid=`userdetail`.userid "
	 		+" left join `data` on msg.messageid=`data`.messageid ) result "
	 		+" order by result.messageid,result.dataid",[subtopicid,from],callback);
 	}	
 		
 },


 //Friend
 FriendRequest:function(userid,requestuserid,callback){
 	return db.query("insert into `request` (userid,requestforuserid,isrequestaccepted) values (?,(Select userid from `userdetail` where userid=?),'false')",[userid,requestuserid],callback);
 },
 FriendAccept:function(userid,otheruserid,callback){
 	return db.query("insert into `friends` (userid,otheruserid,isblocked) values (?,?,'false');"
 		+"update `request` set isrequestaccepted='true' where userid=? and requestforuserid=?",[userid,otheruserid,otheruserid,userid],callback);
 },
 ListAllFriend:function(userid,callback){
 	return db.query("select ud.* from `userdetail` ud,(select userid from `friends` where otheruserid=? UNION ALL select otheruserid as userid from `friends` where userid=?) result where result.userid=ud.userid",[userid,userid],callback);
 },
 ListAllRequest:function(userid,callback){
 	return db.query("Select ud.* from `request` rq,`userdetail` ud where ud.userid=rq.userid and requestforuserid=? and isrequestaccepted='false'",[userid],callback);
 },
 ListFriendBlocked:function(userid,callback){
 	return db.query("select ud.* from `userdetail` ud,(select userid from `friends` where otheruserid=? and isblocked='true' UNION ALL select otheruserid as userid from `friends` where userid=? and isblocked='true') result where result.userid=ud.userid",[userid,userid],callback);
 },
 Block:function(userid,otheruserid,callback){
 	return db.query("update `friends` set isblocked='true',blockedid=? where (userid=? and otheruserid=?) or (otheruserid=? and userid=?)",[otheruserid,userid,otheruserid,userid,otheruserid],callback);
 },
 Unlock:function(userid,otheruserid,callback){
 	return db.query("update `friends` set isblocked='false' where userid=? and otheruserid=?",[userid,otheruserid],callback);
 },
 ListBlockedID:function(userid,otheruserid,callback){
 	return db.query("select * from `friends` where userid=? and otheruserid=?",[userid,otheruserid],callback);
 },
 ListRoom:function(callback){
 	return db.query("select privateroomid from `privateroom`",callback);
 },

//Role
 CreateGeneralRole:function(groupid,callback){
 	return db.query("insert into role (rolename,rolecolor,groupid) values ('everyone','#E4E5E6',?);"
 		+"",[groupid],callback);
 },
 LoadRole:function(groupid,callback){
 	return db.query("select role.*,rolesetting.value,rolesetting.isactive,settingdetail.*,settingtype.settingtypename,settinggroup.settinggroupname,settinggroup.settinggroupdescription,settingdescription.settingdescriptionname from role "
 		 +" left join rolesetting on rolesetting.roleid=role.roleid"
 		 +" left join settingdetail on settingdetail.settingdetailid=rolesetting.settingdetailid"
         +" left join settingtype on settingtype.settingtypeid=settingdetail.settingtypeid"
         +" left join settinggroup on settinggroup.settinggroupid=settingdetail.settinggroupid"
         +" left join settingdescription on settingdescription.settingdescriptionid=settingdetail.settingdescriptionid"
         +" where groupid=? "
         +" order by role.roleid,settinggroup.settinggroupid,settingdescription.settingdescriptionid,settingdetail.settingdetailid",[groupid],callback);
 },
 CreateRole:function(groupid,callback){
 	var sql="insert into role (rolename,rolecolor,groupid) values ('new role','#E4E5E6',?);set @roleid=LAST_INSERT_ID();"
	+"insert into rolesetting (roleid,settingdetailid,isactive) values ";
	for( var i=55;i<82;i++){
		switch (i){
			case 63: case 67: case 69: case 70: case 71: case 72: case 73: case 74: case 75: case 76: case 80:
				sql+="(@roleid,"+i+",1),";
				break;
			default:
				if (i==81){
					sql+="(@roleid,"+i+",0);";
					break;
				}
				sql+="(@roleid,"+i+",0),";
				
		}
	}
	sql+="select role.*,rolesetting.value,rolesetting.isactive,settingdetail.*,settingtype.settingtypename,settinggroup.settinggroupname,settinggroup.settinggroupdescription,settingdescription.settingdescriptionname from role "
 		 +" left join rolesetting on rolesetting.roleid=role.roleid"
 		 +" left join settingdetail on settingdetail.settingdetailid=rolesetting.settingdetailid"
         +" left join settingtype on settingtype.settingtypeid=settingdetail.settingtypeid"
         +" left join settinggroup on settinggroup.settinggroupid=settingdetail.settinggroupid"
         +" left join settingdescription on settingdescription.settingdescriptionid=settingdetail.settingdescriptionid"
         +" where role.roleid=@roleid "
         +" order by settinggroup.settinggroupid,settingdescription.settingdescriptionid,settingdetail.settingdetailid;"
	return db.query(sql,[groupid],callback);
 },

};
module.exports=ExtractDatabase;
