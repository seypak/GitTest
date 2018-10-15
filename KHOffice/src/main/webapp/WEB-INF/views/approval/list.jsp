<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<style>
  table {
    width: 1080px;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
  	colspan:center;
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
</style>
</head>
<body>
<h1>전자결재</h1>
<h2 align="left">결재요청문서</h2>
<h3>${report_no}</h3>
<div style="width:1080px;"align="right">
<%-- <form action="list.do" method="post">
<input type="text" name="search">
<input type="submit" value = "검색">
</form> --%>
<button type="button" onclick="javacript:location.href='list.do?member_no=${member_no}&report_no=0'">품의서</button>
<button type="button" onclick="javacript:location.href='list.do?member_no=${member_no}&report_no=1'">휴가신청서</button>
<button type="button" onclick="javacript:location.href='list.do?member_no=${member_no}&report_no=2'">업무협조요청서</button>
</div>
<c:choose>
<c:when test="${report_no eq 0}">
<table>
	<tr>
		<th>문서번호</th>
		<th>제목</th>
		<th>작성일</th>
		<th>작성자</th>
	</tr>
	<c:forEach var="board" items="${list}">
	<tr>
		<td><c:out value="${board.conreport_no}"/></td>
		<td><a href="detail.do?conreport_no=${board.conreport_no}"style="color: black;">${board.title}</a></td>
		<td>${board.reg_date}</td>
		<td>${board.name}</td>
	</tr>
	</c:forEach>
</table>
</c:when>
<c:when test="${report_no eq 1}">
<table>
	<tr>
		<th>문서번호</th>
		<th>제목</th>
		<th>작성일</th>
		<th>신청자</th>
		<th>업무대리인</th>
	</tr>
	<c:forEach var="board" items="${list}">
	<tr>
		<td><c:out value="${board.vacreport_no}"/></td>
		<td><a href="detail.do?vacreport_no=${board.vacreport_no}"style="color: black;">${board.type} 신청서입니다.</a></td>
		<td>${board.reg_date}</td>
		<td>${board.name}</td>
		<td>${board.substitute}</td>
	</tr>
	</c:forEach>
</table>
</c:when>
</c:choose>






					     <div style="width:1080px;"align="center">
						<table >
						  	<tr>
						  		<td align="center" style="border: 0px" >
								<c:set var="pageCount" value="${count/pageSize+(count%pageSize==0 ? 0:1)}"/>
								<c:set var="pageBlock" value="${10}"/>
								<fmt:parseNumber var="result" value="${currentPage / 10}" integerOnly="true" />   
								<c:set var="startPage" value="${result * 10 +1}"/>   
								<c:set var="endPage" value="${startPage + pageBlock-1}"/>
								<c:if test="${endPage > pageCount}">
									<c:set var="endPage" value="${pageCount}"/>
								</c:if>
								<c:if test="${startPage>10}">
									<a href="list.do?member_no=${member_no}&report_no=${report_no}&pageNum=${startPage-10}" style="color: black;">[이전]</a>
								</c:if>
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
									<a href="list.do?member_no=${member_no}&report_no=${report_no}&pageNum=${i}"style="color: black;">[${i}]</a>
								</c:forEach>
								<c:if test="${endpage<pageCount}">
									<a href="list.do?member_no=${member_no}&report_no=${report_no}&pageNum=${startPage+10}" style="color: black;">[다음]</a>
								</c:if>
							</td>
						</tr>
						</table>
						</div>	    
					
					  <%--   <c:otherwise>
					    <div  style="width:1080px;"align="center" >
					      	<table>
						  	<tr>
						  		<td style="border: 0px" >
								<c:set var="pageCount" value="${count/pageSize+(count%pageSize==0 ? 0:1)}"/>
								<c:set var="pageBlock" value="${10}"/>
								<fmt:parseNumber var="result" value="${currentPage / 10}" integerOnly="true" />   
								<c:set var="startPage" value="${result *10 +1}"/>
								<c:set var="endPage" value="${startPage + pageBlock-1}"/>
								<c:if test="${endPage > pageCount}">
									<c:set var="endPage" value="${pageCount}"/>
								</c:if>
								<c:if test="${startPage>10}">
									<a href="list.do?pageNum=${startPage-10}&search=${search}" style="color: black;">[이전]</a>
								</c:if>
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
									<a href="list.do?pageNum=${i}&search=${search}"style="color: black;">[${i}]</a>
								</c:forEach>
								<c:if test="${endpage<pageCount}">
									<a href="list.do?pageNum=${startPage+10}&search=${search}" style="color: black;">[다음]</a>
								</c:if>
								</td>
							</tr>
							</table>
						</div>
					    </c:otherwise>--%>
<br>
<div style="width:1080px;"align="right">

<input type="button" value="글등록" onclick="javacript:location.href='boardInsert.do'">
</div>


</body>
</html>