<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SPOTMATE</title>
	<meta name="title" content="">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="keywords" content="">
	<meta property="og:type" content="website">
	<meta property="og:title" content="">
	<meta property="og:description" content="">
	<meta property="og:url" content="">
	<meta property="og:image" content="">
	<meta property="og:author" content="">
	<meta property="kakao:title" content="">
	<meta property="kakao:description" content="">
	
	<!-- favicon -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/common/favicon.ico" type="image/x-icon">
	<link rel="icon" href="${pageContext.request.contextPath}/assets/images/common/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/assets/images/common/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="${pageContext.request.contextPath}/assets/images/common/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/images/common/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="${pageContext.request.contextPath}/assets/images/common/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/images/common/favicon-16x16.png">
	<link rel="manifest" href="${pageContext.request.contextPath}/assets/images/common/manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="${pageContext.request.contextPath}/assets/images/common/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">
	
	<!-- css, js ?????? -->
	<link href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css" rel="stylesheet" >
	<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>
	
	<title>myReservationDriverMain</title>
	
</head>

<body>

	<div id="wrap">

		<!-- //header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- //topNav -->
		<c:import url="/WEB-INF/views/includes/myPageTopNav.jsp"></c:import>

		<!-- //myPage main contents -->
		<main class="contents">

			<!-- //sideNav  -->
			<c:import url="/WEB-INF/views/includes/myPageSideNav.jsp"></c:import>
			
			<!-- //section -->
			<section class="myPage_selection">
				<!-- //section-header -->
				<header class="myPage_header">
					<h3>?????? ??????</h3>
					<p>??????????????? ????????? ???????????? ??????????????? ????????? ????????? ?????? ?????? ??????????????????.</p>
					<ul>
						<li>???????????? ??????????????? ???????????? ???????????? ???????????????.</li>
						<li>?????? ?????? ????????? ?????? ??????????????? ????????? ???????????? ?????? ?????? ???????????? ???????????????.</li>
					</ul>
				</header>
				<table>
					<tr>
						<div class="topnav">
							<ul>
								<li><a class="active" href="/myReservationDriverMain/1">DRIVER ?????? ?????? ??????</a></li>
							</ul>
							<ul>
								<li><a href="/myReservationUserMain/1">USER ?????? ?????? ??????</a></li>
							</ul>
						</div>
					</tr>
					<tr>
						<article class="myPage_article">


							<div class="inputBox_r">
								
								<form action="/myReservationDriverMain/1" method="get">
									<input name="sdate" id="startDate" type="date" value=""> <span> ~ </span> <input name="edate" id="endDate" type="date" value="">
		
									<!-- <label for="lecture">??????</label> -->
									<select name="type" id="option1" class="form-select" aria-label="Default select example">
										<option value=selected>??????</option>
										<option value="seasonTicket">???????????????</option>
										<option value="hitchhike">???????????????</option>
										<option value="mate">?????????</option>
										<option value="carpool">??????1??????</option>
										<option style="color: red" value="penalty">?????????</option>
									</select>
		
									<!-- <label for="lecture">????????????</label> -->
									<select name="status" id="option2" class="form-select" aria-label="Default select example">
										<option value=selected>??????</option>
										<option id="out" value="">????????????</option>
										<option id="in" value="">????????????</option>
									</select>
		
									<button type="submit" class="myPage_btnB">????????????</button>
									<a href="/driver"><button type="button" class="myPage_btnC">?????????????????? ></button></a>
								</form>
							</div>
<!--  ??????-->
						</article>
					</tr>

				</table>


				<!-- //section-article -->

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<h4>?????? ?????? ??????</h4>
					<table>
						<thead>
							<tr>
								<th>??????</th>
								<th>??????</th>
								<th>??????</th>
								<th>?????????</th>
								<th>?????????</th>
								<th>???????????????</th>
								<th></th>
								<th>??????</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${uMap.mL}" var="ui" varStatus="status">
							<tr id="box${ui.mateNo}">
								<td>${ui.rn}</td>
								<td>${ui.type}</td>
								<td>${ui.regDate}</td>
								<td>${ui.startPlace}</td>
								<td>${ui.endPlace}</td>
								<td>${ui.convertPoint}</td>
								<td><input type="hidden" class="status" value="${ui.status}"></td>
								<c:choose>
								<c:when test="${ui.status == 'ride'}">
								<td>
									<button type="button" class="btn_review" onclick="msg(${ui.mateNo})">????????????</button>
								</td>
								</c:when>
								<c:otherwise>
								<c:choose>
								<c:when test="${ui.type=='?????? ?????????'}">
									<td>
										<a href="/spotHitchhikedeep/${ui.mateNo}"><button type="button" class="btn_review">?????????</button></a>
									</td>
								</c:when>
								<c:when test="${ui.type=='?????? 1??????' || ui.type=='?????? ?????????'}">
									<td>
										<a href="/spotCarpoolDeep/${ui.mateNo}"><button type="button" class="btn_review">?????????</button></a>
									</td>
								</c:when>
								<c:when test="${ui.type=='?????????'}">
									<td>
										<a href="/mateDeep/${ui.mateNo}"><button type="button" class="btn_review">?????????</button></a>
									</td>
								</c:when>
								</c:choose>
								</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<div class="reserv-paging">
						<ul>
							<c:if test="${uMap.prev == true}">
							<li><a href="/myReservationDriverMain/1"> <img class="myPage_PagePicto" src="/assets/images/chevron-double-left.png">
								</a></li>
								<li><a href="/myReservationDriverMain/${crtPage-1}"> <img class="myPage_PagePicto" src="/assets/images/chevron-left.png">
								</a></li>
							</c:if>
							<c:forEach begin="${uMap.startPageNum}" end="${uMap.endPageNum}" step="1" var="page">
								<c:choose>
									<c:when test="${uMap.crtPage == page}">
										<li class="active"><a href="/myReservationDriverMain/${page}">${page}</a></li>	
										<input type="hidden" value="${page}" class="crtPage">
									</c:when>
									<c:otherwise>
										<li><a href="/myReservationDriverMain/${page}">${page}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${uMap.next == true}">					
								<li><a href="/myReservationDriverMain/${uMap.crtPage+1}"> <img class="myPage_PagePicto" src="/assets/images/chevron-right.png">
								</a></li>
								<li><a href="/myReservationDriverMain/${uMap.endPageNum}"> <img class="myPage_PagePicto" src="/assets/images/chevron-double-right.png">
							</a></li>
							</c:if>
						</ul>
					</div>
				</article>
			</section>
		</main>


		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>
<script>
document.getElementById("startDate").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);
document.getElementById("endDate").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);
setTime();
setInterval(function(){setTime()},60000);
			
function setTime(){
	document.getElementById("in").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 16);
	document.getElementById("out").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 16);
}
function msg(mateNo) {
	$.ajax({
		url : "${pageContext.request.contextPath}/endResv",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify(mateNo),
		dataType : "json",
		success : function(result){
			$("#box"+mateNo).remove();
			alert("????????? ?????? ???????????????!")
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}
</script>

</html>