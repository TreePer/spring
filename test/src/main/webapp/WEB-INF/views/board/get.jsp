<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.td1 {
		width : 400px;
	}
</style>

</head>
<body>
	<table>
		<tr>
			<td>제목</td>
			
		</tr>
		<tr>
			<td><c:out value="${pageInfo.title}"></c:out></td>
		</tr>
		<tr>
			<td>내용</td>
		</tr>
		<tr>
			<td class = "td1"><c:out value="${pageInfo.content}"></c:out></td>
		</tr>
		<tr>
			<td>작성자</td>
		</tr>
		<tr>
			<td><c:out value="${pageInfo.writer}"></c:out></td>
		</tr>
		<tr>
			<td>작성일</td>
		</tr>
		<tr>
			<td><fmt:formatDate pattern = "yyyy/MM/dd" value = "${pageInfo.regdate}"></fmt:formatDate></td>
		</tr>
		<tr>
			<td>
				<input type = "button" value = "수정하기" onclick = "location.href = '/board/update?boardnum=<c:out value="${pageInfo.boardnum}"/>'"> 
				<input type = "button" value = "돌아가기" onclick = "location.href = '/board/list'">
			</td>
		</tr>
	</table>
	

</body>
</html>