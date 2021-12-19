<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id = "updateForm" action = "/board/update" method = "post">
		<table>
			<tr>
				<td>제목</td>
			</tr>
			<tr>
				<td>
					<input type ="hidden" name = "boardnum" value = "${param.boardnum}">
					<input name = "title" value = '<c:out value = "${pageInfo.title}"/>'>
				</td>
			</tr>
			<tr>
				<td>내용</td> 
			</tr>
			<tr>
				<td><textarea rows = "5" name = "content"><c:out value = "${pageInfo.content}"/></textarea>
			</tr>
			<tr>
				<td>작성자</td>
			</tr>
			<tr>
				<td><input name = "writer" value = '<c:out value = "${pageInfo.writer}"/>'></td>
			</tr>
			<tr>
				<td>
					<input type = "submit" value = "수정하기" id = "submit">
					<input type = "button" value = "삭제하기" onclick = "location.href = '/board/delete?boardnum=<c:out value="${param.boardnum}"/>'">
					<input type = "button" value = "돌아가기" onclick = "location.href = '/board/list'">
				</td>
			</tr>
		</table>
	</form>


</body>
</html>