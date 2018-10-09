new Vue({
    el:".main",
    data:{
        current_color:0,
        current_edition:0,
        current_price:2699,
        service1:false,
        service2:false,
        service_price:0,
        edition:[
            {version:"6+64GB 全网通",price:2699},
            {version:"8+128GB 全网通",price:3299},
            {version:"6+128GB 全网通",price:2999},
            {version:"6+256GB 全网通",price:3299}
        ],
        colors:[
            {color:"黑色",icon:"img/product_details/color-black.png"},
            {color:"蓝色",icon:"img/product_details/color-blue.png"},
            {color:"白色",icon:"img/product_details/color-white.png"}
        ]       
    },
    methods:{
        //1.点击颜色切换轮播图
        changeColor(i){
            this.current_color=i;
        },
        //2.版本切换边框和当前单价
        changeEdition(i){
            this.current_edition=i;
            this.current_price=this.edition[i].price;
        },
        //3.保险服务勾选，总价叠加
        service1_click(){
            this.service1=!this.service1;
            if(this.service1){
                this.service_price+=249;
            }else{
                this.service_price-=249;
            }
        },
        service2_click(){
            this.service2=!this.service2;
            if(this.service2){
                this.service_price+=129;
            }else{
                this.service_price-=129;
            }
        }
    },
    created(){
        $(function(){
            //1.左侧轮播图滚动事件
            window.onscroll=function(){
                var scrollTop = $(document).scrollTop();
                if (scrollTop >= 200) {
                    $(".nav").css({"top":"0","position":"fixed","width":"100%"});
                    $(".carousel").css({"top":"90px","position":"fixed","margin-top":""});
                }else{
                    $(".nav").css({"position":""});
                    $(".carousel").css({"position":"","margin-top":"","top":""})
                }
                if(scrollTop>=800){
                    $(".carousel").css({"position":"","margin-top":"630px"})
                }
            }       
        //4.轮播图
        // 1.轮播
        var arr=["carousel/item1.jpg","carousel/item2.jpg","carousel/item3.jpg","carousel/item4.jpg"];
        var ord = 0;//代表当前图片的序号，从0开始。
        var myTimer = null;
    
        function initUI() {
            $(".carousel-indicators>div:first>a").addClass("active");
        }
    
        function  initEvent() {
            $(".carousel").mouseenter(function () {
                stopPlay();
            });
    
            $(".carousel").mouseleave(function () {
                autoPlay();
            });
    
            $(".carousel-indicators div a").click(function () {
                goImg($(".carousel-indicators div a").index(this));
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
                    let $img = $(".current img");
                    //1、淡入淡出效果
                    //让一张(outOrd)淡出 当前消失
                    $img.eq(outOrd).animate({"opacity":0},1000);
                    //让一张(ord)淡入下一张图片显示
                    $img.eq(ord).animate({"opacity":1},1000);
                    //2、改变圆点的颜色；
                    $("[data-toggle=carousel]").eq(ord).addClass("active").parent().siblings().children().removeClass("active");
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
                let $img = $(".current img");
                //1、淡入淡出效果
                //让一张(outOrd)淡出 当前消失
                $img.eq(outOrd).animate({"opacity":0},1000);
                //让一张(ord)淡入下一张图片显示
                $img.eq(ord).animate({"opacity":1},1000);
                //2、改变豆豆的颜色；
                $("[data-toggle=carousel]").eq(ord).addClass("active").parent().siblings().children().removeClass("active");
            }
            initUI()
            initEvent();
            //3、自动播放
            autoPlay();
        })
    },
    computed:{
        //监听商品总价
        total_price:function(){
            return this.current_price+this.service_price
        }
    }
})



