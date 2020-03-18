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
    var datetimeRegexp=/[0-9]{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])/;
    var date = Date.parse(checkIn.val());
		if (!datetimeRegexp.test(date)) {
      alert('올바른 날짜 형식이 아닙니다. yyyy-mm-dd 형식으로 입력해주세요.');
		}else {
      msgInit(tooltip);
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
    changeMonth:true,
    yearSuffix: '년',
    minDate:'+1d',
    maxDate:'+3m',
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
    $("#from").datepicker("setDate","+1d");
    $("#to").datepicker("setDate","+2d");
  });