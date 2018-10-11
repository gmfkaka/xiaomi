//引入模块
const express = require('express');
const pool = require('../pool.js');
var router = express.Router();
//1.用户登录
router.post('/login',(req,res)=>{
    var obj = req.body;
    //console.log(obj);
    var phone = obj.uname;
    var pwd = obj.upwd;
    var sql = `SELECT * FROM mi_user WHERE phone=? AND pwd=?`;
    pool.query(sql,[phone,pwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:1,msg:"登录成功"});
        }else{
            res.send({code:0,msg:"登录失败"})
        }
    });
});

//2.用户注册
router.post('/register',(req,res)=>{
    var obj = req.body;
    var phone = obj.phone;
    var pwd = obj.pwd;
    var sql = `INSERT INTO mi_user VALUES(NUll,?,?)`;
    pool.query(sql,[phone,pwd],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({code:1,msg:"注册成功"});
        }else{
            res.send({code:0,msg:"注册失败"})
        }
    })
})
//导出模块
module.exports = router;
