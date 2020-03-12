$(document).ready(function(){
    // 호텔 체크인 validation
    $('#addReservation').click(function(){
        // validation check
        var datepicker = $('#datepicker').val();
        datepicker = $.trim(datepicker);
        if(datepicker == ""){
            alert("체크인 날짜를 선택해주세요.");
            return; // 밑의 내용은 실행이 되지 않는다.
        }
    });
});