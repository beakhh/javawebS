<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>memberPwdFind.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
  <style>
  	th	{
  		text-align:center;
  		background-color: #eee;
  	}
  </style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/nav.jsp" />
	<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
	<p><br/></p>
	<div class="container">
		<h2>아이디 찾기</h2>
	  <form method="post">
	  	<table class="table table-bordered">
		  	<c:if test="${empty mid}">
		  		<tr>
		  			<th>성명</th>
		  			<td><input type="text" name="name" id="name" class="form-control" autofocus required /></td>
		  		</tr>
		  		<tr>
		  			<th>메일주소</th>
		  			<td><input type="text" name="toMail" id="toMail" class="form-control" autofocus required /></td>
		  		</tr>
	  		</c:if>
	  		
	  		<c:if test="${!empty mid}">
		  		<tr>
		  			<th >찾고자 하는 아이디</th>
		  			<td>
		  				${mid}
		  			</td>
		  		</tr>
	  		</c:if>
	  		<tr>
	  			<td colspan = "2" class="text-center">
	  				<input type="submit" value="아이디 찾기" class="btn btn-success" />
	  				<input type="reset" value="다시입력" class="btn btn-warning" />
	  				<input type="button" value="돌아기기" onclick="location.href='${ctp}/member/memberLogin';" class="btn btn-secondary" />
	  			</td>
	  		</tr>
	  		
	  	</table>
	  </form>
	  
	</div>
	<p><br/></p>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>