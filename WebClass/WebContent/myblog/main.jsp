<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Blog</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/style.css">
<script>
	function menu_over(e) {
		e.setAttribute("class", "nav-item active"); // <li class="nav-item active"
	}
	function menu_out(e) {
		e.setAttribute("class", "nav-item");
	}
</script>




</head>
<body>
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark" id="nav">
		<a class="navbar-brand" href="#">Blog</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="menu_out(this);"><a class="nav-link"
					href="#section1">Introduce<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="menu_out(this);"><a class="nav-link"
					href="#section2">Favorite</a></li>
				<li class="nav-item" onmouseover="menu_over(this);"
					onmouseout="menu_out(this);"><a class="nav-link"
					href="#section3">Hobby</a></li>
			</ul>
		<%-- 세션이 없는 경우 --%>
			<%
				UserVO user = (UserVO) session.getAttribute("user");
				if (user == null) {
			%>
			<a class="text-bold text-white" style="text-decoration: none"
				href="/WebClass/login">Sign in</a> <span
				class="text-bold text-white">&nbsp; or &nbsp;</span> <a
				class="text-bold text-white" style="text-decoration: none" href="/WebClass/signup">Sign
				up</a>
			<%
				} else {
			%>

			<%-- 세션이 있는 경우 --%>
			<ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
				<li class="nav-item dropdown"><a
					class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
					id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <%=user.getName()%>님
				</a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="bd-versions">
						<form action="/WebClass/logout" method="post">
							<button type="submit" class="dropdown-item">Sign out</button>
						</form>
						<div class="dropdown-divider"></div>
						<button type="button" class="dropdown-item">Action1</button>
						<button type="button" class="dropdown-item">Action2</button>
					</div></li>
			</ul>
			<%
				}
			%>

			&nbsp; &nbsp;

			<!-- Button trigger modal -->
			<button type="button" class="btn btn-outline-dark"
				data-toggle="modal" data-target="#exampleModal">Join</button>



		</div>

	</nav>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Sign Up</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form class="form-inline my-2 my-lg-0" id="signForm">

					<div class="modal-body">
						학년 :&nbsp;
						<div class="btn-group" data-toggle="buttons" id="year">
							<label class="btn btn-secondary active"> <input
								type="radio" checked> 1학년
							</label> <label class="btn btn-secondary"> <input type="radio">
								2학년
							</label> <label class="btn btn-secondary"> <input type="radio">
								3학년
							</label>
						</div>


						&nbsp;&nbsp;&nbsp;반 :&nbsp; <select class="custom-select"
							id="clas">
							<option value="1" selected>1반</option>
							<option value="2">2반</option>
							<option value="3">3반</option>
							<option value="4">4반</option>
							<option value="5">5반</option>
							<option value="6">6반</option>
						</select> <br> 번호 :&nbsp; <input class="form-control mr-sm-2"
							type="number" placeholder="번호" aria-label="번호" id="numb" required>
						<br> 이름 :&nbsp; <input class="form-control mr-sm-2"
							type="text" placeholder="이름" aria-label="이름" id="name" required>

					</div>


					<div class="modal-footer">

						<button type="submit" class="btn btn-primary">Sign in</button>

						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="modal" id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Login</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<section>

		<div class="sections" style="padding: 100px">
			<br> <br> <br> <br> <br> <br>
			<h1 style="text-align: center; color: white;">
				Welcome<br> to<br>my blog
			</h1>
			\ <br> <br>
			<h3 style="text-align: center; color: white;">안녕하세요, 박지교님의 블로그에
				방문하신 것을 환영합니다.</h3>
		</div>

	</section>

	<section class="sections" id="section1">
		<h1 style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;Introduce</h1>
		<div class="s-inner" style="text-align: center;">
			<br>
			<h1 style="text-align: left;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I am ...</h1>
			<h2>박지교</h2>
			<h3>
				한국 디지털 미디어 고등학교 재학중 <br> 해킹방어과 15기 <br> 곧고삼 <br> 일산
				거주 <br> 현 안산 거주중 ... <br> 집가고싶다
			</h3>
		</div>

	</section>
	<section class="sections" id="section2">
		<h1 style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;Favorite</h1>
		<div class="s-inner" style="text-align: center;">
			<br>
			<h1 style="text-align: left;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I love ...</h1>
			<div style="text-align: center; padding-top: 50px" class="div-img">
				<img src="../image/mix.png" alt="Eat">
				<h3 style="margin-left: 70px; padding-top: 40px;">ariana grande
					&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; girl's generation</h3>
			</div>



		</div>

	</section>
	<section class="sections" id="section3">
		<h1 style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;Hobby</h1>
		<div class="s-inner" style="text-align: center;">
			<br>
			<h1 style="text-align: left;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I do ...</h1>
			<h3>
				음악듣기 <br> 노래하기 <br> 그림그리기 <br> 게임하기 <br> 웹서핑하기 <br>
				맛집탐방
			</h3>
		</div>

	</section>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>
	<script src="../js/script.js"></script>



</body>
</html>