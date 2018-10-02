const express = require('express');
const pool = require('../pool.js');
var router = express.Router();
router.get('/product',(req,res)=>{
    var sql=`SELECT * FROM mi_index_product`;
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
module.exports=router;