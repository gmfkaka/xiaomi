$(function(){
    new Vue({
        el:"header",
        data:{
            //1.顶部导航移入移出
            show:0,
            //2.购物车下拉
            shop_cart:0,
        }
    })
    //3.导航搜索框边框变色，下拉
    $(".search-text").focus(function(){
        $(".top-search input").css("borderColor","#ff6700");
        $(this).next().next().show();
    }).blur(function(){
        $(".top-search input").css("borderColor","#e0e0e0");
        $(this).next().next().hide();
    })
    
})