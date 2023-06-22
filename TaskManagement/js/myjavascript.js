$('#myTab a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
});

// store the currently selected tab in the hash value
$("ul.nav-tabs > li > a").on("shown.bs.tab", function (e) {
    var id = $(e.target).attr("href").substr(1);
    window.location.hash = id;
});

// on load of the page: switch to the currently selected tab
var hash = window.location.hash;
//$('#myTab a[href="' + hash + '"]').tab('show');

//$('#txt_startdate').click(function (e) {
//    alert("Hello");
//});
$(function () {
    $('#txt_enddate').datepicker({ dateFormat: 'yy-mm-dd' });
    $('#txt_startdatae').datepicker({ dateFormat: 'yy-mm-dd' });
});