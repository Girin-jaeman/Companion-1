// [source] http://www.nextree.co.kr/p9887/
/* 유효성검사 */
function validation() {
    console.log('validation running...');
    var checkIn = $("#from")
        ,checkOut = $("#to")
        ,breed = $("#animalBreed")
        ,age = $("#animalAge");

    function msgInit(tooltip) {
		tooltip.text("");
		tooltip.css("opacity", 0);
	}
    /* 공란 */
	$("input").on("focusout", function() {
		console.log('공란...');
		var tooltip = $(this).siblings(".msg");
		var value = $(this).val();
		if (value == "") {
			tooltip.text("필수 입력사항입니다.");
			tooltip.css("opacity", 1);
		}
		else{
      msgInit(tooltip);
		}
    });
    
    /* 체크인 */
    $("#from").on('change',function(){
      console.log('checkIn change...');
    var tooltip = $(this).siblings(".msg");
    var datetimeRegexp=/^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
    if($('#from').val()!=""){
      msgInit(tooltip);
    }
		if (!datetimeRegexp.test($('#from').val())) {
      tooltip.text("올바른 날짜 형식이 아닙니다.");
      tooltip.css("opacity",1);
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
    prevText: 'Prev' ,
    nextText: 'Next',
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