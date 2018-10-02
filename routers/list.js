const express=require("express");
const router=express.Router();
const pool=require("../pool");
router.get("/",(req,res)=>{
    var products=[];
    (async function(){
        var sql=`SELECT * FROM mi_list_product`;
        await new Promise(function(open){
            pool.query(sql,[],(err,result)=>{
                if(err) console.log(err);
                //res.send(result[0]);
                for(var i=0;i<result.length;i++){
                    products.push(result[i]); 
                };
                //res.send(products);
                open();
            })
        })
        var sql=`SELECT img1,img2,img3 FROM mi_list_pics`;
        await new Promise(function(open){
            pool.query(sql,[],(err,result)=>{
                if(err) console.log(err);
                for(var i=0;i<result.length;i++){
                    var arr=[];
                    for(var key in result[i]){
                        arr.push(result[i][key]);
                        products[i]["imgs"]=arr;
                        products[i]["current"]=arr[0];
                    }
                }
                open();               
            })
        })
        res.send(products);             
    })()   
})
module.exports=router;