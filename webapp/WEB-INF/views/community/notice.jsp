<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
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
	
	<title>NOTICE</title>

</head>

<body>
	<!-- header -->
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
    <!-- // header -->
    
	<!-- content -->
	<section class="contents_wrapper content">
            <h2 class="hidden">content</h2>
                <section class="banner">
                    <h2 class="hidden">banner</h2>
                    <div class="login_banner">
                        <p></p>
                    </div>
                    <div class="banner_text clear">
                        <div class="text_lft">
                            <h2>????????????</h2>
                            <h2>COMMUNITY NOTICE</h2>
                        </div>
                        <div class="text_rit">
                            <h3>????????? ????????? ??????????????? ?????? ?????? ???????????????.</h3>
                            <h3>??? ?????? ????????? ??????????????? 1:1 ??????????????? ??????????????????.</h3>
                        </div>
                    </div>
                    
        </section>
        <section class="sub_wrap">
            <div class="sub_nav clear">
                <ul>
                    <li class="sub_faq"><a href="/notice/1">NOTICE</a></li>
                    <li><a href="javascript:void(0);">FAQ</a></li>
                    <li><a href="/event">EVENT</a></li>
                </ul>
            </div>
        </section>

        <!-- inner -->
        <section>
            <div class="inner">
                <div id="notice_board" class="notice_cover">
					<div id="notice_list" class="notice_list">
						<form action="/notice/1" method="get">
                            <div class="notice_bar">
                                <input id="startDate" name="startDate" type="date" value=""> <span> - </span> <input id="endDate" name="endDate" type="date" value="">
                                <select name="noti_option">
                                    <option value="">??????</option>
                                    <option value="season">???????????????</option>
                                    <option value="carpool">??????1??????</option>
                                    <option value="hitchhike">???????????????</option>
                                    <option value="mate">?????????</option>
                                    <option value="notice">????????????</option>
                                    <option value="event">?????????</option>
                                </select>
                                <input type="text" id="notice_search" name="noticeSearch" value="" placeholder="???????????? ??????????????????">
                                <button type="submit" class="">????????????</button>
                                <a href="/myQnaMain"><button type="button" class="">1:1 ????????????</button></a>
                            </div>
                        </form>
                        <h3>????????????</h3>
						<table class="notice_table">
                            <caption>????????????</caption>
							<thead>
								<tr>
									<th>??????</th>
                                    <th>??????</th>
                                    <th>??????</th>
                                    <th>?????????</th>
                                    <th>????????????</th>
                                    <th>?????????</th>
                                    <th>??????</th>
								</tr>
							</thead>
							<tbody>
							
								<c:forEach items="${nMap.nList}" var="nVo">
									<tr id="tr${nVo.no}">
	                                    <td>${nVo.rn}</td>
	                                    <td>${nVo.type}</td>
	                                    <td class="text-left" onclick="nCount(${nVo.no})">${nVo.title}</td>
	                                    <td>${nVo.hit}</td>
	                                    <td>${nVo.regDate}</td>
	                                    <td>${nVo.admin}</td>
	                                    <c:if test="${authUser.id == 'spotmate'}">
	                                    	<td><button id="delete" onclick="nDelete(${nVo.no})" type="button">[??????]</button></td>
	                                    </c:if>
	                                </tr>
	                           	</c:forEach>
							</tbody>
						</table>
			
					<div id="notice_paging">
						<ul>
							<c:if test="${nMap.prev == true}">
								<li><a href="/notice/1"> <img class="notice_arrow" src="/assets/images/chevron-double-left.png"></a></li>
								<li><a href="/notice/${crtPage-1}"> <img class="notice_arrow" src="/assets/images/chevron-left.png"></a></li>
							</c:if>
							<c:forEach begin="${nMap.startPageNum}" end="${nMap.endPageNum}" step="1" var="page">
								<c:choose>
									<c:when test="${nMap.crtPage == page}">
										<li class="active"><a href="/notice/${page}">${page}</a></li>
										<input type="hidden" value="${page}" class="crtPage">
									</c:when>
									<c:otherwise>
										<li><a href="/notice/${page}">${page}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${nMap.next == true}">					
								<li><a href="/notice/${nMap.crtPage+1}"> <img class="notice_arrow" src="/assets/images/chevron-right.png">
								</a></li>
								<li><a href="/notice/${nMap.endPageNum}"> <img class="notice_arrow" src="/assets/images/chevron-double-right.png">
							</a></li>
							</c:if>
						</ul>
					</div>

						<a id="btn_write" href="/notice/write">?????????</a>
					</div>
					<!-- //list -->
				</div>
				<!-- //board -->
            </div>
            <!-- inner -->
        </section>
	<!-- //content -->

	<!-- footer -->
    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    <!-- footer -->
</body>
<script>
document.getElementById("startDate").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);
document.getElementById("endDate").value = new Date(new Date().getTime() - (new Date().getTimezoneOffset() * 60000)).toISOString().slice(0, 10);
	function nDelete(noticeNo) {
		
		$.ajax({
			url : "${pageContext.request.contextPath}/notice/delete",		
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(noticeNo),
			dataType : "json",
			success : function(result){
				if (result == 1) {
					$("#tr"+noticeNo).remove();
				} else {
					return;
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
				return;
			}
		});
		alert("?????????????????????!");
	}
	
	function nCount(noticeNo) {
		location.href="/notice/read/"+noticeNo;
	}
</script>
</html>