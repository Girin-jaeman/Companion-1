    $(function(){
        $('#datepicker').datepicker({
            dateFormat:"yy-mm-dd"
            ,showMonthAfterYear:true
            ,showOtherMonths: true
            ,changeYear:true
            ,changeMonth:true
            ,showOn:"both"
            ,buttonImage:"http://jqueryui.com/resources/demos/datepicker/images/calendar.gif"
            ,buttonImageOnly:true
            ,buttonText:"Select date"
            ,minDate:"1D"
            ,maxDate:"+1Y"
            ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
            ,yearSuffix:"년"
        });
        $('img.ui-datepicker-trigger').attr('align','absmiddle');
        $('#datepicker2').datepicker({
            dateFormat:"yy-mm-dd"
            ,showMonthAfterYear:true
            ,showOtherMonths: true
            ,changeYear:true
            ,changeMonth:true
            ,showOn:"both"
            ,buttonImage:"http://jqueryui.com/resources/demos/datepicker/images/calendar.gif"
            ,buttonImageOnly:true
            ,buttonText:"Select date"
            ,minDate:"1D"
            ,maxDate:"+1Y"
            ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
            ,yearSuffix:"년"
        });
        $('img.ui-datepicker-trigger').attr('align','absmiddle');
        // $('#datepicker').datepicker('setDate','+1D'); 기본값 설정
        $('#etc').keyup(function(e){
            var content=$(this).val();
            $('#counter').html("("+content.length+" / 200)");

            if(content.length>200){
                alert("기타/주의사항은 최대 200자까지만 입력 가능합니다.");
                $(this).val(content.substring(0,200));
                $('#counter').html("(200 / 200)");
            }
        });
    });
