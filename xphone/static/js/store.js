/**
 * Created by Administrator on 2017/7/16.
 */
var arrigroup = $(".subnav-container i");
$(window).resize(function(){
    var windwidth = $(window).width();
    var arrimg = $(".hero-goods-wrap images");
    var arrsrc = ["../images/store/ChargerBundle0620-small.jpg","../images/store/Bundle0620-small.jpg","../images/store/Backpack0620-small.jpg"];
    if(windwidth<=767){
        for(var i=0;i<arrimg.length;i++){
            $(arrimg[i]).attr('src',arrsrc[i]);
        }
    }
});
$(window).scroll(function() {
    var scolltop = $(this).scrollTop();
    if(scolltop>=80){
        $(".second-header-nav").css({position:"fixed",top:"-85px",boxShadow:"0 0 10px 3px rgba(0,0,0,.2)"});
        arrigroup.addClass("scale0");
    }
    else {
        arrigroup.removeClass("scale0");
        $(".second-header-nav").css({position:"relative",top:"0"});

    }
});