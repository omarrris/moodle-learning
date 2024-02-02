
$(document).on("click","#startQuiz", function(){
	  var thisId = $(this).data('id');
	  Swal.fire({
      title: 'Are you sure?',
      text: 'You want to take this exam now, your time will start automaticaly',
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Yes, start now!'
 }).then((result) => {
  if (result.value) {
         $.ajax({
          type : "post",
          url : "query/selExamAttemptExe.php",
          dataType : "json",  
          data : {thisId:thisId},
          cache : false,
          success : function(data){
            if(data.res == "alreadyExam")
            {
              Swal.fire(
                'Already Taken ',
                'you already take this exam',
                'error'
              )
            }
            else if(data.res == "takeNow")
            {
              window.location.href="home.php?page=exam&id="+thisId;
              return false;
            }
          },
          error : function(xhr, ErrorStatus, error){
            console.log(status.error);
          }

        });




  }
 });
	return false;
})



