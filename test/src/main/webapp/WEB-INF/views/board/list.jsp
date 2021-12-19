<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <style>
  	.th1 {
  		width : 400px;
  	}
  </style>
  
  <script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous">
  </script>

<title>Insert title here</title>
</head>
<body>
	<h1>게시판 목록</h1>
	
	<table>
		<tr>
			<th>글 번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
			<th>작성일</th>	
		</tr>
		<c:forEach items = "${list}" var = "list">
		<tr>
			<th><c:out value="${list.boardnum}"/></th>
			<th>
				<a class = "move" href = '/board/get?boardnum=<c:out value="${list.boardnum}"/>'>
					<c:out value="${list.title}"/>
				</a>
			</th>
			<th class = "th1"><c:out value="${list.content}"/></th>
			<th><c:out value="${list.writer}"/></th>
			<th><fmt:formatDate pattern = "yyyy/MM/dd" value = "${list.regdate}"/></th>
		</tr>
		</c:forEach>
	</table>
	
	<form id = "moveForm" method = "get">
	</form>
	
	<button type = "button" onClick = "location.href = '/board/enroll'">글 작성</button>
	
	<script>
	
		let moveForm = $("#moveForm");
		
		$(.move).on("click", function(e)) {
			e.preventDefault();
			
			moveForm.append("<input type = 'hidden' name = 'boardnum' value = '"+ $(this).attr("href") + "'>");
			moveForm.attr("action", "/board/get");
			moveForm.submit();
		}	
	</script>

</body>
</html>