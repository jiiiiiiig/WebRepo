$(document).ready(function() {
	$('#loginForm').submit(
			function(event) {
				// 자동 submit 막기
				event.preventDefault();

				// id pwd 가져오기
				var id = $('#id').val();
				var pwd = $('#pwd').val();
				console.log(id, pwd);

				// 서버로 post 전송
				$.post("http://httpbin.org/post", {
					"id" : id,
					"pwd" : pwd
				}, function(data) {
					// alert(data.form.id + '님 로그인되었습니다.');
					var myModal = $('#myModal');
					myModal.modal();
					myModal.find('.modal-body').text(
							data.form.id + '님 로그인되었습니다.');
				});

			});

	$('#signForm').submit(
			function(event) {
				// 자동 submit 막기
				event.preventDefault();

				// id pwd 가져오기
				var year = $('#year').val();
				var clas = $('#clas').val();
				var numb = $('#numb').val();
				var name = $('#name').val();
				console.log(year, clas, numb, name);

				// 서버로 post 전송
				$.post("http://httpbin.org/post", {
					"year" : year,
					"clas" : clas,
					"numb" : numb,
					"name" : name
				}, function(data) {
					$('#signForm').modal('hide');
					// alert(data.form.id + '님 로그인되었습니다.');
					var myModal = $('#myModal');
					myModal.modal();
					myModal.find('.modal-body').text(
							data.form.name + '님 회원가입되었습니다. 로그인해주세요.');
				});

			});
	$("a").on('click', function(event) {

	    // Make sure this.hash has a value before overriding default behavior
	    if (this.hash !== "") {
	      // Prevent default anchor click behavior
	      event.preventDefault();

	      // Store hash
	      var hash = this.hash;

	      // Using jQuery's animate() method to add smooth page scroll
	      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
	      $('html, body').animate({
	        scrollTop: $(hash).offset().top
	      }, 800, function(){

	        // Add hash (#) to URL when done scrolling (default click behavior)
	        window.location.hash = hash;
	      });
	    } // End if
	  });
});


// 간단하게 쓰기 document.ready 안쓰고 하는법ㅂ.
$(function() {

});
