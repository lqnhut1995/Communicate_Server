var express = require('express');
var router = express.Router();
var ExtractDatabase=require('../models/ExtractDatabase');
var multer  = require('multer');
var jimp = require('jimp')
var path = require('path');
var fs = require('fs');
var storage =  multer.diskStorage({
  destination: function (req, file, callback) {
    callback(null, './uploads');
  },
  filename: function (req, file, callback) {
    callback(null, file.fieldname + '-' + Date.now());
  }
});

var upload = multer({ storage : storage });

router.post('/uploadsGroup',upload.array('files',1), function(req,res,next){
  
  var nameArray=[];
  for (var i = 0; i < req.files.length; i++) {

    nameArray.push({'filepath':'http://communicateserver.ddns.net/uploads/'+req.files[i].filename,
      'mimeType':req.files[i].mimetype,
      'filename':req.files[i].filename});
  }
  res.json(nameArray);
  
});

router.post('/uploads',upload.array('files',10), function(req,res,next){
  
  getImage(req,res);
  
});

async function getAllImage(filepath,filename,json){
  return new Promise(function(resolve,reject){
    jimp.read(path.resolve(__dirname,'..')+'/'+filepath,function(err,image){
      image.resize(json['width']+200,jimp.AUTO).quality(100)
      .write(path.resolve(__dirname,'..')+'/uploads/thumbnails/'+filename);
      if(err) reject(err);
      resolve();
    });
  });
}
async function getImage(req,res){
  var nameArray=[];
  for (var i = 0; i < req.files.length; i++) {
    var json=JSON.parse(req.body.fileinfo);

    await getAllImage(req.files[i].path,req.files[i].filename,json[i]);

    nameArray.push({'filepath':'http://communicateserver.ddns.net/uploads/'+req.files[i].filename,
      'mimeType':req.files[i].mimetype,
      'filename':req.files[i].filename,'width':json[i]['width'],'height':json[i]['height'],'thumbnail':
      'http://communicateserver.ddns.net/uploads/thumbnails/'+req.files[i].filename});
  }
  res.json(nameArray);
}

router.post('/',function(req,res,next){
  res.send('Cannot POST');
});

router.post('/LoadGroup',function(req,res,next){
 if(req.body.userid){
  ExtractDatabase.LoadGroup(req.body.userid,function(err,rows){
 
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

router.post('/CreateGroup',function(req,res,next){
 if(req.body.groupname,req.body.userid){
  var image="";
  if(req.body.groupimage){
    image=req.body.groupimage
  }else{
    image=null;
  }
  ExtractDatabase.CreateGroup(req.body.userid,req.body.groupname,image,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      if (Object.keys(rows).length){
        let newrows=rows[2][0];
        newrows['status']='200';
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

router.post('/DeleteGroup',function(req,res,next){
 if(req.body.groupid){
  ExtractDatabase.DeleteGroup(req.body.groupid,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      if (Object.keys(rows).length){
        res.json({status:'200'});
      }else{
        res.json({status:'400'}); 
      }
    }
 
  });
}else{
  res.send('Cannot POST');
} 
});

router.post('/LoadSubGroup',function(req,res,next){
 if(req.body.groupid){
  ExtractDatabase.LoadSubGroup(req.body.groupid,function(err,rows){
 
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

router.post('/CreateSubGroup',function(req,res,next){
 if(req.body.subgroupname,req.body.groupid){
  ExtractDatabase.CreateSubGroup(req.body.subgroupname,req.body.groupid,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      if (Object.keys(rows).length){
        let newrows=rows[1][0];
        newrows['status']='200';
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

router.post('/DeleteSubGroup',function(req,res,next){
 if(req.body.subgroupid){
  ExtractDatabase.DeleteSubGroup(req.body.subgroupid,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      if (Object.keys(rows).length){
        res.json({status:'200'});
      }else{
        res.json({status:'400'}); 
      }
    }
 
  });
}else{
  res.send('Cannot POST');
} 
});

router.post('/LoadTopic',function(req,res,next){
 if(req.body.subgroupid){
  ExtractDatabase.LoadTopic(req.body.subgroupid,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      const newrows = rows.reduce((result, items) => {
        const a = result.find(({topicid}) => topicid === items.topicid);
        if (!items.subtopicid){
          a ? a.items.push(items) : result.push({topicid: items.topicid,topicname: items.topicname,subgroupid: items.subgroupid});
        }else{
          a ? a.items.push(items) : result.push({topicid: items.topicid,topicname: items.topicname,subgroupid: items.subgroupid, items: [items]});
        }
        delete items.topicname;
        delete items.subgroupid;
        return result;
      }, []);
      res.json(newrows);
    }
 
  });
}else{
  res.send('Cannot POST');
} 
});

router.post('/CreateTopic',function(req,res,next){
 if(req.body.topicname,req.body.subgroupid){
  ExtractDatabase.CreateTopic(req.body.topicname,req.body.subgroupid,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      if (Object.keys(rows).length){
        let newrows=rows[1][0];
        newrows['status']='200';
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

router.post('/DeleteTopic',function(req,res,next){
 if(req.body.topicid){
  ExtractDatabase.DeleteTopic(req.body.topicid,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      if (Object.keys(rows).length){
        res.json({status:'200'});
      }else{
        res.json({status:'400'}); 
      }
    }
 
  });
}else{
  res.send('Cannot POST');
} 
});

router.post('/CreateSubTopic',function(req,res,next){
 if(req.body.subtopicname,req.body.topicid){
  ExtractDatabase.CreateSubTopic(req.body.subtopicname,req.body.topicid,req.body.channeltype,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      if (Object.keys(rows).length){
        let newrows=rows[1][0];
        newrows['status']='200';
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

router.post('/DeleteSubTopic',function(req,res,next){
 if(req.body.subtopicid){
  ExtractDatabase.DeleteSubTopic(req.body.subtopicid,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      if (Object.keys(rows).length){
        res.json({status:'200'});
      }else{
        res.json({status:'400'}); 
      }
    }
 
  });
}else{
  res.send('Cannot POST');
} 
});

router.post('/LoadPrivateMessage',function(req,res,next){
 if(req.body.userid){
  ExtractDatabase.LoadPrivateMessage(req.body.userid,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      const newrows = rows.reduce((result, items) => {
        const a = result.find(({privateroomid}) => privateroomid === items.privateroomid);
        a ? a.items.push(items) : result.push({privateroomid: items.privateroomid,privateroomname: items.privateroomname,privateroomimage: items.privateroomimage,membercount: items.membercount, items: [items]});
        delete items.privateroomid;
        delete items.privateroomname;
        delete items.membercount;
        delete items.privateroomimage;
        return result;
        }, []);
      res.json(newrows);
    }
 
  });
}else{
  res.send('Cannot POST');
} 
});

router.post('/LoadPrivateMessageID',function(req,res,next){
 if(req.body.userid,req.body.otheruserid){
  ExtractDatabase.LoadPrivateMessageID(req.body.userid,req.body.otheruserid,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      const newrows = rows.reduce((result, items) => {
        const a = result.find(({privateroomid}) => privateroomid === items.privateroomid);
        a ? a.items.push(items) : result.push({privateroomid: items.privateroomid,privateroomname: items.privateroomname,privateroomimage: items.privateroomimage,membercount: items.membercount, items: [items]});
        delete items.privateroomid;
        delete items.privateroomname;
        delete items.membercount;
        delete items.privateroomimage;
        return result;
        }, []);
      res.json(newrows);
    }
 
  });
}else{
  res.send('Cannot POST');
} 
});

router.post('/CreatePrivateMessage',function(req,res,next){
 if(req.body.userid,req.body.otheruserid,req.body.roomname,req.body.membercount){
  ExtractDatabase.CreatePrivateMessage(req.body.userid,req.body.otheruserid,req.body.roomname,req.body.membercount,function(err,rows){
 
    if(err)
    {
      res.json(err);
    }
    else
    {
      if (Object.keys(rows).length){
        const newrows = rows[2].reduce((result, items) => {
          const a = result.find(({privateroomid}) => privateroomid === items.privateroomid);
          a ? a.items.push(items) : result.push({privateroomid: items.privateroomid,privateroomname: items.privateroomname,privateroomimage: items.privateroomimage,membercount: items.membercount, items: [items]});
          delete items.privateroomid;
          delete items.privateroomname;
          delete items.membercount;
          delete items.privateroomimage;
          return result;
        }, []);
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
