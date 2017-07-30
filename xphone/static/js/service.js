/**
 * Created by hlj on 2017/7/15.
 */

course('ser-nav-div');
// loop_course();
function course() {
    var ser_img = document.getElementsByClassName('ser-nav-div')[0];
    var div_img = ser_img.getElementsByTagName('ul')[0];
    var oImg = div_img.getElementsByTagName('li');

    var ser_cus = document.getElementsByClassName('ser-cus-div2')[0];
    var ser_cus_div = ser_cus.getElementsByClassName('ser-cus-div')[0];
    var ser_div = ser_cus_div.getElementsByTagName('div');

    var oImglength = oImg.length;
    var oDivlength = ser_div.length;
    // 初始化

    getWidth();

    // 监听窗口变化改变li的宽度
    window.onresize = function(){
        getWidth();
    };
    function getWidth() {
        var Liwidth = parseInt(getComputedStyle(div_img).width);
        for (var i = 0 ; i<oImglength;i++){
            oImg[i].style.width = Liwidth + 'px';
        }
        var Divwidth = parseInt(getComputedStyle(ser_cus_div).width);
        for (var j = 0; j <oDivlength ; j++){
            ser_div[j].style.width = Divwidth - 60 + 'px';
        }
    }

    // 轮播
    imgCourse(oImg,'ser-nav-div',oImglength,false);
    imgCourse(ser_div,'ser-cus-div2',oDivlength,true);
    function imgCourse(element,parentElement,length,loop) {
        var ser_img = document.getElementsByClassName(parentElement)[0];
        var div_btn = ser_img.getElementsByClassName('div-btn')[0];
        var oUl = div_btn.getElementsByTagName('ul')[0];
        var oLi = oUl.getElementsByTagName('li');
        var oBtn = oUl.getElementsByTagName('a');
        var oPre = div_btn.getElementsByClassName('nav-left-btn')[0];
        var oNext = div_btn.getElementsByClassName('nav-right-btn')[0];
        var count = 0;

        // 初始化
        function resize() {
            for(var i = 0;i <length;i++){
                element[i].style.display = 'none';
                oBtn[i].className = '';
            }
        }
        resize();
        oBtn[0].className = 'active';
        element[0].style.display = 'block';

        // 上一张
        oPre.onclick = function () {
            clearInterval(timer);
            resize();
            count = (--count) % length;
            if (count < 0){count = length-1}
            console.log(count);
            element[count].style.display = 'block';
            // startOP(element[count],0);
            oBtn[count].className = 'active';
        };
        // 下一张
        oNext.onclick = function () {
            clearInterval(timer);
            resize();
            count = (--count) % length;
            if (count < 0){count = length-1}
            console.log(count);
            element[count].style.display = 'block';
            oBtn[count].className = 'active';
        };
        // 下标点击
        for (var i = 0 ;i < oLi.length ;i++){
            oLi[i].index = i;
            oLi[i].onclick = function () {
                resize();
                count = this.index;
                element[count].style.display = 'block';
                oBtn[count].className = 'active';
            }
        }
        // 循环
        if(loop){
            var timer = setInterval(function () {
                resize();
                count = (--count) % length;
                if (count < 0){count = length-1}
                // console.log(count);
                element[count].style.display = 'block';
                oBtn[count].className = 'active';
                
            },5000)
        }
    }

    // 改变透明度
    function startOP(obj,utarget){
        clearInterval(obj.timer);//先关闭定时器
        obj.timer = setInterval(function(){
            var speed = 0;
            if(obj.alpha>utarget){
                speed = -10;
            }
            else{
                speed = 10;
            }
            obj.alpha = obj.alpha+speed;
            if(obj.alpha === utarget){
                clearInterval(obj.timer);
            }
            obj.style.filter = 'alpha(opacity:'+obj.alpha+')';//基于IE的
            obj.style.opacity = parseInt(obj.alpha)/100;
            console.log(obj.style.opacity);
        },60);
    }
}
