<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "/board/enroll" method = "post">
		<table>
			<tr>
				<td>제목</td>
				<td><input name = "title"></td>
			</tr>
			
			<tr>
				<td>내용</td>
				<td><textarea rows = "5" name = "content"></textarea> 
			</tr>
			
			<tr>
				<td>작성자</td>
				<td><input name = "writer"></td>
			</tr>
			<tr>
				<td><input type = "submit" value = "등록"></td>
			</tr>
			
		</table>
		
		
	
	</form>


</body>
</html>