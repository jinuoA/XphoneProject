/**
 * Created by Administrator on 2017/7/25.
 */
//立即购买颜色选择
var $buynowbtn = $("#buynow").find("a");
var $bnimgshow = $(".left-imgshow");
var globflag = 0;
$buynowbtn.click(function () {
    var index = $(this).index();
    globflag = $bnimgshow.eq(index).find(".small-img").find("a").length;
    $(this).toggleClass("active").siblings().removeClass("active");
    $bnimgshow.eq(index).toggleClass("dflex").siblings().removeClass("dflex");
    if(!$bnimgshow.eq(index).is(".dflex")){
        $("#normal-show").addClass("dflex");
    }
});

//商品具体样式选择
var sec1order = 1;
var $simg = $(".small-img a");
var $bimg = $(".big-img .pic img");
$(".big-img .btnleft").click(function () {
    sec1order--;
    if (sec1order == -1) {
        sec1order = 3;
    }
    $(this).parent().find("img").eq(sec1order).addClass("op1").siblings().removeClass("op1");
});
$(".big-img .btnright").click(function () {
    $(this).parent().find("img").eq(sec1order).addClass("op1").siblings().removeClass("op1");
    sec1order++;
    if (sec1order >=globflag) {
        sec1order = 0;
    }
});
$simg.click(function () {
    var screenwidth = $(window).width();
    var index = $(this).index();
    if(screenwidth<=1030){
        $(this).css("backgroundColor","#666").siblings().css("backgroundColor","#ccc");
    }
        $(this).parent().parent().find(".big-img").find("img").eq(index).addClass("op1").siblings().removeClass("op1");
    sec1order = index;
});

//立即购买旁边的分享
$("#share").hover(function () {
    $("#shareway").css({"left": 0});
}, function () {
    $("#shareway").hover(function () {
        $("#shareway").css({"left": 0});
    }, function () {
        $("#shareway").css({"left": "-120px"});
    })
});

//商品详情的切换
var $btn1 = $(".product-two").find("span");
var $bgimg1 = $(".product-two-bg");
var $btn2 = $("#btn").find("span");
var imgshow = $("#pro3-imgshow");
var $bgimg2 = $(".product-three").find("li");
$btn1.click(function () {
    var index = $(this).index();
    changeimg($btn1,index);
    $btn2.eq(index).addClass("active").siblings().removeClass("active");
});
$btn2.click(function () {
    var index = $(this).index();
    changeimg($btn2,index);
    $btn1.eq(index).addClass("active").siblings().removeClass("active");

});
function changeimg(btn,index) {
    $(btn).eq(index).addClass("active").siblings().removeClass("active");
    $bgimg1.eq(index).addClass("img-active").siblings().removeClass("img-active");
    var movelen = $bgimg2.width();
    imgshow.css("left", -index * movelen + "px");
}

//固定菜单选择项
var $promenu = $("#pro-menu");
var $menu = $promenu.find("a");
$(window).scroll(function () {
    var scrolltop = $(this).scrollTop();
    var screenwidth = $(window).width();
    if(screenwidth<=1030){
        if (scrolltop >= 720) {
            $(".menu ul").css("margin","0");
            $promenu.css({position: "fixed", top: "0"});
            if (scrolltop <2270) {
                removeactive();
                $menu.eq(0).addClass("active");
            }
            else if (scrolltop <2670) {
                removeactive();
                $menu.eq(1).addClass("active");
            }
            else if (scrolltop > 3976) {
                removeactive();
                $menu.eq(2).addClass("active");
            }
        }
        else {
            $(".menu ul").css("margin","auto");
            $promenu.css({position: "relative"});
            removeactive();
        }
    }
    else{
        if (scrolltop >= 1155) {
            $promenu.css({position: "fixed", top: "0"});
            if (scrolltop < 3676) {
                removeactive();
                $menu.eq(0).addClass("active");
            }
            else if (scrolltop < 3976) {
                removeactive();
                $menu.eq(1).addClass("active");
            }
            else if (scrolltop > 3976) {
                removeactive();
                $menu.eq(2).addClass("active");
            }
        }
        else {
            $promenu.css({position: "relative"});
            removeactive();
        }
    }

});
function removeactive() {
    $menu.each(function () {
        $(this).removeClass("active");
    });
}
$menu.click(function () {
    $promenu.css({position: "fixed", top: "0"});
    $(this).addClass("active").siblings().removeClass("active");
});


//控制父元素的高度
$(window).resize(function () {
    consection2();
    console.log("此时屏幕的宽度："+$(window).width());
    });

function consection2() {
    var father = $(".pro-two-box");
    var son = $(".product-two-bg");
    father.css("height",son.height()+'px');
    father.parent().css("height",father.height());
}
consection2();