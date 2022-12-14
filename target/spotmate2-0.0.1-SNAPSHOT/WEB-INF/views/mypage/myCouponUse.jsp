<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
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
<link rel="icon" type="image/png" sizes="192x192" href="${pageContext.request.contextPath}/assets/images/common/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/images/common/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="${pageContext.request.contextPath}/assets/images/common/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/assets/images/common/favicon-16x16.png">
<link rel="manifest" href="${pageContext.request.contextPath}/assets/images/common/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="${pageContext.request.contextPath}/assets/images/common/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

<!-- css, js ?????? -->
<link href="${pageContext.request.contextPath}/assets/css/swiper-bundle.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>


<title>myCouponUse</title>

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
					<h3>??????</h3>
					<p>???????????? ????????? ???????????????.</p>

				</header>

				<!-- //section-article -->
				<article class="myPage_article">

					<div class="inputBox">
						<form action="${pageContext.request.contextPath }/mypageJ/myCouponBuy" method="get">
							<input name="maxValue" type="number" value="" placeholder="??????????????????"> <span> - </span> <input name="minValue" type="number" value="" placeholder="??????????????????"> <select name="option1">
								<option value="">??????</option>
								<option value="??????">?????????</option>

							</select> <select name="option2">
								<option value="">?????????</option>
								<option value="S-OIL">S-OIL</option>
								<option value="GS-?????????">GS-?????????</option>
							</select>
							<div class="btns">
								<button type="submit" class="myPage_btnB">????????????</button>
								<a href="${pageContext.request.contextPath }/mypageJ/myPointCharge"><button type="button" class="myPage_btnY">????????? ????????????</button></a>
							</div>
						</form>
					</div>

				</article>

				<!-- //section-article2 -->
				<article class="myPage_article2">
					<h4>????????? ?????????</h4>
					<form action="${pageContext.request.contextPath }/mypageJ/couponPurchase" method="post">
						<div class="myPage_couponUse">
							<img class="myPage_coupon" src="${cuMap.couponVo.imgsrc}"> <input type="hidden" name="couponNo" value="${cuMap.couponVo.couponNo}"> <input type="hidden" name="point" value="${cuMap.couponVo.point}">
							<div class="myPage_couponEx">
								<div>
									<p>????????????</p>
								</div>
								<ul>
									<li>??????????????? ?????????????????????.</li>
									<li>???????????????????????? ??????????????? ???????????????.</li>
									<li>????????????????????? ????????? ?????? ??????????????? ??????????????? ????????? ???????????????.</li>
								</ul>
							</div>
							<!--    <div class="myPage_mapSearch">
								<div class="myPage_mapPicto"></div>
								<span>????????? ??????????????? ?????? ??????</span>
							</div>
							<div id="map" class="myPage_map"></div>
							<!-- <div class="myPage_mapAddress">
							<p class="myPage_mapAddress1">?????????</p>
							<p class="myPage_mapAddress2">?????????????????????</p>
							<p class="myPage_mapAddress3">?????? ????????? ??????????????? 1753</p>
						</div>-->
							<div class="myPage_couponExchange">
								<span id="btn-modal">????????? ?????? ????????????</span>
								<div id="modal" class="modal-overlay">
									<div class="modal-window">
										<div class="close-area">X</div>
										<div class="modal-content clear">
											<img class="modal-img" src="/assets/images/ico_boxgift.png">
											<div class="modal-text">
												<c:if test="${cuMap.totalPoint >= cuMap.couponVo.point}">
													<p>?????? ???????????? ??????????????? ???????????????</p>
													<p>????????? ?????????????????????????</p>
													<p class="modal-second-p"></p>
												</c:if>
												<c:if test="${cuMap.totalPoint < cuMap.couponVo.point}">
													<p>
														<br>???????????? ???????????????.
													</p>
													<p class="modal-second-p"></p>
												</c:if>
											</div>
										</div>
										<c:if test="${cuMap.totalPoint >= cuMap.couponVo.point}">
											<div class="modal-button-div">
												<button id="back-btn" type="button">????????????</button>
												<button id="sub-btn" type="submit">????????????</button>
											</div>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</form>
				</article>
			</section>
		</main>

		<!-- //banner & footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>

</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8e7c67039e0100811551e543e8f330e8&libraries=services,clusterer,drawing"></script>
<script>
///////////////????????????????????????
$("#back-btn").on("click", function() {
	location.replace("/mypageJ/myCouponBuy");
})

var modal = document.getElementById("modal")
function modalOn() {
    modal.style.animation = "fade-in 0.5s"
    modal.style.display = "flex"
}
function isModalOn() {
    return modal.style.display === "flex"
}
function modalOff() {
   	modal.style.animation = "fade-out 0.5s"
	$("body").css("overflow-y","visible");//body ???????????? ??????
    setTimeout(function(){modal.style.display = "none"},501);
}
var btnModal = document.getElementById("btn-modal")
btnModal.addEventListener("click", e => {
	  $(".modal-overlay").css({
          "top": (($(window).height()-$(".modal-overlay").outerHeight())/2+$(window).scrollTop())+"px",
          "left": (($(window).width()-$(".modal-overlay").outerWidth())/2+$(window).scrollLeft())+"px"
          //???????????? ???????????? ????????? ?????? ?????? ????????? ????????? ?????? ????????? ?????? ???????????? ????????? CSS ??????
       }); 
	  
      $(".modal-window").css("display","block"); //?????? ????????? display block
      $(".modal-overlay").css("display","block"); //????????? display block
      
      $("body").css("overflow","hidden");//body ???????????? ?????????
      modalOn()
  	})
var closeBtn = modal.querySelector(".close-area")
closeBtn.addEventListener("click", e => {
	modalOff()
})
modal.addEventListener("click", e => {
    const evTarget = e.target
    if(evTarget.classList.contains("modal-overlay")) {
        modalOff()
    }
})
window.addEventListener("keyup", e => {
    if(isModalOn() && e.key === "Escape") {
        modalOff()
    }
})



</script>

</html>

