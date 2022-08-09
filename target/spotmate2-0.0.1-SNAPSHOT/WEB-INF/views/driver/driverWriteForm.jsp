<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="./assets/js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="/assets/css/spotMateMain.css">
<link rel="stylesheet" href="/assets/css/driverWriteForm.css">
</head>
<body>
<div id="wrap"  class="clearfix">
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<div id="contents" class="clearfix">
	<div class="f1 clearfix">
		<img src="/assets/images/bluelogo.png">
		<span>SPOT CARPOOL ��Ͻ�<br>
		���� ���� ����Ʈ�� 5,000P�Դϴ�.</span>
		<ul>
			<li>���������� ���� �ҿ�ð� 23��, 21km</li>
			<li>�Է����ֽ� SPOT CARPOOL ������ �����ø� ����� �����ּ���.</li>
		</ul>
	</div>
	<div class="s2 clearfix">
		<form>
			<p>����Ͻ� ��¥�� ��߽ð��Դϴ�.</p>
			<div class="fset">
				<input type="text" class="sdate" placeholder="2022.07.20 - 2022.08.20">
				<input type="text" class="stime" placeholder="��ħ 8:00">
			</div>
			<div class="sset">
				<p>����̹����� �̵� ����Դϴ�.</p>
				<img src="assets/images/bluelogo.png">
				<input type="text" class="splace" placeholder="������� �Է��ϼ���">
				<input type="text" placeholder="�������� �Է��ϼ���">
				<button><img src="assets/images/bluelogo.png"></button>
			</div>
			<div class="tset">
				<img src="/assets/images/topbanner.jpg">
				<p>ž�� ������ �ο� ��</p>
				<input type="text" placeholder="1��"> 
				<p>���� ������</p>
				<div class="deepsel">
					<table>
						<tr>
							<td><input type="checkbox" name="" value="nosmoke">������</td>
							<td><input class="td2" type="checkbox" name="" value="nosmoke">�ռҵ��� ����</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="" value="nosmoke">���� �������� �̿� ����</td>
							<td><input class="td2" type="checkbox" name="" value="nosmoke">�����ϰ� ���� ���� ��ȣ</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="" value="nosmoke">���� ����̹�</td>
							<td><input class="td2" type="checkbox" name="" value="nosmoke">�ݷ����� ž�� ����</td>
						</tr>
						<tr>
							<td ><input type="checkbox" name="" value="nosmoke">�ڵ��� ������ �̿� ����</td>
						</tr>
					</table>
				</div>
				<p>����̹����� �Ұ����ּ���</p>
				<textarea class="driverintroduce" placeholder="�ϰ���� ���� �����ּ���!"></textarea>
			</div>
		</form>
		<button>����ϱ�</button>
	</div>
</div>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</div>
</body>
</html>