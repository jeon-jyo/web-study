<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>writeForm</title>
<link href="assets/css/mysite.css" rel="stylesheet" type="text/css">
<link href="assets/css/board.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrap">

		<!-- header -->
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<!-- //header -->

		<div id="nav">
			<ul class="clearfix">
				<li><a href="">입사지원서</a></li>
				<li><a href="board?action=list">게시판</a></li>
				<li><a href="">갤러리</a></li>
				<li><a href="">방명록</a></li>
			</ul>
		</div>
		<!-- //nav -->

		<div id="container" class="clearfix">
			<div id="aside">
				<h2>게시판</h2>
				<ul>
					<li><a href="">일반게시판</a></li>
					<li><a href="">댓글게시판</a></li>
				</ul>
			</div>
			<!-- //aside -->

			<div id="content">

				<div id="content-head">
					<h3>게시판</h3>
					<div id="location">
						<ul>
							<li>홈</li>
							<li>게시판</li>
							<li class="last">일반게시판</li>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				<!-- //content-head -->
	
				<div id="board">
					<div id="writeForm">
						<!--
							action="/board" 하면 여기서부터 시작
							-> http://localhost:8000/board
							
							action="board" 하면 path 뒤부터 시작
							-> http://localhost:8000/MySite3/board
						-->
						<form action="board" method="get">
						
							<input type="hidden" name="action" value="write">
							
							<!-- 제목 -->
							<div class="form-group">
								<label class="form-text" for="txt-title">제목</label>
								<input type="text" id="txt-title" name="title" value="" placeholder="제목을 입력해 주세요">
							</div>
						
							<!-- 내용 -->
							<!-- textarea 는 value 없이 기본값은 textarea 태그 사이에 -->
							<div class="form-group">
								<textarea id="txt-content" name="content"></textarea>
							</div>
							
							<a id="btn_cancel" href="board?action=list">취소</a>
							<button id="btn_add" type="submit">등록</button>
							
						</form>
						<!-- //form -->
					</div>
					<!-- //writeForm -->
				</div>
				<!-- //board -->
			</div>
			<!-- //content  -->
		</div>
		<!-- //container  -->

		<!-- footer -->
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
		<!-- //footer -->
	</div>
	<!-- //wrap -->
</body>
</html>