// 1.轮播
var arr=["carousel/item1.jpg","carousel/item2.jpg","carousel/item3.jpg","carousel/item4.jpg","carousel/item5.jpg"];
var ord = 0;//代表当前图片的序号，从0开始。
var myTimer = null;

function initUI() {
    $(".carousel-indicators>li:first").addClass("current");
}

function  initEvent() {
    $(".carousel").mouseenter(function () {
        stopPlay();
    });

    $(".carousel").mouseleave(function () {
        autoPlay();
    });

    $(".carousel-indicators li").click(function () {
        goImg($(".carousel-indicators li").index(this));
    });

    $(".carousel-left").click(function () {
        let transord =ord-1;
        transord = transord<0?arr.length-1:transord;
        goImg(transord);
    });

    $(".carousel-right").click(function () {
        let transord =ord+1;
        transord = transord>arr.length-1?0:transord;
        goImg(transord);
    });
}

//1.自动播放
function autoPlay() {
    myTimer = setInterval(function () {
        //一、改变数据
        // 1、记录当前序号（淡出的图片序号）
        let outOrd = ord;
        //2、改变要显示的图片的序号（淡出图片序号加一）
        ord++;
        if(ord>arr.length-1){
            ord=0;
        }
        //二、改变外观
        let $img = $(".carousel-img img");
        //1、淡入淡出效果
        //让一张(outOrd)淡出 当前消失
        $img.eq(outOrd).animate({"opacity":0},1000);
        //让一张(ord)淡入下一张图片显示
        $img.eq(ord).animate({"opacity":1},1000);
        //2、改变圆点的颜色；
        $(".carousel-indicators li").eq(ord).addClass("current").siblings().removeClass("current");
    },3000);
}

//2、停止播放
function stopPlay() {
    window.clearInterval(myTimer);
}

//3、跳转到指定的图片
function  goImg(transOrd) {
    //一、改变数据
    // 1、记录当前序号（淡出的图片序号）
    let outOrd = ord;
    //2、改变要显示的图片的序号（传入的图片序号）
    ord=transOrd;
    if(ord>arr.length-1){
        ord=0;
    }
    //二、改变外观
    let $img = $(".carousel-img img");
    //1、淡入淡出效果
    //让一张(outOrd)淡出 当前消失
    $img.eq(outOrd).animate({"opacity":0},1000);
    //让一张(ord)淡入下一张图片显示
    $img.eq(ord).animate({"opacity":1},1000);
    //2、改变豆豆的颜色；
    $(".carousel-indicators li").eq(ord).addClass("current").siblings().removeClass("current");
}

$(function () {
    //1.ajax数据库加载
    $.ajax({
        url:"http://127.0.0.1:90/index/product",
        type:"get",
        dataType:"json",
        success:function(res){
            var mi_flash=res.slice(0,4);
            var f1=res.slice(4,12);
            var f2=res.slice(12,22);
            var f3=res.slice(22,32);
            var rec=res.slice(32,37);
            var hot=res.slice(37,41);
            console.log(hot);
            //闪购
            new Vue({
                el:"#miflash",
                data:{
                    mi_flash,
                    isDisabled:true,
                    isMoved:false
                },
                methods:{
                    prev(){
                        this.isDisabled=true;
                        this.isMoved=false;
                    },
                    next(){
                        this.isDisabled=false;
                        this.isMoved=true;
                    }
                }
            })
            //楼层F1
            new Vue({
                el:"#f1",
                data:{f1}
            })
            //楼层F2
            new Vue({
                el:"#f2",
                data:{f2,tab:1},
            })
            //楼层F3
            new Vue({
                el:"#f3",
                data:{f3,tab:1}
            })
            //推荐产品
            new Vue({
                el:"#recommend",
                data:{
                    rec,
                    isDisabled:true,
                    isMoved:false
                },
                methods:{
                    prev(){
                        this.isDisabled=true;
                        this.isMoved=false;
                    },
                    next(){
                        this.isDisabled=false;
                        this.isMoved=true;
                    }
                }
            })
            //热评产品
            new Vue({
                el:"#hot",
                data:{hot}
            })
        }
    });


    //2.启动轮播
    //初始化界面
    initUI();
    //绑定事件
    initEvent();
    //自动播放
    autoPlay();

    //3.左侧导航栏移入移出
    //3.1生成第二行隐藏菜单
    $("#cate2-list1").html($("#cate1-list3").html());
    $("#cate2-list2").html($("#cate1-list2").html());
    $("#cate2-list3").html($("#cate1-list1").html());
    $("#cate2-list4").html($("#cate1-list4").html());
    //3.2绑定事件
    $(".cate-hidden").hide();
    $(".categoryList").on("mouseover","[data-toggle=categoryList]",function(){
        var $li=$(this);
        var id=$li.attr("data-target");
        $(id).show().siblings("[class=cate-hidden]").hide();
        $li.mouseout(function(){
            $(id).hide();
        })
    })

    //4.秒杀倒计时
        function miFlash(){
            var end=new Date("2019/01/01 22:00:00");
            var now=new Date();
            var s=parseInt((end-now)/1000);
            var h=parseInt(s%(3600*24)/3600);
            if(h<10) h="0"+h;
            //s/(3600*24)的余数,再/3600,再下去整
            var m=parseInt(s%3600/60);
            if(m<10) m="0"+m;
            //s/3600的余数,再/60，再下取整
            s%=60;//s/60的余数
            if(s<10) s="0"+s;
            $(".remain-seconds").html(s);
            $(".remain-minutes").html(m);
            $(".remain-hours").html(h);
        }
        miFlash();
        var timer=setInterval(miFlash,1000);

});







