<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="nav" role="navigation" aria-label="메인">
  <div class="nav__inner">
    <a class="brand" href="index.do">
      <span class="brand__dot"></span>DevCommunity
    </a>
    <nav class="links">
      <a href="index">홈</a>
      <a href="boardlist">게시판</a>
      
      <c:choose>
     	 <c:when test="${not empty sessionScope.sid}">      
        		<a href="mypage">        		
        		<b> ${sessionScope.sid}</b>
        		</a>
        		<a href="logout">로그아웃</a>
   		</c:when>
      
   		<c:otherwise>      
        		<a href="login">로그인</a>
		</c:otherwise>
      </c:choose>
    </nav>
  </div>
</header>
