<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<title>??????????????? ??????</title>
</head>
<body>
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<div class="inner">
	<div class="top">
			<div class="clear">
				<img src="/assets/images/ico_boxgift.png">
				
				<div class="matedesc">
					<span>SPOT HITCHHIKE ?????????</span>
					<p>?????? ?????? ???????????? ${dwVo.fare}?????????.</p>
				</div>
			</div>
			<ul>
				<li>???????????? ?????? ???????????? ${dwVo.dur},&nbsp; ${dwVo.dis}</li>
				<li>??????????????? SPOT HITCHHIKE ????????? ???????????? ????????? ???????????????.</li>
			</ul>
		</div>
	<div class="mid">
		<form action="/hitchWriteInsert" method="post">
		<input type="hidden" name="type" value="hitchhike">
			<p>???????????? ????????? ?????????????????????</p>
			<div class="f-sec">
				<span>?????? ??????</span><input type="text" name="sdate1" value="${dwVo.sdate1}" id="hitch-s-date""><br>
				<span>?????? ??????</span><input type="text" name="stime1" value="${dwVo.stime1}" id="hitch-s-time">
			</div>
			<div class="s-sec">
				<p>?????????????????? ?????? ???????????????</p>
				
				<div id="input-div">
				<img src="assets/images/map_line_02.png">
				<table>
					<tr>
						<td><input type="text" name="splace1" value="${dwVo.splace1}" id="s-addr" class="s-addr"></td>
						<td><input type="hidden" name="slat1" value="${dwVo.slat1}" class="s-lat"></td>
						<td><input type="hidden" name="slng1" value="${dwVo.slng1}" class="s-lng"></td>
					</tr>
					<tr>
					 	<td><input type="text" name="eplace1" value="${dwVo.eplace1}" id="e-addr" class="e-addr"></td>
						<td><input type="hidden" name="elat1" value="${dwVo.elat1}" class="e-lat"></td>
						<td><input type="hidden" name="elng1" value="${dwVo.elng1}" class="e-lng"></td>
				</table>
				<input type="hidden" name="latlng1" value="${dwVo.latlng1}" id="latlng">
				</div>
			</div>
			<div id="map"></div>
			<div class="t-sec">
				<p>?????? ????????? ?????? ??? *</p>
				<input name="people" value="${dwVo.people}" type="text">
				<input type="hidden" name="fare" value="${dwVo.fare}">
				<input type="hidden" name="intfare" value="${dwVo.intfare}">
				<input type="hidden" name="dur" value="${dwVo.dur}">
				<input type="hidden" name="dis" value="${dwVo.dis}">
				<p>?????? ????????????</p>
				<table>
					<tr>
					<c:if test="${dwVo.nosmoke != null}">
						<td><div style="background: url(/assets/images/drop-opacity.png); background-repeat: no-repeat; width:30px; height: 30px; float:left;"></div><span>????????????</span></td>
						<td><input type="hidden" name="nosmoke" value="${dwVo.nosmoke}"></td>
						</c:if>
					</tr>
					<tr>
					<c:if test="${dwVo.femaledriver != null}">
						<td><div style="background: url(/assets/images/boy.png); background-repeat: no-repeat; width:30px; height: 30px; float:left;"></div><span>?????? ????????????</span></td>
						<td><input type="hidden" name="femaledriver" value="${dwVo.femaledriver}"></td>
						</c:if>
					</tr>
					<tr>
						<c:if test="${dwVo.pet != null}">
						<td><div style="background: url(/assets/images/paws01.png); background-repeat: no-repeat; width:30px; height: 30px; float:left;"></div><span>????????????</span></td>
						<td><input type="hidden" name="pet" value="${dwVo.pet}"></td>
						</c:if>
					</tr>
					<tr>
						<c:if test="${dwVo.phonecharge != null}">
						<td><div style="background: url(/assets/images/ico_plug.png); background-repeat: no-repeat; width:30px; height: 30px; float:left;"></div><span>????????? ?????? ??????</span></td>
						<td><input type="hidden" name="phonecharge" value="${dwVo.phonecharge}"></td>
						</c:if>
					</tr>
					
					<tr>
						<c:if test="${dwVo.trunk != null}">
						<td><div style="background: url(/assets/images/ico_toolbox.png); background-repeat: no-repeat; width:30px; height: 30px; float:left;"></div><span>????????? ?????? ??????</span></td>
						<td><input type="hidden" name="trunk" value="${dwVo.trunk}"></td>
						</c:if>
					</tr>
					
				</table>
				<p>?????????????????? ??????????????????*</p>
				<textarea class="introduce" name="introduce" readonly>${dwVo.introduce}</textarea>
				<p>?????????????????? ???????????? ?????? ???????????????</p>
				<textarea class="comments" name="comments">${dwVo.comments}</textarea>
			</div>
		<button type="button" id="btn-modal">????????????</button>
		    <div id="modal" class="modal-overlay">
		        <div class="modal-window">
		            <div class="close-area">X</div>
		            <div class="modal-content clear">
		            	<img class="modal-img" src="/assets/images/ico_boxgift.png">
		            	<div class="modal-text">
			                <p>?????? ?????? ???????????? +${dwVo.fare}?????????.</p>
			                <p class="modal-second-p">*????????? ???????????? ?????? ????????? ???????????????.</p>
		                </div>
		            </div>
		            <div class="modal-button-div">
			                <button id="back-btn" type="button">????????????</button>
			                <button id="sub-btn" type="submit">????????????</button>
	                </div>
		        </div>
		    </div>
		</form>
		
	</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>


</body>
<script type="text/javascript">
$("#back-btn").on("click", function() {
	location.replace("/hitchWrite");
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
    
    
    
$(document).ready(function() {
	$("input:text").attr("readonly", true);
});

	var slat = $(".s-lat").val();
	var slng = $(".s-lng").val();
	var elat = $(".e-lat").val();
	var elng = $(".e-lng").val();
	var Strlatlng = $("#latlng").val().replace('[', '').replace(']','');
	var latlng = Strlatlng.split(',');
	$("#latlng").val(latlng);
	$("#map").attr("style","width:720px; height: 300px; margin:0px 0px 100px 0px;");
	var bounds = new kakao.maps.LatLngBounds();
	bounds.extend(new kakao.maps.LatLng(slat, slng));
	bounds.extend(new kakao.maps.LatLng(elat, elng));
	var mapContainer = document.getElementById('map'), // ????????? ????????? div 
	mapOption = { 
	    center: new kakao.maps.LatLng(slat, slng), // ????????? ????????????
	    level: 4 // ????????? ?????? ??????
	};  
	var map = new kakao.maps.Map(mapContainer, mapOption); // ????????? ???????????????
	map.setBounds(bounds);
	var positions = [
		{
			latlng: new kakao.maps.LatLng(slat, slng)
		},
		{
			latlng: new kakao.maps.LatLng(elat, elng)
		}
	];
	var iwContent;
	for (var i=0;i<2;i++) {
		if ( i==0 ) {
			iwContent = '<div style="font-size:14px; padding:5px 0px 5px 30px;">????????? ?????????</div>'; 
		} else if (i==1){
			iwContent = '<div style="font-size:14px; padding:5px 0px 5px 30px;">????????? ?????????</div>';
		}
		var infowindow = new kakao.maps.InfoWindow({
		    content : iwContent
		});
		var min = Math.ceil(1),
	    	max = Math.floor(14),
	    	rnd = Math.floor(Math.random() * (max - min)) + min;
		var imageSrc = '/assets/images/pin_'+rnd+'.png', // ?????????????????? ???????????????    
			imageSize = new kakao.maps.Size(48, 48); // ?????????????????? ???????????????
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
		var marker = new kakao.maps.Marker({
			position: positions[i].latlng,
			map: map,
			image: markerImage
		});
		infowindow.open(map, marker);
	}
	
	//?????? ???????????? ?????? ???????????????. ??? ???????????? ????????? ?????? ???????????????
	//????????? ?????? json ???????????? for??? ???????????? ???????????? ??????
	var linePath = [
		new kakao.maps.LatLng(slat, slng),
		];
	for (var i=0; i<latlng.length; i++) {
			if (i == latlng.length) {
				linePath.push(new kakao.maps.LatLng(elat,elng));
				break;
			}
			linePath.push(new kakao.maps.LatLng(latlng[i+1],latlng[i]),);
			i++;
		};
	
	//????????? ????????? ?????? ???????????????
	var polyline = new kakao.maps.Polyline({
		path: linePath, // ?????? ???????????? ???????????? ?????????
		strokeWeight: 5, // ?????? ?????? ?????????
		strokeColor: '#4454a1', // ?????? ???????????????
		strokeOpacity: 1, // ?????? ???????????? ????????? 1?????? 0 ????????? ????????? 0??? ??????????????? ???????????????
		strokeStyle: 'solid', // ?????? ??????????????????
		map: map
	});
</script>
</html>