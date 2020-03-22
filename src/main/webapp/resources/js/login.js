$(document).ready(function () {
    console.log("ready");
    $("#showHide").hide();
    $("#showMore").click(function () {
        $("#showHide").show();
    });
});