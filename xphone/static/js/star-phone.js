/**
 * Created by Administrator on 2017/7/19.
 */
//sp-nav animate control
$("#one-small-btn").click(function () {
    $(this).find("span").toggleClass("rotate");
    $("#small-hidden-menu").toggleClass("dn");
});

//camera-hd animate control
$(".camera-hd-content li").click(function () {
    var index = $(this).index();
    $(this).addClass("active").siblings().removeClass("active");
    $(".camera-hd-content li").eq(index).addClass("active").siblings().removeClass("active");
    $(".camera-hd-picbox li").eq(index).addClass("active").siblings().removeClass("active");
});

//camera-lens animate control
$(".camera-lens-inner li").click(function () {
    var index = $(this).index();
    $(this).add("active").siblings().removeClass("active");
    $(".camera-lens-cell").eq(index).addClass("active").siblings().removeClass("active");
});

//sp-charge animate control
$(".sp-charge-item ol li").click(function () {
    console.log($(this).index());
    var index = $(this).index();
    $(".sp-charge-item").eq(index)
});

//sp-design animate control
$(".sp-design-content ol li").click(function () {
    var index = $(this).index();
    $(this).addClass("active").siblings().removeClass("active");
    $(".sp-design-content li").eq(index).addClass("active").siblings().removeClass("active");
    $(".sp-design-item").eq(index).addClass("active").siblings().removeClass("active");
});
$(".silent-model").click(function () {
    var index = $(this).index();
    $(this).addClass("active").siblings().removeClass("active");
    $(".silent-item").eq(index).addClass("active").siblings().removeClass("active");
});

//sp-color animate control
$(".sp-color .color-btn").click(function () {
    $(this).parent().parent().toggleClass("show-color");
});

//sp-test animate control
$(".test-btn").click(function () {
    var oH2 = $(".test-title h2");
    if (oH2.height() === 0) {
        oH2.animate({height: "62px", opacity: 1, marginBottom: "30px"}, 1000);
    } else {
        oH2.animate({height: 0, opacity: 0, marginBottom: 0}, 1000);
    }
    $(".test-content").slideToggle(1000);
});

//sp-charge animate control
$(".sp-charge-item .sp-slide-bar li").click(function () {
    $(".sp-charge-item").eq($(this).index()).addClass("active").siblings().removeClass("active");
});
$(".item-data-chart li").click(function () {
    $(this).addClass("active").siblings().removeClass("active");
    $(".chart-item").eq($(this).index()).addClass("active").siblings().removeClass("active");
});

//sp-performance animate control
$(".performance-inner-m li").click(function () {
    $(this).addClass("active").siblings().removeClass("active");
    var nWidth = $(".img-item").outerWidth();
    $(".inner-imgbox-m").animate({left: -nWidth * $(this).index()}, 800);
});

//sp-special animate control
$(".sp-special-text li").click(function () {
    $(this).addClass("active").siblings().removeClass("active");
    var nWidth = $(".img-items").outerWidth();
    $(".sp-special-imgbox-inner").animate({left: -nWidth * $(this).index()}, 1000)
});
$(".sp-special-text-m li").click(function(){
    // console.log($(".sp-special-text-m .sp-contentbox"));
   $(this).addClass("active").siblings().removeClass("active");
   $(".sp-special-text-m .sp-contentbox").eq($(this).index()).addClass("active").siblings().removeClass("active");
    var nWidth = $(".img-items").outerWidth();
    $(".sp-special-imgbox-inner").animate({left: -nWidth * $(this).index()}, 1000)
});
function changeColor() {
    var tag = false, ox = 0, left = 0;
    var startHandler, moveHandler, stopHandler;
    var oChangeBox = $(".change-box");
    var oSpan = oChangeBox.find("span");

    //check whether it's mobile
    function checkPc() {
        var userAgentInfo = navigator.userAgent;
        var Agents = ["Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod"];
        var flag = true;
        for (var v = 0; v < Agents.length; v++) {
            if (userAgentInfo.indexOf(Agents[v]) > 0) {
                flag = false;
                break;
            }
        }
        return flag;
    }

    if (checkPc) {
        startHandler = "mousedown";
        moveHandler = "mousemove";
        stopHandler = "mouseup";
    } else {
        startHandler = "touchstart";
        moveHandler = "touchmove";
        stopHandler = "touchend";
    }
    oSpan.on(startHandler, function (e) {
        ox = e.pageX - left;
        tag = true;
    });
    $(document).on(stopHandler, function (e) {
        tag = false;
    });
    oChangeBox.on(moveHandler, function (e) {
        if (tag) {
            left = e.pageX - ox;
            if (left <= 0) {
                left = 0;
            } else if (left > $(this).width() - oSpan.width() / 2) {
                left = $(this).width() - oSpan.width() / 2;
            }
            oSpan.css('left', left);
            $(this).prev().css({opacity:1-left/$(this).width()})
        }
    });
}
changeColor();

//sp-network animate control
$(".sp-network-item li").click(function () {
    console.log($(".sp-network-item li"));
    var oSpItemboxM = $(".sp-itembox-m");
    $(".sp-network-item").eq($(this).index()).addClass("active").siblings().removeClass("active");
    if (oSpItemboxM.css("display") !== "none") {
        var nWidth = $(".sp-item-img").outerWidth();
        oSpItemboxM.animate({left: -nWidth * $(this).index()}, 800)
    }
});

//sp-matters animate control
$(".sp-matters-content li").click(function () {
    var index = $(this).index();
    var nStep = $(".sp-matters-img").width();
    $(this).addClass("active").siblings().removeClass("active");
    $(".sp-matters-content .sp-contentbox").eq(index).addClass("active").siblings().removeClass("active");
    $(".sp-matters-wrap").animate({left: -index * nStep + "px"}, 800);
});