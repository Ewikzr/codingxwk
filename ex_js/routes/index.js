var express = require('express');
var router = express.Router();
const mysqlRouter = require('../mysql');


router.get('/', function(req, res, ) {
  res.render('index' ,{ title: 'Express' });
});

router.get('/searchs', function(req, res, ) {
  res.render('searchs', { title: 'searchs' });
});

router.get('/allproducts', async function(req, res, next) {
  const products = await mysqlRouter.dbParamQuery('SELECT * FROM `products` WHERE 1');
  res.render('allproducts', { title: 'All Products', products: products });
});

router.get('/checkouts', function(req, res, ) {
  res.render('checkouts', { title: 'checkouts' });
});

router.get('/payments', function(req, res,) {
  res.render('payments', { title: 'payments' });
});

router.get('/registers', function(req, res,) {
  res.render('registers', { title: 'Register' });
});

router.get('/carts', function(req, res,) {
  res.render('carts', { title: 'carts' });
});

router.get('/login', function(req, res,) {
  res.render('login', { title: 'login' });
});

router.get('/alr-login', function(req, res,) {
  res.render('alr-login', { title: 'done-login' });
});

router.get('/sellers', function(req, res,) {
  res.render('sellers', { title: 'done-login' });
});

module.exports = router;



// router.post('/login', async function(req, res) {
//   const { identifier, password } = req.body;


//   const isPhoneNumber = /^\d{10}$/.test(identifier);
//   let query = '';
//   let user = null;

//   if (isPhoneNumber) {
//     query = `SELECT * FROM users WHERE phone_number = ? AND password = ?`;
//     user = await mysqlRouter.dbParamQuery(query, [identifier, password]);
//   } else {
//     query = `SELECT * FROM users WHERE username = ? AND password = ?`;
//     user = await mysqlRouter.dbParamQuery(query, [identifier, password]);
//   }

//   if (user.length > 0) {
//     res.json({ success: true });
//   } else {
//     res.json({ success: false });
//   }
// });

module.exports = router;
