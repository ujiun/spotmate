<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="Content-Security-Policy"
	content="upgrade-insecure-requests">
<title>Insert title here</title>
<script type="text/javascript" src="/assets/js/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c6544d76c3912585c75cfd126a875faf&libraries=services,clusterer,drawing"></script>
<script src="/assets/jqueryUi/jquery-ui.js"></script>

<link rel="stylesheet" href="/assets/jqueryUi/jquery-ui.min.css">
<link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<div class="inner">
		<div class="top">
			<div>
				<span>MATE PRODUCT</span>
				<p>이동 경로 등록하기</p>
			</div>
			<p>
				드라이버님이 이동하시는 경로를 등록해주시면<br> 해당 기간동안 스팟을 함께 이동할 메이트가 카풀을 신청 할
				예정입니다.
			</p>

			<span>*필수 입력사항</span>
		</div>
		<div class="mid">
			<form action="/mateWriteOk" method="post">
				<p>등록하신 날짜와 출발시간입니다.</p>
				<div class="f-sec">
					<span>출발 날짜</span><input type="date" name="sdate" value="" id="mate-s-date">
					<br>
					<span>도착 날짜</span><input type="date" name="edate" value="" id="mate-e-date">
				</div>
				<div id="s-sec-box">
					<div class="s-sec">
						<div>
							<span>일정을 추가하려면 눌러주세요</span>
							<img class="ia-btn2" src="assets/images/ico_add.png" onclick="add1()">
						</div>
						<p>드라이버님의 1일차 이동 경로를 입력해주세요*</p>

						<div id="input-div">
							<img class="mate-img" src="assets/images/map_line_03.png">
							<table id="addTable">
								<tr>
									<td>
										<input type="text" value="" id="s-addr" class="mate-s-addr" placeholder="출발지를 입력하세요" onclick="ssp()">
										<input type="text" value="" class="mate-s-time" placeholder="아침 8:00">
										<img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow()">
									</td>
									<td><input type="hidden" value="" class="s-lat"></td>
									<td><input type="hidden" value="" class="s-lng"></td>
								</tr>
								<tr class="mate-e-addr-tr">
									<td>
										<input type="text" value="" id="e-addr" class="mate-e-addr" placeholder="도착지를 입력하세요" onclick="sep()">
										<img class="mate-ic-btn" src="assets/images/ico_close.png">
									</td>
									<td><input type="hidden" value="" class="e-lat"></td>
									<td><input type="hidden" value="" class="e-lng"></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="t-sec">
					<p>탑승 가능한 인원 수*</p>
					<input type="number" min=1 placeholder="1명">
					<p>차량 상세조건</p>
					<table>
						<tr>
							<td><input type="checkbox" id="smoke" name="smoke"
								value="nosmoke"><label for="smoke">비흡연자</label></td>
							<td><input class="td2" type="checkbox" id="phonecharge"
								name="phonecharge" value="phonecharge"><label
								for="phonecharge">핸드폰 충전기 이용 가능</label></td>
						</tr>
						<tr>
							<td><input type="checkbox" name="wifi" id="wifi"
								value="wifi"><label for="wifi">차량 와이파이 이용 가능</label></td>
							<td><input class="td2" type="checkbox" id="silence"
								name="silence" value="silence"><label for="silence">조용하게
									가는 것을 선호</label></td>
						</tr>
						<tr>
							<td><input type="checkbox" id="drivergender"
								name="drivergender" value="female"><label
								for="drivergender">여성 드라이버</label></td>
							<td><input class="td2" type="checkbox" id="pet" name="pet"
								value="pet"><label for="pet">반려동물 탑승 가능</label></td>
						</tr>
					</table>
					<p>드라이버님을 소개해주세요*</p>
					<textarea class="introduce" name="introduce" readonly></textarea>
					<p>드라이버님이 하고싶은 말을 적어주세요</p>
					<textarea class="comments" name="comments" placeholder="하고싶은 말을 적어주세요!"></textarea>
				</div>
				<button>등록하기</button>
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
	});
document.getElementById("mate-s-date").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);
document.getElementById("mate-e-date").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);
var index = 1;
var index1 = 1;
var index2 = 1;
var index3 = 1;
var index4 = 1;
var oTbl;
function add1() {
	document.getElementById("s-sec-box").innerHTML += '<div class="s-sec1"><div><img class="ia-btn2" onclick="add2()" src="assets/images/ico_add.png"></div><p>드라이버님의 2일차 이동 경로를 입력해주세요*</p><div id="input-div"><img class="mate-img" src="assets/images/map_line_03.png"><table id="addTable1" style="display:inline;"><tr><td><input type="text" onclick="ssp()" value="" class="mate-s-addr" placeholder="출발지를 입력하세요"><input type="text" value="" class="mate-s-time" placeholder="아침 8:00"><img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow1()"></td><td><input type="hidden" value="" class="s-lat"></td><td><input type="hidden" value="" class="s-lng"></td></tr><tr class="mate-e-addr-tr"><td><input type="text" value="" class="mate-e-addr" placeholder="도착지를 입력하세요" onclick="sep()"><img class="mate-ic-btn" src="assets/images/ico_close.png"></td><td><input type="hidden" value="" class="e-lat"></td><td><input type="hidden" value="" class="e-lng"></td></tr></table></div></div>';
}
function add2() {
	document.getElementById("s-sec-box").innerHTML += '<div class="s-sec2"><div><img class="ia-btn2" onclick="add3()" src="assets/images/ico_add.png"></div><p>드라이버님의 3일차 이동 경로를 입력해주세요*</p><div id="input-div"><img class="mate-img" src="assets/images/map_line_03.png"><table id="addTable2" style="display:inline;"><tr><td><input type="text" onclick="ssp()" value="" class="mate-s-addr" placeholder="출발지를 입력하세요"><input type="text" value="" class="mate-s-time" placeholder="아침 8:00"><img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow2()"></td><td><input type="hidden" value="" class="s-lat"></td><td><input type="hidden" value="" class="s-lng"></td></tr><tr class="mate-e-addr-tr"><td><input type="text" value="" class="mate-e-addr" placeholder="도착지를 입력하세요" onclick="sep()"><img class="mate-ic-btn" src="assets/images/ico_close.png"></td><td><input type="hidden" value="" class="e-lat"></td><td><input type="hidden" value="" class="e-lng"></td></tr></table></div></div>';
}
function add3() {
	document.getElementById("s-sec-box").innerHTML += '<div class="s-sec3"><div><img class="ia-btn2" onclick="add4()" src="assets/images/ico_add.png"></div><p>드라이버님의 4일차 이동 경로를 입력해주세요*</p><div id="input-div"><img class="mate-img" src="assets/images/map_line_03.png"><table id="addTable3" style="display:inline;"><tr><td><input type="text" onclick="ssp()" value="" class="mate-s-addr" placeholder="출발지를 입력하세요"><input type="text" value="" class="mate-s-time" placeholder="아침 8:00"><img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow3()"></td><td><input type="hidden" value="" class="s-lat"></td><td><input type="hidden" value="" class="s-lng"></td></tr><tr class="mate-e-addr-tr"><td><input type="text" value="" class="mate-e-addr" placeholder="도착지를 입력하세요" onclick="sep()"><img class="mate-ic-btn" src="assets/images/ico_close.png"></td><td><input type="hidden" value="" class="e-lat"></td><td><input type="hidden" value="" class="e-lng"></td></tr></table></div></div>';
}
function add4() {
	document.getElementById("s-sec-box").innerHTML += '<div class="s-sec4"><p>드라이버님의 일정 마지막 날 이동 경로를 입력해주세요*</p><div id="input-div"><img class="mate-img" src="assets/images/map_line_03.png"><table id="addTable4" style="display:inline;"><tr><td><input type="text" onclick="ssp()" value="" class="mate-s-addr" placeholder="출발지를 입력하세요"><input type="text" value="" class="mate-s-time" placeholder="아침 8:00"><img class="ia-btn" src="assets/images/ico_add.png" onclick="insRow4()"></td><td><input type="hidden" value="" class="s-lat"></td><td><input type="hidden" value="" class="s-lng"></td></tr><tr class="mate-e-addr-tr"><td><input type="text" value="" class="mate-e-addr" placeholder="도착지를 입력하세요" onclick="sep()"><img class="mate-ic-btn" src="assets/images/ico_close.png"></td><td><input type="hidden" value="" class="e-lat"></td><td><input type="hidden" value="" class="e-lng"></td></tr></table></div></div>';
}
function insRow() {
	
	if (index >= 6) {
		alert("경유지는 5개 이상 추가할 수 없습니다.");
		index = 6;
		return;
	}
	index++;
	if (index == 2) {
		$(".s-sec").attr("style", "height:270px;");
	} else if (index == 3) {
		$(".s-sec").attr("style", "height:320px;");
	} else if (index == 4) {
		$(".s-sec").attr("style", "height:370px;");
	} else if (index == 5) {
		$(".s-sec").attr("style", "height:420px;");
	} else if (index == 6) {
		$(".s-sec").attr("style", "height:470px;");
	}
	
	oTbl = document.getElementById("addTable");
	var oRow = oTbl.insertRow();
	oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search()" class="w-addr'+ index + '" placeholder="경유지를 입력하세요"><input type="text" value="" class="w-time'+ index + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index + '"><input type="hidden" value="" class="w-lng'+ index + '"><img style="display:inline;" class="id-btn'+index+'" src="assets/images/ico_minus.png" onClick="remove()">';
	
	oCell.innerHTML = waypoint;
	
}
function insRow1() {
	
	if (index1 >= 6) {
		alert("경유지는 5개 이상 추가할 수 없습니다.");
		index1 = 6;
		return;
	}
	index1++;
	if (index1 == 2) {
		$(".s-sec1").attr("style", "height:270px;");
	} else if (index1 == 3) {
		$(".s-sec1").attr("style", "height:320px;");
	} else if (index1 == 4) {
		$(".s-sec1").attr("style", "height:370px;");
	} else if (index1 == 5) {
		$(".s-sec1").attr("style", "height:420px;");
	} else if (index1 == 6) {
		$(".s-sec1").attr("style", "height:470px;");
	}
	
	oTbl = document.getElementById("addTable1");
	var oRow = oTbl.insertRow();
	oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search()" class="w-addr'+ index1 + '" placeholder="경유지를 입력하세요"><input type="text" value="" class="w-time'+ index1 + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index1 + '"><input type="hidden" value="" class="w-lng'+ index1 + '"><img style="display:inline;" class="id-btn'+index1+'" src="assets/images/ico_minus.png" onClick="remove1()">';
	
	oCell.innerHTML = waypoint;
	
}
function insRow2() {
	
	if (index2 >= 6) {
		alert("경유지는 5개 이상 추가할 수 없습니다.");
		index2 = 6;
		return;
	}
	index2++;
	if (index2 == 2) {
		$(".s-sec2").attr("style", "height:270px;");
	} else if (index2 == 3) {
		$(".s-sec2").attr("style", "height:320px;");
	} else if (index2 == 4) {
		$(".s-sec2").attr("style", "height:370px;");
	} else if (index2 == 5) {
		$(".s-sec2").attr("style", "height:420px;");
	} else if (index2 == 6) {
		$(".s-sec2").attr("style", "height:470px;");
	}
	
	oTbl = document.getElementById("addTable2");
	var oRow = oTbl.insertRow();
	oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search()" class="w-addr'+ index2 + '" placeholder="경유지를 입력하세요"><input type="text" value="" class="w-time'+ index2 + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index2 + '"><input type="hidden" value="" class="w-lng'+ index2 + '"><img style="display:inline;" class="id-btn'+index2+'" src="assets/images/ico_minus.png" onClick="remove2()">';
	
	oCell.innerHTML = waypoint;
	
}
function insRow3() {
	
	if (index3 >= 6) {
		alert("경유지는 5개 이상 추가할 수 없습니다.");
		index3 = 6;
		return;
	}
	index3++;
	if (index3 == 2) {
		$(".s-sec3").attr("style", "height:270px;");
	} else if (index3 == 3) {
		$(".s-sec3").attr("style", "height:320px;");
	} else if (index3 == 4) {
		$(".s-sec3").attr("style", "height:370px;");
	} else if (index3 == 5) {
		$(".s-sec3").attr("style", "height:420px;");
	} else if (index3 == 6) {
		$(".s-sec3").attr("style", "height:470px;");
	}
	
	oTbl = document.getElementById("addTable3");
	var oRow = oTbl.insertRow();
	oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search()" class="w-addr'+ index3 + '" placeholder="경유지를 입력하세요"><input type="text" value="" class="w-time'+ index3 + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index3 + '"><input type="hidden" value="" class="w-lng'+ index3 + '"><img style="display:inline;" class="id-btn'+index3+'" src="assets/images/ico_minus.png" onClick="remove3()">';
	
	oCell.innerHTML = waypoint;
	
}
function insRow4() {
	
	if (index4 >= 6) {
		alert("경유지는 5개 이상 추가할 수 없습니다.");
		index4 = 6;
		return;
	}
	index4++;
	if (index4 == 2) {
		$(".s-sec4").attr("style", "height:270px;");
	} else if (index4 == 3) {
		$(".s-sec4").attr("style", "height:320px;");
	} else if (index4 == 4) {
		$(".s-sec4").attr("style", "height:370px;");
	} else if (index4 == 5) {
		$(".s-sec4").attr("style", "height:420px;");
	} else if (index4 == 6) {
		$(".s-sec4").attr("style", "height:470px;");
	}
	
	oTbl = document.getElementById("addTable4");
	var oRow = oTbl.insertRow();
	oRow.onmouseover=function(){oTbl.clickedRowIndex=this.rowIndex}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
	var oCell = oRow.insertCell();
	
	//삽입될 Form Tag
	var waypoint = '<input type="text" value="" onclick="search()" class="w-addr'+ index4 + '" placeholder="경유지를 입력하세요"><input type="text" value="" class="w-time'+ index4 + '" placeholder="아침 8:00"><input type="hidden" value="" class="w-lat'+ index4 + '"><input type="hidden" value="" class="w-lng'+ index4 + '"><img style="display:inline;" class="id-btn'+index4+'" src="assets/images/ico_minus.png" onClick="remove4()">';
	
	oCell.innerHTML = waypoint;
	
}
//Row 삭제
function remove() {
	index--;
	try {
		oTbl.deleteRow(oTbl.clickedRowIndex);
	} catch(TypeError) {
	}
	if (index >= 6) {
		$(".s-sec").attr("style", "height:420px;");
	} else if (index == 2 || index == 1) {
		$(".s-sec").attr("style", "height:220px;");
	} else if (index == 3) {
		$(".s-sec").attr("style", "height:270px;");
	} else if (index == 4) {
		$(".s-sec").attr("style", "height:320px;");
	} else if (index == 5) {
		$(".s-sec").attr("style", "height:370px;");
	}
}
function remove1() {
	index1--;
	try {
		oTbl.deleteRow(oTbl.clickedRowIndex);
	} catch(TypeError) {
	}
	if (index1 >= 6) {
		$(".s-sec1").attr("style", "height:420px;");
	} else if (index1 == 2 || index1 == 1) {
		$(".s-sec1").attr("style", "height:220px;");
	} else if (index1 == 3) {
		$(".s-sec1").attr("style", "height:270px;");
	} else if (index1 == 4) {
		$(".s-sec1").attr("style", "height:320px;");
	} else if (index1 == 5) {
		$(".s-sec1").attr("style", "height:370px;");
	}
}
function remove2() {
	index2--;
	try {
		oTbl.deleteRow(oTbl.clickedRowIndex);
	} catch(TypeError) {
	}
	if (index2 >= 6) {
		$(".s-sec2").attr("style", "height:420px;");
	} else if (index2 == 2) {
		$(".s-sec2").attr("style", "height:220px;");
	} else if (index2 == 3) {
		$(".s-sec2").attr("style", "height:270px;");
	} else if (index2 == 4) {
		$(".s-sec2").attr("style", "height:320px;");
	} else if (index2 == 5) {
		$(".s-sec2").attr("style", "height:370px;");
	}
}
function remove3() {
	index3--;
	try {
		oTbl.deleteRow(oTbl.clickedRowIndex);
	} catch(TypeError) {
	}
	if (index3 >= 6) {
		$(".s-sec3").attr("style", "height:420px;");
	} else if (index3 == 2) {
		$(".s-sec3").attr("style", "height:220px;");
	} else if (index3 == 3) {
		$(".s-sec3").attr("style", "height:270px;");
	} else if (index3 == 4) {
		$(".s-sec3").attr("style", "height:320px;");
	} else if (index3 == 5) {
		$(".s-sec3").attr("style", "height:370px;");
	}
}
function remove4() {
	index4--;
	try {
		oTbl.deleteRow(oTbl.clickedRowIndex);
	} catch(TypeError) {
	}
	if (index4 >= 6) {
		$(".s-sec4").attr("style", "height:420px;");
	} else if (index4 == 2) {
		$(".s-sec4").attr("style", "height:220px;");
	} else if (index4 == 3) {
		$(".s-sec4").attr("style", "height:270px;");
	} else if (index4 == 4) {
		$(".s-sec4").attr("style", "height:320px;");
	} else if (index4 == 5) {
		$(".s-sec4").attr("style", "height:370px;");
	}
}
function search() {
	window.open("swp"+oTbl.clickedRowIndex, "child", "width=1350, height=820, left=300, top=100");
}

$(".mate-ic-btn").on("click", function() {
	$(".mate-s-addr").val("");
	$(".s-lat").val("");
	$(".s-lng").val("");
	$(".w-addr2").val("");
	$(".w-lat2").val("");
	$(".w-lng2").val("");
	$(".w-addr3").val("");
	$(".w-lat3").val("");
	$(".w-lng3").val("");
	$(".w-addr4").val("");
	$(".w-lat4").val("");
	$(".w-lng4").val("");
	$(".w-addr5").val("");
	$(".w-lat5").val("");
	$(".w-lng5").val("");
	$(".w-addr6").val("");
	$(".w-lat6").val("");
	$(".w-lng6").val("");
	$(".mate-e-addr").val("");
	$(".e-lat").val("");
	$(".e-lng").val("");
})
function ssp() {
	window.open("ssp", "child", "width=1350, height=820, left=1000, top=50");
}
function sep() {
	window.open("sep", "child", "width=1350, height=820, left=1000, top=50");
}
// $(".mate-s-addr").on("click", function() {
	
// })
// $(".mate-e-addr").on("click", function() {
	
// })

</script>
</html>