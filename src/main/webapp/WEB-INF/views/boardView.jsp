
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>DevCommunity - 게시판</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>

  <!-- 헤더 -->
  <jsp:include page="header.jsp"></jsp:include>

  <!-- 메인 -->
  <main>
    <section class="board-list">

      <!-- 제목 -->
      <div class="section-header">
        <h2>게시판</h2>
        <a href="write" class="btn btn-primary">글쓰기</a>
      </div>

      <!-- 검색창 -->
      <form class="search-bar" action="boardlist" method="get">
        <!-- 검색 조건 -->
        <select name="searchType">
          <option value="btitle" <c:if test="${searchType eq 'btitle'}">selected</c:if>>제목</option>
          <option value="bcontent" <c:if test="${searchType eq 'bcontent'}">selected</c:if>>내용</option>
          <option value="bwriter" <c:if test="${searchType eq 'bwriter'}">selected</c:if>>글쓴이</option>
        </select>

    <!-- 
        <select name="orderType">
          <option value="bno">최신순</option>
          <option value="bhit">인기순</option>
        </select>
        --> 

        <!-- 검색어 입력 -->
        <input type="text" name="searchKeyword" placeholder="검색어 입력" value="${searchKeyword}">

        <!-- 검색 버튼 -->
        <button type="submit" class="btn btn-secondary">검색</button>
      </form>

      <!-- 게시글 테이블 -->
      <table class="table-board">
        <thead>
          <tr>
            <th>번호</th>
            <th>제목</th>
            <th>아이디</th>
            <th>조회수</th>
            <th>날짜</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${bDtos}" var="boardDto">
          <tr>
            <td>${bCnt - boardDto.rnum + 1}</td>
            <td><a href="content?bnum=${boardDto.bnum}&pageNum=${pageNum}">${boardDto.btitle}</a></td>
            <td>${boardDto.bwriter}</td>
            <td>${boardDto.bhit}</td>
            <td><fmt:formatDate value="${boardDto.bdate}" pattern="yyyy-MM-dd"/></td>
          </tr>
        </c:forEach>
       
        </tbody>
      </table>

      <!-- 페이징 -->
     
      <nav class="pagination">
      <c:if test="${currentPage > 0}">
      	<a href = 
      	"boardlist?pageNum=0&searchType=${searchType}
		&searchKeyword=${searchKeyword}">
      		◀
      	</a>
      </c:if>
      
      <c:if test="${startPage > 1}">	
		<a href = 
		"boardlist?pageNum=${startPage-1}
		&searchType=${searchType}
		&searchKeyword=${searchKeyword}">
			« 이전
		</a>
	</c:if>
      
      <c:forEach begin="${startPage}" end="${endPage<=totalPage?endPage:totalPage}" var="i">	
		<c:choose>
			<c:when test="${i == pageNum}">	
		<a href=
		"boardlist?pageNum=${i}
		&searchType=${searchType}
		&searchKeyword=${searchKeyword}"> 
			<b style="color:red;">
				${i+1} 페이지 </b>
		</a> |		
		</c:when>
		<c:otherwise>		
			<a href=
			"boardlist?pageNum=${i}
			&searchType=${searchType}
			&searchKeyword=${searchKeyword}">
		 ${i+1} 페이지 </a> |		
		</c:otherwise>
		</c:choose>
	</c:forEach>
      <c:if test="${endPage<=totalPage}">	
		<a href = 
		"boardlist?pageNum=${endPage + 1}
		&searchType=${searchType}
		&searchKeyword=${searchKeyword}">다음 »</a>
	</c:if>
      <c:if test="${currentPage < totalPage}">	
		<a href = "boardlist?pageNum=${totalPage}
		&searchType=${searchType}
		&searchKeyword=${searchKeyword}">
		▶</a>
	</c:if>
	</nav>
      
      
    </section>
  </main>

  <!-- 푸터 -->
  <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
