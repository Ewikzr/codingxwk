var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var productsRouter = require('./routes/products');


var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
                                 
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));



app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/products', productsRouter);



// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

app.get('/checkouts', (req, res) => {
  const items = [
    {
      name: 'สร้อยคอผู้หญิง',
      image: './images/necklace_01.jpg',
      description: 'สร้อยคอ แฟชั่น สไตล์พังก์เท่ห์ เครื่องประดับ แฟชั่น สำหรับผู้หญิง',
      shopName: 'สมพร',
      price: 199
    },
    {
      name: 'เสื้อเชิ้ตแขนสั้น',
      image: './images/clothes_01.jpg',
      description: 'เสื้อเชิ้ตแขนสั้นลายสก็อต คุณภาพดี',
      shopName: 'เพ็ญประภา',
      price: 120
    }
  ];
  res.render('checkouts', { items });
});

module.exports = app;


