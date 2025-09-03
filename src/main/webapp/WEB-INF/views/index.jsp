
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>DevCommunity - 홈</title>
  <link rel="stylesheet" href="resources/css/style.css">
</head>
<body>

  <!-- 헤더 -->
  <jsp:include page="header.jsp"></jsp:include>

  <!-- 메인 -->
  <main>
    <!-- Hero 영역 -->
    <section class="hero">
      <h1>개발자들이 연결되는 곳</h1>
      <p>질문하고, 배우고, 성장하세요. 한국어 기반 개발자 커뮤니티.</p>
      

      <!-- 검색창 -->
      <form class="search-box" action="boardlist" method="get">
        <input type="text" name="searchKeyword" placeholder="주제, 태그, 글 제목으로 검색">
        <button type="submit" class="btn btn-primary">검색</button>
      </form>
    </section>

    <!-- 최신글 영역 -->
    <section class="popular">
      <div class="section-header">
        <h2>최신글</h2>
        <a href="boardlist" class="view-all">전체 보기</a>
      </div>

      <div class="card-grid">
      <c:forEach items="${bDtos}" var="boardDto" begin="0" end="2">
        <div class="card">
          <h3><a href="content?bnum=${boardDto.bnum}">${boardDto.btitle}</a></h3>
          <p class="excerpt">
            ${boardDto.bcontent}
          </p>
          <div class="meta">
          	작성자: ${boardDto.bwriter} · 조회 ${boardDto.bhit} · ${boardDto.bdate}
          </div>
       </div>
	</c:forEach>
        
      </div>
    </section>
  </main>

  <!-- 푸터 -->
  <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
