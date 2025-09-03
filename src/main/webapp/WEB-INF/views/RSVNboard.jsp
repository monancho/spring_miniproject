
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
    
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>DevCommunity - 게시판</title>
  <link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
<c:url var="searchUrl" value="RSVNboard">
    <c:param name="searchKeyword" value="${searchKeyword}" />
    <c:param name="searchType" value="${searchType}" />
</c:url>
  <!-- 헤더 -->
  <jsp:include page="header.jsp"></jsp:include>

  <!-- 메인 -->
  <main>
    <section class="board-list">

      <!-- 제목 -->
      <div class="section-header">
        <h2>예약글</h2>
      </div>

   

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
            <td><a href="RSVNcontent?bnum=${boardDto.bnum}&pageNum=${pageNum}">${boardDto.btitle}</a></td>
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
      	"${searchUrl}&pageNum=0">
      		◀
      	</a>
      </c:if>
      
      <c:if test="${startPage > 1}">	
		<a href = 
		"${searchUrl}&pageNum=${startPage-1}">
			« 이전
		</a>
	</c:if>
      
      <c:forEach begin="${startPage}" end="${endPage<=totalPage?endPage:totalPage}" var="i">	
		<c:choose>
			<c:when test="${i == pageNum}">	
				<a href=
					"${searchUrl}&pageNum=${i}"> 
					<b style="color:red;">
						${i+1} 페이지 
					</b>
				</a> |		
		</c:when>
		<c:otherwise>		
			<a href=
			"${searchUrl}&pageNum=${i}">
			 ${i+1} 페이지 
			 </a> |		
		</c:otherwise>
		</c:choose>
	</c:forEach>
      <c:if test="${endPage<=totalPage}">	
		<a href = 
		"${searchUrl}&pageNum=${endPage + 1}">
			다음 »
		</a>
	</c:if>
      <c:if test="${currentPage < totalPage}">	
		<a href = "${searchUrl}&pageNum=${totalPage}">
		▶</a>
	</c:if>
	</nav>
      
      
    </section>
  </main>

  <!-- 푸터 -->
  <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
