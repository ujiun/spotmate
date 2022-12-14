<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<script type="text/javascript"src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
	<title>Insert title here</title>

<link rel="stylesheet" href="/assets/jqueryUi/jquery-ui.min.css">
<link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<div class="inner">
		<div class="top">
			<div>
				<span>MATE PRODUCT</span>
				<p>?????? ?????? ????????????</p>
			</div>
			<p>
				?????????????????? ??????????????? ????????? ??????????????????<br> ?????? ???????????? ????????? ?????? ????????? ???????????? ????????? ?????? ???
				???????????????.
			</p>

			<span>* ?????? ????????????</span>
		</div>
		<input type="hidden" value="" id="insRowChk">
		<div class="mid">
			<form action="/mateWriteOk" method="post">
				<p class="write-font">???????????? ????????? ?????????????????????.</p>
				<div class="f-sec">
					<span>?????? ??????</span><input type="date" name="sdate1" value="" id="mate-s-date">
					<br>
					<span>?????? ??????</span><input type="date" name="edate1" value="" id="mate-e-date">
				</div>
				<div id="s-sec-box">
					<div class="s-sec1">
						<div>
							<span class="write-font">????????? ?????????????????? ???????????????</span>
							<img class="ia-btn2" src="assets/images/ico_add.png" onclick="add()">
							<img class="rmv-btn" src="assets/images/ico_close.png" onclick="rmv()">
							<p class="write-font">?????????????????? 1?????? ?????? ????????? ?????????????????? *</p>
						</div>
						<div id="input-div1">
							<img class="mate-img" src="assets/images/map_line_03.png">
							<table id="addTable1">
								<tr>
									<td>
										<input type="text" name="splace1" value="" id="s-addr1" class="mate-s-addr1" placeholder="???????????? ???????????????" onclick="ssp(1)">
										<input onclick="setTime(1)" type="time" value="" id="s-time1" class="mate-s-time1">
										<input type="hidden" value="" name="stime1" id="stime1">
										<img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow(1)">
									</td>
									<td><input type="hidden" value="" class="hide-s-addr1"></td>
									<td><input type="hidden" name="slat1" value="" class="s-lat1"></td>
									<td><input type="hidden" name="slng1" value="" class="s-lng1"></td>
								</tr>
								<tr class="mate-e-addr-tr">
									<td>
										<input type="text" name="eplace1" value="" id="e-addr1" class="mate-e-addr1" placeholder="???????????? ???????????????" onclick="sep(1)">
										<img class="ic-btn" src="assets/images/ico_close.png" onclick="clean(1)">
									</td>
									<td><input type="hidden" value="" class="hide-e-addr1"></td>
									<td><input type="hidden" name="elat1" value="" class="e-lat1"></td>
									<td><input type="hidden" name="elng1" value="" class="e-lng1"></td>
									<td><input type="hidden" name="latlng1" value="" id="latlng1"></td>
									<td><input type="hidden" value="" name="day1" id="day1"></td>
								</tr>
							</table>
							<button onclick="setDayPath(1)" type="button" id="finish">?????? ????????????</button>
				<div id="map1"></div>
				<div id="fareInfo1"></div>
				</div>
			</div>
			</div>
			
				<div class="t-sec">
					<p class="write-font">?????? ????????? ?????? ??? *</p>
					<input id="people" name="people" type="number" min=1 placeholder="1???">
					<p class="write-font">?????? ????????????</p>
					<table>
					<c:forEach items="${driverInfo.NAME}" var="name">
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
						<label for="nosmoke" class="detailtext-2">&nbsp;&nbsp;????????????</label></td>
						<td><input type="checkbox" id="femaledriver" name="femaledriver" value="femaledriver">
						<label for="femaledriver" class="detailtext-2">&nbsp;&nbsp;?????? ????????????</label></td>
						
					</tr>
					<tr>
						<td><input type="checkbox" id="pet" name="pet" value="pet">
						<label for="pet" class="detailtext-2">&nbsp;&nbsp;????????????</label></td>
						<td><input class="td2" type="checkbox" id="phonecharge" name="phonecharge" value="phonecharge">
						<label for="phonecharge" class="detailtext-2">&nbsp;&nbsp;????????? ?????? ??????</label></td>
					</tr>
					<tr>
						<td><input class="td2" type="checkbox" id="trunk"
							name="trunk" value="trunk"><label for="trunk" class="detailtext-2">&nbsp;&nbsp; ????????? ?????? ??????</label></td>
					</tr>
					</table>
					<p class="write-font">?????????????????? ?????????????????? *</p>
					<textarea class="introduce" name="introduce" readonly>${driverInfo.INTRODUCE}</textarea>
					<p class="write-font">?????????????????? ???????????? ?????? ???????????????</p>
					<textarea class="comments" name="comments" placeholder="?????? ?????? ?????? ???????????????!"></textarea>
				</div>
				<button onclick="moveOk()" id="btn" type="button">????????????</button>
			</form>

		</div>
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>
<script type="text/javascript">
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
document.getElementById("mate-s-date").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);
document.getElementById("mate-e-date").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);

function moveOk() {
	if( $("#s-addr1").val() == '' || $("#e-addr1").val() == '' || $("#people").val() == '') {
		alert("?????? ????????? ??? ?????? ?????? ??????????????????");
		return;
	}
	$("#btn").removeAttr()
	$("#btn").attr("type", "submit")
}


function setTime(index) {
	$("#s-time"+index).on("propertychange change keyup paste input", function() {

		var oldVal = "";
	    var currentVal = $(this).val();
	    if(currentVal == oldVal) {
	        return;
	    }
	    oldVal = currentVal;
	    document.getElementById("stime"+index).value = currentVal;
	});
}

function setWayTime(a) {
	$("#w-time"+a).on("propertychange change keyup paste input", function() {

		var oldVal = "";
	    var currentVal = $(this).val();
	    if(currentVal == oldVal) {
	        return;
	    }
	    oldVal = currentVal;
	    document.getElementById("wtime"+a).value = currentVal;
	});
}


var a, b, oTbl;
var index = 2;

function add() {
	if (index >= 6) {
		alert("?????? ????????? 5??? ?????? ????????? ??? ????????????.");
		index = 6;
		return;
	}
	document.getElementById("s-sec-box").innerHTML += '<div class="s-sec'+index+'"><input type="hidden" value="" name="day'+index+'" id="day'+index+'"><input type="hidden" value="" name="stime'+index+'" id="stime'+index+'"><div><span>????????? ??????????????? ???????????????</span><img class="ia-btn2" onclick="add()" src="assets/images/ico_add.png"><p>?????????????????? '+index+'?????? ?????? ????????? ?????????????????? *</p></div><div id="input-div'+index+'"><img class="mate-img" src="assets/images/map_line_03.png"><table id="addTable'+index+'"><tr><td><input type="text" id="s-addr'+index+'" name="splace'+index+'" onclick="ssp('+index+')" value="" class="mate-s-addr'+index+'" placeholder="???????????? ???????????????"><input type="time" value="" onclick="setTime('+index+')" id="s-time'+index+'" class="mate-s-time'+index+'"><img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow('+index+')"></td><td><input type="hidden" value="" class="hide-s-addr'+index+'"></td><td><input type="hidden" value="" name="slat'+index+'" class="s-lat'+index+'"></td><td><input type="hidden" name="slng'+index+'" value="" class="s-lng'+index+'"></td></tr><tr class="mate-e-addr-tr"><td><input type="text" value="" name="eplace'+index+'" id="e-addr'+index+'" class="mate-e-addr'+index+'" placeholder="???????????? ???????????????" onclick="sep('+index+')"><img onclick="clean('+index+')" class="ic-btn" src="assets/images/ico_close.png"></td><td><input type="hidden" value="" class="hide-e-addr'+index+'"></td><td><input type="hidden" value="" name="elat'+index+'" class="e-lat'+index+'"></td><td><input type="hidden" name="elng'+index+'" value="" class="e-lng'+index+'"></td><td><input type="hidden" name="latlng'+index+'" value="" id="latlng'+index+'"></td></tr></table><button onclick="setDayPath('+index+')" type="button" id="finish">?????? ????????????</button><div id="map'+index+'"><div id="fareInfo'+index+'"></div></div></div></div>';
	index++;
	for (var i=1;i<index-1;i++) {
		if ( $(".hide-s-addr"+i).val() != "" ) {
			document.getElementById("s-addr"+i).value = $(".hide-s-addr"+i).val();
		}
		if ( document.getElementById("stime"+i).value != "" ) {
			document.getElementById("s-time"+i).value = document.getElementById("stime"+i).value;
		}
		if ( $(".hide-e-addr"+i).val() != "" ) {
			document.getElementById("e-addr"+i).value = $(".hide-e-addr"+i).val();
		}
	}
	for (var i=1;i<index-1;i++) {
		for (var j=(9*i)+(i+1);j<(9*i)+(i+1)+5;j++) {
			if ( $(".mate-w-addr"+j).val() != "" && $(".mate-w-addr"+j).val() != null ) {
				document.getElementById("w-addr"+j).value = $(".mate-w-addr"+j).val();
			}
			if ( $("#wtime"+j).val() != "" && $("#wtime"+j).val() != null ) {
				document.getElementById("w-time"+j).value = document.getElementById("wtime"+j).value;
			}
		}
	}
}

function rmv() {
	index--;
	if (index <= 1) {
		alert("?????? ????????? ?????? ???????????? ?????????.");
		index = 2;
		return;
	}
	$(".s-sec"+index).remove();
	for (var i=1;i<index;i++) {
		if ( $(".hide-s-addr"+i).val() != "" ) {
			document.getElementById("s-addr"+i).value = $(".hide-s-addr"+i).val();
		} 
		if ( $(".hide-e-addr"+i).val() != "" ) {
			document.getElementById("e-addr"+i).value = $(".hide-e-addr"+i).val();
		}
	}
	for (var i=1;i<=index;i++) {
		for (var j=(9*i)+(i+1);j<(9*i)+(i+1)+5;j++) {
			if ( $(".mate-w-addr"+j).val() != "" && $(".mate-w-addr"+j).val() != null) {
				document.getElementById("w-addr"+j).value = $(".mate-w-addr"+j).val();
			}
		}
	}
}

function insRow(index) {
	var i = (9*index)+(index+1);
		if ( document.getElementById("insRowChk").value == "" ) {
			
			if ( a > i+5 && $("#w-addr"+a+"").val() == "") {
				if ( i - a > 5 ) {
					a = i;
					b = a+4;
					return;
				} else if ( i - a < -9 ) {
					a = i;
					b = a+4;
					return;
				}
				alert("???????????? 5??? ?????? ????????? ??? ????????????.");
				a = b;
				document.getElementById("insRowChk").value = "";
				return;
			} else if ( a > b && a == i+5) {
				alert("???????????? 5??? ?????? ????????? ??? ????????????.");
				a = b;
				document.getElementById("insRowChk").value = "";
				return;
			}
			
			a = i;
			b = a+4;
			document.getElementById("insRowChk").value = "1";
			while($("#w-addr"+a+"").val() == "") {
				a++;
			}
			if ( a > b ) {
				alert("???????????? 5??? ?????? ????????? ??? ????????????.");
				a = b;
				document.getElementById("insRowChk").value = "";
				return;
			}
			oTbl = document.getElementById("addTable"+index);
			var oRow = oTbl.insertRow();
			oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - ????????? Row??? ????????? ??????;
			var oCell = oRow.insertCell();
			
			//????????? Form Tag
			var waypoint = '<input type="hidden" name="wtime'+a+'" value="" id="wtime'+a+'"><input type="hidden" value="" class="mate-w-addr'+a+'"><input type="text" value="" name="wplace'+a+'" onclick="search('+a+')" id="w-addr'+a+'" placeholder="???????????? ???????????????"><input type="time" onclick="setWayTime('+a+')" value="" id="w-time'+a+'"><input type="hidden" value="" name="wlat'+a+'" class="w-lat'+a+'"><input type="hidden" value="" name="wlng'+a+'" class="w-lng'+a+'"><img class="id-btn" src="assets/images/ico_minus.png" onClick="remove('+index+')">';
			
			oCell.innerHTML = waypoint;
			a++;
		}
		else {
			if ( i - a > 5 ) {
				a = i;
				b = a+4;
			} else if ( i - a < -9 ) {
				a = i;
				b = a+4;
			} else if ( i - a == 5 ) {
				a = i;
				b = a+4;
			} else if ( a > b ) {
				alert("???????????? 5??? ?????? ????????? ??? ????????????.");
				a = b;
				document.getElementById("insRowChk").value = "";
				return;
			}
			while($("#w-addr"+a+"").val() == "") {
				a++;
			}
			oTbl = document.getElementById("addTable"+index);
			var oRow = oTbl.insertRow();
			oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - ????????? Row??? ????????? ??????;
			var oCell = oRow.insertCell();
			
			//????????? Form Tag
			var waypoint = '<input type="hidden" name="wtime'+a+'" value="" id="wtime'+a+'"><input type="hidden" value="" class="mate-w-addr'+a+'"><input type="text" value="" name="wplace'+a+'" onclick="search('+a+')" id="w-addr'+a+'" placeholder="???????????? ???????????????"><input type="time" onclick="setWayTime('+a+')" value="" id="w-time'+a+'"><input type="hidden" value="" name="wlat'+a+'" class="w-lat'+a+'"><input type="hidden" value="" name="wlng'+a+'" class="w-lng'+a+'"><img class="id-btn" src="assets/images/ico_minus.png" onClick="remove('+index+')">';
			
			oCell.innerHTML = waypoint;
			a++;
		}
}

function remove(index) {
		oTbl = document.getElementById("addTable"+index);
		try {
			oTbl.deleteRow(oTbl.rows.length-1);
			a--;
		} catch(TypeError) {}
}

function clean(index) {
	var i = (9*index)+(index+1);
	$(".mate-s-addr"+index).val("");
	$(".mate-s-time"+index).val("");
	$(".s-lat"+index).val("");
	$(".s-lng"+index).val("");
	$("#w-addr"+i).val("");
	$("#w-time"+i).val("");
	$(".w-lat"+i).val("");
	$(".w-lng"+i).val("");
	$("#w-addr"+(i+1)).val("");
	$("#w-time"+(i+1)).val("");
	$(".w-lat"+(i+1)).val("");
	$(".w-lng"+(i+1)).val("");
	$("#w-addr"+(i+2)).val("");
	$("#w-time"+(i+2)).val("");
	$(".w-lat"+(i+2)).val("");
	$(".w-lng"+(i+2)).val("");
	$("#w-addr"+(i+3)).val("");
	$("#w-time"+(i+3)).val("");
	$(".w-lat"+(i+3)).val("");
	$(".w-lng"+(i+3)).val("");
	$("#w-addr"+(i+4)).val("");
	$("#w-time"+(i+4)).val("");
	$(".w-lat"+(i+4)).val("");
	$(".w-lng"+(i+4)).val("");
	$(".mate-e-addr"+index).val("");
	$(".e-lat"+index).val("");
	$(".e-lng"+index).val("");
}


function search(a) {
	window.open("swp/"+a, "child", "width=1000, height=600, left=300, top=100");
}

function ssp(index) {
	window.open("ssp/"+index, "child", "width=1000, height=600, left=1000, top=50");
}

function sep(index) {
	window.open("sep/"+index, "child", "width=1000, height=600, left=1000, top=50");
}
function setDayPath(index) {
	var i = (9*index)+(index+1);
	if( $(".s-lat"+index).val() == "" || $(".s-lng"+index).val() == "" || $(".e-lat"+index).val() == "" || 
			$(".e-lng"+index).val() == "" || $("#stime"+index).val() == "" ) {
		alert("?????? ?????? ??????????????????");
		return;
	} else if ( ($("#w-addr"+i).val() != null && $("#w-addr"+i).val() == "") ||
			($("#w-addr"+(i+1)).val() != null && $("#w-addr"+(i+1)).val() == "") ||
			($("#w-addr"+(i+2)).val() != null && $("#w-addr"+(i+2)).val() == "") ||
			($("#w-addr"+(i+3)).val() != null && $("#w-addr"+(i+3)).val() == "") ||
			($("#w-addr"+(i+4)).val() != null && $("#w-addr"+(i+4)).val() == "") ||
			($("#wtime"+i).val() != null && $("#wtime"+i).val() == "") ||
			($("#wtime"+(i+1)).val() != null && $("#wtime"+(i+1)).val() == "") ||
			($("#wtime"+(i+2)).val() != null && $("#wtime"+(i+2)).val() == "") ||
			($("#wtime"+(i+3)).val() != null && $("#wtime"+(i+3)).val() == "") ||
			($("#wtime"+(i+4)).val() != null && $("#wtime"+(i+4)).val() == "")
			) {
		alert("?????? ?????? ??????????????????");
		return;
	}
	var day = index;
	var saddr = $(".mate-s-addr"+index).val();
	var stime = $("#stime"+index).val();
	var slat = $(".s-lat"+index).val();
	var slng = $(".s-lng"+index).val();
	var waddr1 = $("#w-addr"+i).val();
	var wtime1 = $("#wtime"+i).val();
	var wlat1 = $(".w-lat"+i).val();
	var wlng1 = $(".w-lng"+i).val();
	var waddr2 = $("#w-addr"+(i+1)).val();
	var wtime2 = $("#wtime"+(i+1)).val();
	var wlat2 = $(".w-lat"+(i+1)).val();
	var wlng2 = $(".w-lng"+(i+1)).val();
	var waddr3 = $("#w-addr"+(i+2)).val();
	var wtime3 = $("#wtime"+(i+2)).val();
	var wlat3 = $(".w-lat"+(i+2)).val();
	var wlng3 = $(".w-lng"+(i+2)).val();
	var waddr4 = $("#w-addr"+(i+3)).val();
	var wtime4 = $("#wtime"+(i+3)).val();
	var wlat4 = $(".w-lat"+(i+3)).val();
	var wlng4 = $(".w-lng"+(i+3)).val();
	var waddr5 = $("#w-addr"+(i+4)).val();
	var wtime5 = $("#wtime"+(i+4)).val();
	var wlat5 = $(".w-lat"+(i+4)).val();
	var wlng5 = $(".w-lng"+(i+4)).val();
	var eaddr = $(".mate-e-addr"+index).val();
	var elat = $(".e-lat"+index).val();
	var elng = $(".e-lng"+index).val();
	$.ajax({
		url : "${pageContext.request.contextPath}/setDayPath",		
		type : "post",
		contentType : "application/json",
		data : JSON.stringify({
			day: day,
			saddr: saddr,
			slat: slat,
			slng: slng,
			waddr1: waddr1,
			wlat1: wlat1,
			wlng1: wlng1,
			waddr2: waddr2,
			wlat2: wlat2,
			wlng2: wlng2,
			waddr3: waddr3,
			wlat3: wlat3,
			wlng3: wlng3,
			waddr4: waddr4,
			wlat4: wlat4,
			wlng4: wlng4,
			waddr5: waddr5,
			wlat5: wlat5,
			wlng5: wlng5,
			eaddr: eaddr,
			elat: elat,
			elng: elng
			}),

		dataType : "json",
		success : function(result){
			var i = (9*index)+(index+1);
			$("#map"+index).remove();
			$("#fareInfo"+index).remove();
			//?????? ??? ?????? ?????? ????????????
			document.getElementById("input-div"+index).innerHTML += '<div id="map'+index+'" style="width:720px; height: 300px; margin:50px 0px 50px 0px;">';
			document.getElementById("input-div"+index).innerHTML += "<div style='margin: 0px 0px 50px 0px; text-align:center;' id='fareInfo"+index+"'>1?????? ?????? ?????????:&nbsp; <input type='hidden' name='fare"+index+"' value='"+result.fare+"'><span style='color:#4454a1;'>"+result.fare+"</span></div>";
			
			//button?????? ??? ?????? ????????? input????????? ?????? ???????????? hidden??? ?????? ??? ?????? ?????????
			document.getElementById("s-addr"+index).value = saddr;
			document.getElementById("s-time"+index).value = stime;
			document.getElementById("e-addr"+index).value = eaddr;
			if (waddr1 != null) {
				document.getElementById("w-addr"+i).value = waddr1;
				document.getElementById("w-time"+i).value = wtime1;
			} 
			if (waddr2 != null) {
				document.getElementById("w-addr"+(i+1)).value = waddr2;
				document.getElementById("w-time"+(i+1)).value = wtime2;
			} 
			if (waddr3 != null) {
				document.getElementById("w-addr"+(i+2)).value = waddr3;
				document.getElementById("w-time"+(i+2)).value = wtime3;
			} 
			if (waddr4 != null) {
				document.getElementById("w-addr"+(i+3)).value = waddr4;
				document.getElementById("w-time"+(i+3)).value = wtime4;
			} 
			if (waddr5 != null) {
				document.getElementById("w-addr"+(i+4)).value = waddr5;
				document.getElementById("w-time"+(i+4)).value = wtime5;
			}
			
			//?????? ?????? ???????????? ??? bound??????
			var latArray = [slat, elat],
				lngArray = [slng, elng],
				positions = [{
					latlng: new kakao.maps.LatLng(slat, slng)
				},];
			if (wlat1 != null) {
				latArray.push(wlat1);
				lngArray.push(wlng1);
				positions.push({latlng: new kakao.maps.LatLng(wlat1, wlng1)},);
			} 
			if (wlat2 != null) {
				latArray.push(wlat2);
				lngArray.push(wlng2);
				positions.push({latlng: new kakao.maps.LatLng(wlat2, wlng2)},);
			} 
			if (wlat3 != null) {
				latArray.push(wlat3);
				lngArray.push(wlng3);
				positions.push({latlng: new kakao.maps.LatLng(wlat3, wlng3)},);
			}
			if (wlat4 != null) {
				latArray.push(wlat4);
				lngArray.push(wlng4);
				positions.push({latlng: new kakao.maps.LatLng(wlat4, wlng4)},);
			}
			if (wlat5 != null) {
				latArray.push(wlat5);
				lngArray.push(wlng5);
				positions.push({latlng: new kakao.maps.LatLng(wlat5, wlng5)},);
			};
			positions.push({latlng: new kakao.maps.LatLng(elat, elng)});
			var maxLat = Math.max(...latArray),
				maxLng = Math.max(...lngArray),
				minLat = Math.min(...latArray),
				minLng = Math.min(...lngArray);
			var	bounds = new kakao.maps.LatLngBounds();
			bounds.extend(new kakao.maps.LatLng(maxLat, maxLng));
			bounds.extend(new kakao.maps.LatLng(minLat, minLng));
			document.getElementById("day"+index).value = day;
			latlng = result.latlng;
			document.getElementById("latlng"+index).value = latlng.toString();
			var mapContainer = document.getElementById('map'+index), // ????????? ????????? div 
				mapOption = { 
				    center: new kakao.maps.LatLng(slat, slng), // ????????? ????????????
				    level: 4 // ????????? ?????? ??????
				};
			var map = new kakao.maps.Map(mapContainer, mapOption); // ????????? ???????????????
			map.setBounds(bounds);
			
			var iwContent;
			for (var i=0;i<positions.length;i++) {
				if ( i==0 ) {
					iwContent = '<div style="font-size:14px; padding:5px 0px 5px 30px;">????????? ?????????</div>'; 
				} else if (i==positions.length-1){
					iwContent = '<div style="font-size:14px; padding:5px 0px 5px 30px;">????????? ?????????</div>';
				} else {
					iwContent = '<div style="font-size:14px; padding:5px 0px 5px 22px;">'+i+'??? ??????????????????</div>';
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
				strokeOpacity: 0.8, // ?????? ???????????? ????????? 1?????? 0 ????????? ????????? 0??? ??????????????? ???????????????
				strokeStyle: 'solid', // ?????? ??????????????????
				map: map
			});
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}
</script>
</html>