/* 유효성검사 */
function validation() {
    var checkIn = $("#datepicker")
        ,checkOut = $("#datepicer2")
        ,breed = $("#animalBreed")
        ,age = $("#animalAge");

    function msgInit(tooltip) {
		tooltip.text("");
		tooltip.css("opacity", 0);
	}
    /* 공란 */
	$("input").on("focusout", function() {
		var tooltip = $(this).siblings(".msg");
		var value = $(this).val();
		if (value == "") {
			tooltip.text("필수 입력사항입니다.");
			tooltip.css("opacity", 1);
		}
    });
    
    /* 체크인 */
    checkIn.on("change", function(){
		var tooltip = $(this).siblings(".msg");
        var date = Date.parse(checkIn.val());
		if (date != "") {
			msgInit();
		} 
    });
    /* 체크아웃 */
    checkOut.on("change", function(){
		var tooltip = $(this).siblings(".msg");
		var value = checkOut.val();
		if (value != "") {
			msgInit();
		} 
    });
    /* 반려동물 품종 */
    breed.on("change", function(){
		var tooltip = $(this).siblings(".msg");
		var value = breed.val();
		if (value != "") {
			msgInit();
		} 
    });
    /* 반려동물 나이 */
    age.on("change", function(){
		var tooltip = $(this).siblings(".msg");
		var value = age.val();
		if (value != "") {
			msgInit();
		} 
	});
}

/* 유효성검사 Submit */
function validJoin() {
}
/* Datepicker */
$(function() {
    var dates = $( "#from, #to " ).datepicker({
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    dayNames: ['일','월','화','수','목','금','토'],
    dayNamesShort: ['일','월','화','수','목','금','토'],
    dayNamesMin: ['일','월','화','수','목','금','토'],
    dateFormat: 'yy-mm-dd',
    showOtherMonths:true,
    showMonthAfterYear: true,
    changeYear: true,
    yearSuffix: '년',
    maxDate:'+30d',
    onSelect: function( selectedDate ) {
      var option = this.id == "from" ? "minDate" : "maxDate",
        instance = $( this ).data( "datepicker" ),
        date = $.datepicker.parseDate(
          instance.settings.dateFormat ||
          $.datepicker._defaults.dateFormat,
          selectedDate, instance.settings );
      dates.not( this ).datepicker( "option", option, date );
    }
    });
    $('#from,#to').datepicker('setDate','today');
  });