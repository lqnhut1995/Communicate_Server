var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var url = require('url');
var fs = require('fs');
var mimeType = require('./mimeType');

var cors=require('cors');
var index = require('./routes/index');
var Login=require('./routes/Login');
var Mainpage=require('./routes/Mainpage');
var Friends=require('./routes/Friends');
var Role=require('./routes/Role');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(cors());
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/Login',Login);
app.use('/Mainpage',Mainpage);
app.use('/Friends',Friends);
app.use('/Role',Role);

app.use('/uploads/?',function(req,res,next){
	const parsedUrl = url.parse(req.url);
	const sanitizePath = path.normalize(parsedUrl.pathname).replace(/^(\.\.[\/\\])+/, '');
    let pathname = path.join(__dirname, 'uploads'+sanitizePath);
    const ext = path.parse(pathname).ext;
    if(ext == '.mp4'){
      const stat = fs.statSync(pathname);
      const fileSize = stat.size;
      const head = {
        'Content-Length': fileSize,
        'Content-Type': 'video/mp4',
      }
      res.writeHead(200, head);
      fs.createReadStream(pathname).pipe(res);
    }else{
        fs.readFile(pathname, function(err, data){
        if(err){
          res.statusCode = 500;
          res.end(`Error getting the file: ${err}.`);
        } else {
          // if the file is found, set Content-type and send data
          res.setHeader('Content-type', mimeType[ext] || 'text/plain' );
          res.end(data);
        }
      });
    }
});
app.use('/uploads/thumbnails/?',function(req,res,next){
  const parsedUrl = url.parse(req.url);
  const sanitizePath = path.normalize(parsedUrl.pathname).replace(/^(\.\.[\/\\])+/, '');
    let pathname = path.join(__dirname, 'uploads/thumbnails'+sanitizePath);
    fs.readFile(pathname, function(err, data){
      if(err){
        res.statusCode = 500;
        res.end(`Error getting the file: ${err}.`);
      } else {
        // based on the URL path, extract the file extention. e.g. .js, .doc, ...
        const ext = path.parse(pathname).ext;
        // if the file is found, set Content-type and send data
        res.setHeader('Content-type', mimeType[ext] || 'text/plain' );
        res.end(data);
      }
    });
});
// catch 404 and forward to error handler
// app.use(function(req, res, next) {
//   var err = new Error('Not Found');
//   err.status = 404;
//   next(err);
// });

// // error handler
// app.use(function(err, req, res, next) {
//   // set locals, only providing error in development
//   res.locals.message = err.message;
//   res.locals.error = req.app.get('env') === 'development' ? err : {};

//   // render the error page
//   res.status(err.status || 500);
//   res.render('error');
// });
app.get('/',function(req,res){
  res.render('index');
});

app.use('/gallery',function(req,res){
  res.render('gallery');
});

app.use('/generic',function(req,res){
  res.render('generic');
});

app.use('/chat',function(req,res){
  res.render('chat');
});

module.exports = app;
