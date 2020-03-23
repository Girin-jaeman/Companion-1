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
