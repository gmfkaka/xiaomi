//引入模块
const express = require('express');
const bodyParser = require('body-parser');
const user = require('./routers/user.js');
const index = require('./routers/index.js');
const list = require('./routers/list.js');
var app = express();
app.listen(90,()=>{
    console.log('done');
})

//托管静态目录
app.use(express.static('./static'));

//配置body-parser
app.use(bodyParser.urlencoded({
    extended:false
}))

//挂载路由
app.use('/user',user);
app.use('/index',index);
app.use('/list',list);