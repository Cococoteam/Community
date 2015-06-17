<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link href='./stylesheets/style.css' rel='stylesheet'>
<script type="text/javascript"></script>
</head>

<body>
	<div class='col-md-12'>
		<!--상단바-->
		<p class="bg-primary" style="">
			<B>CAMPUSBOOK</B>
		</p>
	</div>

	<div class='col-md-12'>
		<div class='col-md-3'>
			<div class="row">
				<div class="col-sm-10 col-md-12">
					<div class="thumbnail" style='height: 100%;'>
						<div class="caption">
							<div class='col-md-12'>
								<div class='col-md-7'>
									<img src='<%=session.getAttribute("img")%>'
										style='width: 100%; height: 120px; margin: 0px 0px 0px -20px;'>
								</div>
								<div class='col-md-5' style='margin: 0px 0px 0px -20px;'>
									</br> </br> </br>
									<h3><%=session.getAttribute("username")%></h3>
								</div>
							</div>
							<ul class="nav nav-pills nav-stacked">
								<center>
									<li role="presentation" style='margin: 40px 0px 0px 0px;'><a
										href="#">시 간 표</a></li>
								</center>
								<li role="presentation" class="dropdown"
									style='margin: 20px 0px 0px 0px;'><center>
										<a class="dropdown-toggle" data-toggle="dropdown" href="#"
											role="button" aria-expanded="false"> 게 시 판 <span
											class="caret"></span>
										</a>
										<ul class="dropdown-menu" role="menu">
											<c:forEach items="${subject_List}" var="list">
												<li role="presentation"><a role="menuitem"
													tabindex="-1" href="/board/${list.subnum}">${list.subject}</a></li>
											</c:forEach>
										</ul>
									</center></li>
								<center>
									<li role="presentation" style='margin: 20px 0px 0px 0px;'><a
										href="/search">친 구 찾 기</a></li>
								</center>
								<center>
									<li role="presentation" style='margin: 20px 0px 0px 0px;'><a
										href="#">친 구 요 청</a></li>
								</center>
								<center>
									<li role="presentation" style='margin: 20px 0px 0px 0px;'><a
										href="#">메 세 지</a></li>
								</center>
								<center>
									<li role="presentation" style='margin: 20px 0px 0px 0px;'><a
										href="/profile">환 경 설 정</a></li>
								</center>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class='col-md-9'>
			<ul class="nav nav-tabs nav-justified">
				<li role="presentation"><a href="/search"><span
						class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
				<li role="presentation"><a href="#"><span
						class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>
				<li role="presentation"><a href="#"><span
						class="glyphicon glyphicon-comment" aria-hidden="true"></span></a></li>
				<li role="presentation"><a href="/profile"><span
						class="glyphicon glyphicon-cog" aria-hidden="true"></span></a></li>
			</ul>
		</div>
		<div class='col-md-9'>
			<!--고정틀말고-->
			<div class="panel panel-default" style='margin: 10px 0px 0px 0px;'>
				<div class="panel-heading">
					<h3>과목 게시판</h3>
					<table class="table">
						<tr>
							<td>과목</td>
							<td>교수님</td>
							<td>시간</td>
							<td>강의 개요</td>
						</tr>
						<!-- 강의 정보 뿌려주기 -->
						<tr>
							<td></td>
							<td>${lecture.professor}</td>
							<td>${lecture.time}</td>
							<td>${lecture.intro}</td>
						</tr>
					</table>
				</div>
				<div class="panel-body" style='height: 100%;'>
					<div style='margin: 3px 0px 0px 0px;'>
						<form>
							<div class="input-group">
								<input type="text" name="content" id="content"
									class="form-control" placeholder="내용"> <span
									class="input-group-btn">
									<button class="btn btn-default" id="write" type="button"
										role="button">글쓰기</button>
								</span>
							</div>
							<!-- /input-group -->
						</form>
					</div>
					<!-- /.row -->
					<table class="table table-striped" id="boardResultArea">
						<tr>
							<td>한줄 수다</td>
							<td>작성자</td>
						</tr>
						<c:forEach items="${board_List}" var="list">
							<tr>
								<td>${list.content}</td>
								<td>${list.id}</td>
							</tr>
						</c:forEach>

					</table>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	$('#write').click(function() {
		$.ajax({
			type : "GET", // GET or POST
			url : '/writeBoard', // URL
			datatype : "xml", // html, xml, json, jsonp, script, text
			data:{content:$('#content').val()},         // parameters as plain object
			error : function(XMLHttpRequest, textStatus, thrownError) {
				alert(textStatus);
			},
			success : function(data,status) { // Ajax complete handelr
				$('#boardResultArea').empty().append(data);
			}
		});
	})
</script>
</html>