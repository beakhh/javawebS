<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>chart.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<script>
  'use strict';
  
  function chartChange() {
	  let part = document.getElementById("part").value;
	  
	  let str = '';
	  if(part == 'barV') {
		  str += '<form name="chartForm" method="post" action="chart2">';
		  str += '<table class="table table-bordered text-center>"';
		  str += '<tr><th>차트 주제목</th><td colspan="4"><input type="text" name="title" class="form-control"></td></tr>';
		  str += '<tr><th>차트 부제목</th><td colspan="4"><input type="text" name="subTitle" class="form-control"></td></tr>';
		  str += '';
		  str += '';
		  str += '';
		  str += '';
		  str += '';
		  str += '';
		  str += '';
		  str += '';
		  str += '';
		  str += '';
		  str += '';
		  str += '';
		  str += '';
		  str += '';
		  str += '</table>';
		  str += '</form>';
	  }
	  else if(part == 'pie') {
		  
	  }
	  $("#demo").html(str);
  }
</script>
<p><br/></p>
<div class="container">
  <h2>구글 차트 연습</h2>
  <div>
    <p>학습할 차트를 선택하세요..
      <select name="part" id="part" onchange="chartChange()">
        <option value="">차트선택</option>
        <option value="barV"  ${vo.part == 'barV'  ? 'selected' : ''}>수직막대차트</option>
        <option value="pie"   ${vo.part == 'pie'   ? 'selected' : ''}>원형차트</option>
      </select>
    </p>
    <hr/>
    <div id="demo"></div>
    <hr/>
    <div>
      <c:if test="${vo.part == 'barV'}"><jsp:include page="barVChart.jsp" /></c:if>
      <c:if test="${vo.part == 'pie'}"><jsp:include page="pieChart.jsp" /></c:if>
    </div>
  </div>
</div>
<p><br/></p>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>