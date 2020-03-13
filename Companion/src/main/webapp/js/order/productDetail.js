/*
$(function{
			
			 	form=$('#myModal form');
		   모달 기능 부분 버튼 눌렀을 때!
				form.submit(function(){ 
					if($('#myModal').find('form').attr('method')=='post'){
						$('#myModal').modal('hide');
						insertOne();
					}else{
						updateOne();
					}
					return false;
					});  
		})
*/
$(document).on('click','#shoppingCart',function(){
	/* alert("click"); */
	 $('#myModal').modal('show'); 
})
