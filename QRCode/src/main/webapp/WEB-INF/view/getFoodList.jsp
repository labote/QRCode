<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('#btn').click(function() {
			$('#foodForm').submit();
		});
	});
</script>
</head>
<body>
	<div>
		<form id="foodForm" action="${pageContext.request.contextPath}/admin/getFilmList" method="get">
				<select name="foodName">
				<option value="">카테고리 선택</option>
					<c:forEach var="f" items="${FoodList}">
					<c:if test="${f.foodName == foodName}">
						<option value="${f.foodName}" selected="selected">${f.foodName}</option>
					</c:if>
					<c:if test="${f.foodName != foodName}">
						<option value="${f.foodName}">${f.foodName}</option>
					</c:if>
				</c:forEach>
			</select>
			<button id="btn" type="button">QR 생성</button>
		</form>
	</div>
</body>
</html>