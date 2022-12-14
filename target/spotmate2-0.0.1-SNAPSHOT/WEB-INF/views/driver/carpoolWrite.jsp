<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
<title>Insert title here</title>
</head>
<body>
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<div class="inner">
	<div class="top">
		<div><span>SPOT CARPOOL</span>
		<p>?????? ?????? ????????????</p>
		</div>
		<p>?????????????????? ??????????????? ????????? ??????????????????<br>
		?????? ????????? ????????? ????????? ????????? ?????? ??? ???????????????.</p>
		
		<span>* ?????? ????????????</span>
	</div>
	<div class="mid">
		<form action="/carpoolWriteOk" method="post">
			
			<p class="write-font">???????????? ????????? ????????? ?????????????????? *</p>
			<div class="f-sec">
				<span>?????? ??????</span><input type="date" name="sdate1" value="" id="s-date">
				<span class="fsecs-time">?????? ?????? ??????</span><input type="time" name="stime1" value="" id="s-time" onclick="setTime()">
				<br>
				<span>?????? ??????</span><input type="date" name="edate1" value="" id="e-date">
				<span>?????? ?????? ?????? *</span><input id="people" name="people" type="number" min=1 placeholder="1???" value="1"> 
			</div>
			
			<div class="s-sec">
				<p class="write-font">?????????????????? ?????? ????????? ?????????????????? * <br><br> </p>
				
				<div id="input-div">
				<img src="assets/images/map_line_02.png">
				<table>
					<tr>
						<td><input autocomplete="off" type="text" name="splace1" value="" id="s-addr1" class="s-addr" placeholder="???????????? ???????????????" onclick="ssp()"><img class="ae-btn" src="assets/images/arrows_exchange.png"></td>
						<td><input type="hidden" name="slat1" value="" class="s-lat1"></td>
						<td><input type="hidden" name="slng1" value="" class="s-lng1"></td>
					</tr>
					<tr>
					 	<td><input autocomplete="off" type="text" name="eplace1" value="" id="e-addr1" class="e-addr" placeholder="???????????? ???????????????" onclick="sep()"><img class="ic-btn" src="assets/images/ico_close.png"></td>
						<td><input type="hidden" name="elat1" value="" class="e-lat1"></td>
						<td><input type="hidden" name="elng1" value="" class="e-lng1"></td>
						<td><input type="hidden" name="latlng1" value="" id="latlng1"></td>
						<td><input type="hidden" name="intdur" value="" id="intdur"></td>
				</table>
				
				<button type="button" id="finish">?????? ????????????</button>
	
				</div>
			</div>
			
			
			<div id="map"></div>
			<div id="totalInfo"></div>
			<div class="t-sec">
				
				<p class="write-font">?????? ????????????</p>
				<table class="deepsel">
					<c:forEach items="${totalInfo.driverInfo.NAME}" var="name">
						<c:choose>
							<c:when test="${name=='????????????'}">
								<input type="hidden" class="nosmoke" value="">
							</c:when>
							<c:when test="${name=='?????? ????????????'}">
								<input type="hidden" class="female" value="">
							</c:when>
							<c:when test="${name=='????????????'}">
								<input type="hidden" class="pet" value="">
							</c:when>
							<c:when test="${name=='????????? ?????? ??????'}">
								<input type="hidden" class="charge" value="">
							</c:when>
							<c:when test="${name=='????????? ?????? ??????'}">
								<input type="hidden" class="trunk" value="">
							</c:when>
							
						</c:choose>
					</c:forEach>
					<tr>
						<td><input type="checkbox" id="nosmoke" name="nosmoke" value="nosmoke">
						<label for="nosmoke">&nbsp;&nbsp;????????????</label></td>
						<td><input type="checkbox" id="femaledriver" name="femaledriver" value="femaledriver">
						<label for="femaledriver">&nbsp;&nbsp;?????? ????????????</label></td>
						
					</tr>
					<tr>
						<td><input type="checkbox" id="pet" name="pet" value="pet">
						<label for="pet">&nbsp;&nbsp;????????????</label></td>
						<td><input class="td2" type="checkbox" id="phonecharge" name="phonecharge" value="phonecharge">
						<label for="phonecharge">&nbsp;&nbsp;????????? ?????? ??????</label></td>
					</tr>
					<tr>
						<td><input class="td2" type="checkbox" id="trunk"
							name="trunk" value="trunk"><label for="trunk">&nbsp;&nbsp; ????????? ?????? ??????</label></td>
					</tr>
				</table>
				<p class="write-font">?????????????????? ?????????????????? *</p>
				<textarea class="introduce" name="introduce" readonly>${totalInfo.driverInfo.INTRODUCE}</textarea>
				<p class="write-font">?????????????????? ?????? ?????? ?????? ???????????????</p>
				<textarea class="comments" name="comments" placeholder="?????? ?????? ?????? ??????????????? !"></textarea>
			</div>
			<button onclick="moveOk()" id="btn" type="button">????????????</button>
		</form>
		<c:forEach items="${totalInfo.startEnddate}" var="se">
			<input type="hidden" class="start" value="${se.start}">
			<input type="hidden" class="end" value="${se.end}">
		</c:forEach>
	</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>




<script type="text/javascript">

//???????????? ????????? ?????? ?????? ??????
$(document).ready(function() {
	$("input:checkbox").on('click', function() {
	      if ( $(this).prop('checked') ) {
	        $(this).parent().addClass("selected");
	      } else {
	        $(this).parent().removeClass("selected");
	      }
	    });
	if ( $(".nosmoke").val() != null ) {
		$("#nosmoke").attr("checked", "checked;");
	}
	if ( $(".charge").val() != null ) {
		$("#phonecharge").attr("checked", "checked;");
	}
	if ( $(".female").val() != null ) {
		$("#femaledriver").attr("checked", "checked;");
		}
	if ( $(".trunk").val() != null ) {
		$("#trunk").attr("checked", "checked;");
	}
	if ( $(".pet").val() != null ) {
		$("#pet").attr("checked", "checked;");
	}
});


document.getElementById("s-date").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);
document.getElementById("e-date").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);

//?????? ?????????????????? ?????? ????????? ???????????? ???????????? ??????
function setTime() {
	$("#s-time").on("change", function() {
		var temp1 = $("#s-date").val() + " " + $(this).val(); 
		var sdate = new Date(temp1);
		for(var i=0;i<document.getElementsByClassName("start").length;i++) {
			var osDate = new Date(document.getElementsByClassName("start")[i].value);
			var oeDate = new Date(document.getElementsByClassName("end")[i].value);
			if (sdate >= osDate && sdate <= oeDate) {
				alert("?????? ?????? ????????? ????????? ????????????. ????????? ?????? ??????????????????!");
				return;
			}
		}
	});
}

//?????? ????????? ?????????????????? ?????? ??????????????? ???????????? ??????
function moveOk() {
	if ( $("#s-addr1").val() == '' ) {
		alert("???????????? ????????? ??? ?????? ??????????????????!");
		return;
	} else if ( $("#e-addr1").val() == '' ) {
		alert("???????????? ????????? ??? ?????? ??????????????????!")
		return;
	} else if ( $("#people").val() == '' ) {
		alert("?????? ?????? ????????? ??? ?????? ??????????????????!")
		return;
	} else if ( $("#s-time").val() == '' ) {
		alert("?????? ????????? ????????? ??? ?????? ??????????????????!")
		return;
	} else if ( $("#fare").val() == null ) {
		alert("????????? ????????? ??? ?????? ??????????????????!")
		return;
	}
	$("#btn").removeAttr()
	$("#btn").attr("type", "submit")
}

// ????????? ????????? ????????? ??? ??? ?????? ??????
$("#finish").on("click", function() {
	
	if($(".s-lat").val() == "" || $(".s-lng").val() == "" || $(".e-lat").val() == "" || $(".e-lng").val() == "") {
		alert("?????? ?????? ??????????????????");
		return;
	}
	
	var splace = $("#s-addr1").val();
	var eplace = $("#e-addr1").val();
	var slat = $(".s-lat1").val();
	var slng = $(".s-lng1").val();
	var elat = $(".e-lat1").val();
	var elng = $(".e-lng1").val();
	
	$.ajax({
		url : "${pageContext.request.contextPath}/setPath",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify({slat: slat,
			slng: slng,
			elat: elat,
			elng: elng,
			splace: splace,
			eplace: eplace}),
		dataType : "json",
		success : function(result){
			//?????? ?????????????????? ?????? ????????? ???????????? ???????????? ??????
			var temp1 = parseInt($("#s-time").val().split(":")[1]) + (result.intDur/60),
			temp2 = String(parseInt($("#s-time").val().split(":")[0]) + (temp1/60)).split(".")[0],
			temp3 = String(temp1 % 60).split(".")[0],
			str1 = "",
			str2 = "";
			if ((temp2).length == 1) {
				str1 = "0"+temp2;
			} else {
				str1 = temp2;
			}
			if ((temp3).length == 1) {
				str2 = "0"+temp3;
			} else {
				str2 = temp3;
			}
			var etime = (str1+":"+str2);
			var temp1 = $("#s-date").val() + " " + etime; 
			var edate = new Date(temp1);
			var esc = false;
			for(var i=0;i<document.getElementsByClassName("start").length;i++) {
				var osDate = new Date(document.getElementsByClassName("start")[i].value);
				var oeDate = new Date(document.getElementsByClassName("end")[i].value);
				if (edate >= osDate && edate <= oeDate) {
					esc = true;
				}
			}
			if (esc == true) {
				alert("?????? ?????? ????????? ?????? ????????? ????????????.");
				return;
			}
			
			// map??? ?????? ????????? ??????
			$("#map").attr("style","width:720px; height: 300px; margin:30px 0px 50px 0px;");
			$(".fare").remove();
			$(".dur").remove();
			$(".dis").remove();
			document.getElementById("totalInfo").innerHTML += "<div class='fare'><span style='color:black;'>1?????? ?????? ????????? : &nbsp;</span><input type='hidden' name='fare' id='fare' value='"+result.totalFare+"'>"+result.totalFare+"</div>";
			document.getElementById("totalInfo").innerHTML += "<div class='dur'><span style='color:black;'>?????? ?????? ?????? : &nbsp;</span><input type='hidden' name='dur' value='"+result.totalDur+"'>"+result.totalDur+"</div>";
			document.getElementById("totalInfo").innerHTML += "<div class='dis'><span style='color:black;'>?????? ?????? : &nbsp;</span><input type='hidden' name='dis' value='"+result.totalDis+"'>"+result.totalDis+"</div>";
			
			//?????? ?????? ??? input?????? ??? disp?????? ?????? ???????????? ??? ?????? ?????? ??????
			document.getElementById("s-addr1").value = result.splace;
			document.getElementById("e-addr1").value = result.eplace;
			
			//?????????????????? ???????????? ?????????(????????? ???????????? ?????? ????????????)
			$("#intdur").val(result.intDur);
			
			//????????? ????????? ??? ??? ???????????? ????????????????????? bound??? ??????
			var bounds = new kakao.maps.LatLngBounds();
			bounds.extend(new kakao.maps.LatLng(slat, slng));
			bounds.extend(new kakao.maps.LatLng(elat, elng));
			
			//ok??????????????? ????????? ?????????????????? ?????? ??????
			var latlng = result.latlng;
			document.getElementById("latlng1").value = latlng.toString();
			
			
			
			var mapContainer = document.getElementById('map'), // ????????? ????????? div 
			mapOption = { 
			    center: new kakao.maps.LatLng(slat, slng), // ????????? ????????????
			    level: 4 // ????????? ?????? ??????
			};  
			var map = new kakao.maps.Map(mapContainer, mapOption); // ????????? ???????????????
			
			//????????? bound?????? ????????? ??????
			map.setBounds(bounds);
			
			
			//????????? ????????? ??????
			var positions = [
				{
					latlng: new kakao.maps.LatLng(slat, slng)
				},
				{
					latlng: new kakao.maps.LatLng(elat, elng)
				}
			];
			
			//?????? ?????? info?????? ??? ?????? ???????????? ?????? (????????? ????????? ?????? ????????? 2?????? ?????????)
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
// 				strokeStyle: 'shortdashdot', // ?????? ??????????????????
// 				strokeStyle: 'longdash',
// 				strokeStyle: 'dashed',
				strokeStyle: 'solid',
				map: map
			});
			
			//????????? ?????? ??????????????? 
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
			alert("?????? ?????? ??? ????????????! ????????? ?????? ??? ?????? ??????????????????.")
			return;
		}
	});
})

//????????? ????????? ??? ?????????
$(".ae-btn").on("click", function() {
	var saddr = $(".s-addr").val();
	var slat = $(".s-lat").val();
	var slng = $(".s-lng").val();
	var eaddr = $(".e-addr").val();
	var elat = $(".e-lat").val();
	var elng = $(".e-lng").val();
	
	$(".s-addr").val(eaddr);
	$(".s-lat").val(elat);
	$(".s-lng").val(elng);
	$(".e-addr").val(saddr);
	$(".e-lat").val(slat);
	$(".e-lng").val(slng);
})

//????????? ????????? ????????? ??? ?????? ??????
$(".ic-btn").on("click", function() {
	$(".s-addr").val("");
	$(".e-addr").val("");
})

//????????? ?????? ??????
function ssp() {
	window.open("ssp/1", "child", "width=1000, height=600, left=300, top=100");
}
//????????? ?????? ??????
function sep() {
	window.open("sep/1", "child", "width=1000, height=600, left=300, top=100");
}
</script>
</html>