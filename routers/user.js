//引入模块
const express = require('express');
const pool = require('../pool.js');
var router = express.Router();
//1.用户登录
router.post('/login',(req,res)=>{
    var obj = req.body;
    //console.log(obj);
    var uname = obj.uname;
    var upwd = obj.upwd;
    var sql = `SELECT * FROM mi_user WHERE uname=? AND upwd=?`;
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:1,msg:"登录成功"});
        }else{
            res.send({code:0,msg:"登录失败"})
        }
    });
})
//导出模块
module.exports = router;
