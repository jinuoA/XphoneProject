/**
 * Created by Administrator on 2017/7/13.
 */

var bodyheight = $(document.body).height();
$("#filter").height(bodyheight);
//大屏幕下点击搜索按钮
$("#index-search").click(function () {
    $(".header-mid").hide();
    $(".header-right").hide();
    $(".search-hidden").show();
    $("#filter").show();

});
// 大屏幕下点击×
$(".delete-btn").click(function () {
    $(".header-mid").show();
    $(".header-right").show();
    $(".search-hidden").hide();
    $("#filter").animate({opcity:"0"},200);
    $("#filter").hide();

});
// 小屏幕下点击折叠按钮
$("#header-fold").click(function () {
        $(".less768-menu").toggleClass("dn");
    $("#filter").toggleClass("db");
});
//小屏幕下聚焦输入框
$("#less768-input-txt").focus(function () {
    $("#less768-ul").animate({height:"0"},300);
    $("#less768-header-arrow-down").show();
});
//小屏幕下输入框失去焦点
$("#less768-input-txt").blur(function () {
    $("#less768-header-arrow-down i").removeClass("icon-packup").addClass("icon-unfold");
    setTimeout(function () {
        $("#less768-header-arrow-down i").removeClass("icon-unfold").addClass("icon-packup");
        $("#less768-ul").animate({height:"255px"},300);
        $("#less768-header-arrow-down").hide();
    },100);

});
//小屏幕下底部list-msg的点击事件
$(".less528-footer-title").click(function () {
    $(this).next().slideToggle();
    if($(this).find(".superfont").is(".icon-unfold")){
        $(this).find(".superfont").removeClass("icon-unfold").addClass("icon-packup");
    }
    else{
        $(this).find(".superfont").removeClass("icon-packup").addClass("icon-unfold");
    }
});
$(window).resize(function(){
    console.log($(window).width());
});
