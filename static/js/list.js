new Vue({
    el:"section",
    data:{
        isToggled_1:false,
        isToggled_2:false,
        res:[]
    },
    methods:{
        //折叠筛选框
        toggle_1(){
            this.isToggled_1=!this.isToggled_1;
        },
        toggle_2(){
            this.isToggled_2=!this.isToggled_2;
        },
        //大小图动态切换
        changeImg(i,index){
            this.res[index].current=this.res[index].imgs[i];
        }
    },
    created() {
        axios.get("http://127.0.0.1:90/list").then(res=>{
            this.res=res.data;
            //console.log(this.res);
        })
    },
})
