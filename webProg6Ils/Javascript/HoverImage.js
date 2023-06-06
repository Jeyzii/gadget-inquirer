$(function () {
    $("[id*=GridView1] img").hover(function () {
    $("img", $(this).closest("td")).addClass("hover_row");
    }, function () {
        $("img", $(this).closest("td")).removeClass("hover_row");
    });
});