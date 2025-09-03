<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%Date now = new Date();%>

<%SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
String today = sf.format(now);%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>글쓰기</title>
  <link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<c:set var="ymd" value="<%=new java.util.Date()%>" />
	

  <!-- 헤더 -->
  <jsp:include page="header.jsp"></jsp:include>

  <!-- 메인 -->
  <main>
  <section class="write-form">
    <h2>글쓰기</h2>
    <form action="RSVNinsertOk" method="post">
      <input type="hidden" id="bwriter" name="bwriter" value="${sessionScope.sid}" required>
      <label for="btitle">제목</label>
      <input type="text" id="btitle" name="btitle" required>
      
      <label for="bdate">예약</label>
      <input type="date" id="bdate" name="bdate" value="<%= today %>" min="<%= today  %>" required="required">

      <label for="bcontent">내용</label>
      <textarea id="bcontent" name="bcontent" rows="10" required></textarea>

      <button type="submit" class="btn btn-primary">등록</button>
      <button type="reset" class="btn btn-secondary">취소</button>
      <a href="BBSinsert" class="btn btn-secondary"> 돌아가기</a>
    </form>
  </section>
</main>


  <!-- 푸터 -->
  <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
