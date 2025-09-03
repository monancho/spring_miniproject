<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>예약글 보기</title>
  <link rel="stylesheet" href="resources/css/style.css">
  <style>
    /* 이전글/다음글 좌우 배치 */
    .content-nav {
      border-top: 1px solid #e5e7eb;
      padding-top: 1rem;
      margin-top: 2rem;
      display: flex;
      justify-content: space-between;
    }
    .content-nav div {
      flex: 1;
    }
    .content-nav .prev {
      text-align: left;
    }
    .content-nav .next {
      text-align: right;
    }
  </style>
</head>
<body>
  <!-- header include -->
  <jsp:include page="header.jsp"></jsp:include>

  <main>
    <div class="content-view">
      <!-- 글 제목 -->
      <h2 class="content-title">
        <%-- 실제 데이터 --%>
        ${bDto.btitle}
        <%-- 더미 데이터 확인용 --%>
      </h2>

      <!-- 메타 정보 -->
      <div class="content-meta">
        <span>작성자: 
          ${bDto.bwriter}
        </span>
        <span>조회수: 
          ${bDto.bhit}
        </span>
        <span>날짜: 
          ${bDto.bdate}
        </span>
      </div>

      <!-- 본문 -->
      <div class="content-body">
        ${bDto.bcontent}
       
      </div>

      <!-- 수정/삭제 버튼 -->
      <div class="content-actions">
      <c:if test="${sessionScope.sid eq bDto.bwriter}"> <!-- 자기가 쓴 글만 수정 삭제 버튼 보임 -->
        <a href="BBSedit?bnum=${bDto.bnum}&pageNum=${pageNum}" class="btn btn-primary">수정</a>
        <a href="BBSdelete?bnum=${bDto.bnum}&pageNum=${pageNum}" class="btn btn-secondary">삭제</a>
       </c:if>
        <a href="RSVNboard?pageNum=${pageNum}" class="btn btn-secondary">목록</a>
      </div>

      <!-- 이전글 / 다음글 -->
      <div class="content-nav">
        <div class="prev">
          <span>이전글</span>
          <!-- <a href="content.do?bnum=${preContent.bnum}"> -->
            ${preContent.btitle}
          </a>
        </div>
        <div class="next">
          <span>다음글</span>
        <!--   <a href="content.do?bnum=${nextContent.bnum}">
           ${nextContent.btitle}
          </a> -->
        </div>
      </div>
    </div>
  </main>

  <!-- footer include -->
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
