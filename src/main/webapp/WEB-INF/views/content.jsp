<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>게시글 보기</title>
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
    
        .comment-section {
      margin-top: 3rem;
      border-top: 2px solid #e5e7eb;
      padding-top: 1.5rem;
    }
    .comment-section h3 {
      font-size: 1.2rem;
      margin-bottom: 1rem;
    }
    .comment-list {
      margin-bottom: 1.5rem;
    }
    .comment {
      padding: 0.8rem 1rem;
      border: 1px solid #e5e7eb;
      border-radius: 8px;
      margin-bottom: 0.8rem;
      background: #f9fafb;
    }
    .comment-meta {
      font-size: 0.85rem;
      color: #6b7280;
      margin-bottom: 0.4rem;
    }
    .comment-content {
      font-size: 0.95rem;
      color: #374151;
    }

    /* 댓글 입력 폼 */
    .comment-form textarea {
      width: 100%;
      height: 80px;
      padding: 0.6rem;
      border: 1px solid #d1d5db;
      border-radius: 6px;
      resize: vertical;
      font-family: inherit;
      font-size: 0.95rem;
      margin-bottom: 0.6rem;
    }
    .comment-form button {
      padding: 0.5rem 1rem;
      background: #2563eb;
      color: white;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      font-size: 0.9rem;
    }
    .comment-form button:hover {
      background: #1e40af;
    }
    
    .btn-delete {
  margin-left: 8px;
  padding: 2px 8px;
  font-size: 0.8rem;
  background: #2563eb;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.btn-delete:hover {
  background: #b91c1c;
}
    
  </style>
</head>
<body>

<c:url var="searchUrl" value="boardlist">
    <c:param name="searchKeyword" value="${searchKeyword}" />
    <c:param name="searchType" value="${searchType}" />
</c:url>
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
        <a href="${searchUrl}&pageNum=${pageNum}" class="btn btn-secondary">목록</a>
      </div>

      <!-- 이전글 / 다음글 -->
    <!--   <div class="content-nav">
        <div class="prev">
          <span>이전글</span> 
          <!-- <a href="content.do?bnum=${preContent.bnum}"> -->
        <!--    ${preContent.btitle}
          </a>
        </div>
        <div class="next">
          <span>다음글</span>
        <!--   <a href="content.do?bnum=${nextContent.bnum}">
           ${nextContent.btitle}
          </a> -->
     <!--   </div>
      </div> 
      
        <!-- 댓글 영역 -->
      <div class="comment-section">
        <h3>댓글</h3>

        <!-- 댓글 작성 폼 -->
        <c:if test="${not empty sessionScope.sid}">
	        <div class="comment-form">
	          <form action="CMTinsert" method="post">
	            <input type="hidden" name="bnum" value="${bDto.bnum}">
	            <input type="hidden" name="memberid" value="${sessionScope.sid}">
	            <textarea name="ccontent" placeholder="댓글을 입력하세요..." required></textarea>
	            <button type="submit">등록</button>
	          </form>
	        </div>
	      </div>
      <br>
      </c:if>
      <!-- 댓글 목록 -->
<div class="comment-list">
  <c:forEach var="cmt" items="${cDtos}">
    <div class="comment">
      <div class="comment-meta">
        ${cmt.memberid} · ${cmt.cdate}
        <c:if test="${sessionScope.sid eq cmt.memberid}">
          <!-- 본인 댓글일 때만 삭제 버튼 보임 -->
          <form action="CMTdelete" method="post" style="display:inline;">
            <input type="hidden" name="cnum" value="${cmt.cnum}">
            <input type="hidden" name="bnum" value="${bDto.bnum}">
            <button type="submit" class="btn-delete">삭제</button>
          </form>
        </c:if>
      </div>
      <div class="comment-content">
        ${cmt.ccontent}
      </div>
    </div>
  </c:forEach>
</div>

 
        </div>
      
    </div>
  </main>

  <!-- footer include -->
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
