function sidebarCollapse() {
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
    });
}

function historyBack() {
	$(".btn_back").on("click", function() {
		history.back();
	});
}

$(document).ready(function () {
    sidebarCollapse();
});

var topBtn = $('#topBtn');
var delay = 1000;
topBtn.on('click', function() {
  $('html, body').stop().animate({scrollTop: 0}, delay);
});