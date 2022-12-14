<%@page import="io.opentelemetry.exporter.logging.SystemOutLogExporter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
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
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/assets/images/common/favicon.ico"
	type="image/x-icon">
<link rel="icon"
	href="${pageContext.request.contextPath}/assets/images/common/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon" sizes="57x57"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="${pageContext.request.contextPath}/assets/images/common/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="${pageContext.request.contextPath}/assets/images/common/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="${pageContext.request.contextPath}/assets/images/common/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="${pageContext.request.contextPath}/assets/images/common/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath}/assets/images/common/favicon-16x16.png">
<link rel="manifest"
	href="${pageContext.request.contextPath}/assets/images/common/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage"
	content="${pageContext.request.contextPath}/assets/images/common/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<!-- css, js ?????? -->
<link
	href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/style.css"
	rel="stylesheet" />
<script
	src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>

<title>myDriverMain2</title>

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
					<h3>???????????? ??????</h3>
					<span style="font-weight: bold">?????????????????? ??????????????? ?????? ????????? ??????
						???????????????.</span>
					<ul>
						<li>?????? ???????????? ?????? ?????????????????? ????????? ???????????????.</li>
						<li>??????????????? ???????????? ????????? ????????? ???????????? ??? ????????????.</li>
					</ul>
				</header>


				<article class="myPage_article2">
					<h4>????????????/????????????</h4>

					<div class="DriverenrollForm">
						<form action="${pageContext.request.contextPath }/modify"
							method="post" enctype="multipart/form-data">

							<div class="DL_info">

								<h5>???????????? ??????</h5>
								<!-- Driver License -->
								<table>
									<tr align="left">
										<td><label for="username">??????*</label></td>
										<td><input value="${dlvo.username}" name="username"
											id="username" placeholder="?????????" type="text"></td>
									</tr>

									<tr align="left">
										<td><label for="userBD">????????????*</label></td>
										<td><input value="${dlvo.userBD}" name="userBD"
											id="userBD" placeholder="19900805" type="text"></td>
									</tr>
									<tr align="left">
										<td><label for="dl">??????????????????*</label></td>
										<td><input value="${dlvo.dl}" name="dl" id="dl"
											placeholder="????????????????????????" type="text"></td>
									</tr>
									<tr align="left">
										<td><label for="licensetype">??????*</label></td>
										<td><input value="${dlvo.licensetype}" name="licensetype"
											id="licensetype" placeholder="?????? 1???" type="text"></td>
									</tr>

								</table>
							</div>


							<div class="DC_info">
								<h5>?????? ??????</h5>
								<div>
									<div class="right_smallbtn">
										<input type="file" name="file" id="input-file"
											class="smallbtn"> <label class="smallbtn"
											for="input-file"> <span>????????????</span></label>
									</div>

									<br> <img align="left" id="carImg" class="file_d"
										alt="????????????"
										src="${pageContext.request.contextPath}/upload/${dlvo.c_file}"
										width="732px" height="272px">
								</div>



								<table>

									<tr align="left">
										<td><label for="c_Model">???????????????*</label></td>
										<td><input value="${dlvo.c_Model}" name="c_Model"
											id="c_Model" placeholder="????????? ??????3" type="text"></td>
									</tr>
									<tr align="left">
										<td><label for="c_num">??????????????????*</label></td>
										<td><input value="${dlvo.c_num}" name="c_num" id="c_num"
											placeholder="770???7777" type="text"></td>
										<td><button type="button" style="font-weight: bold"
												class="smallbtn" id="carAuth">????????????</button></td>
									</tr>
									<tr align="left">
										<td><label for="c_color">????????????*</label></td>
										<td><input value="${dlvo.c_color}" name="c_color"
											id="c_color" placeholder="?????????" type="text"></td>
									</tr>
									<tr align="left">
										<td><label for="num_PA">??????????????????*</label></td>
										<td><input value="${dlvo.num_PA}" name="num_PA"
											id="num_PA" placeholder="2" type="text"></td>
									</tr>
								</table>

							</div>



							<div class="DC_etc">
								<h5>?????? ????????????</h5>
								<div class="detail">

									<label class="detailtext"> <input class="detail_ckbox"
										type="checkbox" name="ch_type" id="Dformcheckbox" value="1"
										<c:forEach items="${dlvo.ch_type}"										
											var="target">
											<c:if test="${1 == target}">
													checked="checked"
												</c:if>
										</c:forEach>>
										&nbsp;&nbsp;????????????
									</label> <label class="detailtext"> <input class="detail_ckbox"
										type="checkbox" name="ch_type" id="Dformcheckbox" value="2"
										<c:forEach items="${dlvo.ch_type}"										
											var="target">
											<c:if test="${2 == target}">
													checked="checked"
												</c:if>
										</c:forEach>>
										&nbsp;&nbsp;??????????????????
									</label> <label class="detailtext"> <input class="detail_ckbox"
										type="checkbox" name="ch_type" id="Dformcheckbox" value="3"
										<c:forEach items="${dlvo.ch_type}"										
											var="target">
											<c:if test="${3 == target}">
													checked="checked"
												</c:if>
										</c:forEach>>
										&nbsp;&nbsp;????????????
									</label> <label class="detailtext"> <input class="detail_ckbox"
										type="checkbox" name="ch_type" id="Dformcheckbox" value="4"
										<c:forEach items="${dlvo.ch_type}"										
											var="target">
											<c:if test="${4 == target}">
													checked="checked"
												</c:if>
										</c:forEach>>
										&nbsp;&nbsp;????????? ?????? ??????
									</label> <label class="detailtext"> <input class="detail_ckbox"
										type="checkbox" name="ch_type" id="Dformcheckbox" value="5"
										<c:forEach items="${dlvo.ch_type}"										
											var="target">
											<c:if test="${5 == target}">
													checked="checked"
												</c:if>
										</c:forEach>>
										&nbsp;&nbsp;????????? ?????? ??????
									</label>
								</div>
							</div>
							<br>


							<div class="memo">
								<h5>?????????????????? ??????????????????*</h5>
								<textarea name="introduce">${dlvo.introduce}</textarea>
							</div>

							<input type="submit" placeholder="????????????" class="DForm_enrollbtn" style="margin-left: 277px;"
							>

						</form>
					</div>
				</article>


			</section>

		</main>
	</div>


	<!-- //banner & footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>



</body>

<script type="text/javascript">
	//?????? ????????? ????????????
	$("#input-file").on("change", function(e) {
		var tmp = e.target.files[0];
		var img = URL.createObjectURL(tmp);
		$("#carImg").attr("src", img);
	});

	//?????? ?????? ?????? ??????
	$("#carAuth").on("click", function() {
		var name = $("#username").val();
		var cnum = $("#c_num").val();

		console.log(name)
		console.log(cnum)
		$.ajax({
			url : "${pageContext.request.contextPath}/carAuth",
			type : "post",
			contentType : "application/json",
			async : false,
			data : JSON.stringify({
				name : name,
				cnum : cnum
			}),
			dataType : "json",
			success : function(result) {
				console.log("result,", result)
				if (result == -1) {
					alert("???????????????");
					carEnrollYN = false;
				} else {
					alert("??????????????????");
					carEnrollYN = true;
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	})

	let bCarAuth = false;

	function isCarAuth() {
		if (!bCarAuth) {
			alert("??????????????? ?????? ????????????.");
			//return false;
		}

		/* document.getElementById("myform").submit(); */
	}
</script>

</html>