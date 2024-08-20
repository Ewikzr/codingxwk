var express = require('express');
var router = express.Router();
const mysqlRouter = require('../mysql');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post('/top-week', async(req,res,next) => {
  const limit = req.body.limit || 10;
  const data = await mysqlRouter.dbParamQuery('SELECT * FROM `products` WHERE 1 ORDER BY `product_id` ASC LIMIT ?',[limit]);

  res.status(200).send(data);
});

router.post('/search', async(req,res,next) => {
  const product = req.body.product;
  if(!product) return res.sendStatus(204);

  const data = await mysqlRouter.dbParamQuery('SELECT * FROM `products` WHERE 1 AND (`product_name` LIKE ?)',[`%${product}%`]);

  res.status(200).send(data);
});

module.exports = router;
