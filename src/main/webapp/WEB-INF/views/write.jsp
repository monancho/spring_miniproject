<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>글쓰기</title>
  <link rel="stylesheet" href="resources/css/stylde.css">
</head>
<body>

  <!-- 헤더 -->
  <jsp:include page="header.jsp"></jsp:include>

  <!-- 메인 -->
  <main>
  <section class="write-form">
    <h2>글쓰기</h2>
    <form action="BBSinsertOk" method="post">
      <input type="hidden" id="bwriter" name="bwriter" value="${sessionScope.sid}" required>
      <label for="btitle">제목</label>
      <input type="text" id="btitle" name="btitle" required>
      
      <label for="btitle">예약</label>
      <input type="date" id="bdate" name="bdate" >

      <label for="bcontent">내용</label>
      <textarea id="bcontent" name="bcontent" rows="10" required></textarea>

      <button type="submit" class="btn btn-primary">등록</button>
      <button type="reset" class="btn btn-secondary">취소</button>
    </form>
  </section>
</main>


  <!-- 푸터 -->
  <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
