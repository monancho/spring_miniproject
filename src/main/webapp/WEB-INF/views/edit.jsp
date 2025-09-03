<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>글 수정</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <jsp:include page="header.jsp"></jsp:include>

  <main>
    <section class="form-container">
      <h2>글 수정</h2>
      <form action="BBSeditOk" method="post"> 
        <!-- 글 번호 (숨김) -->
        <input type="hidden" name="bnum" value="${bDto.bnum}">

        <label for="title">제목</label>
        <input type="text" id="title" name="btitle" value="${bDto.btitle}" required>

        <label for="content">내용</label>
        <textarea id="content" name="bcontent" rows="10" required>${bDto.bcontent}</textarea>

        <div class="form-actions">
          <button type="submit" class="btn btn-primary">수정 완료</button>
          <a href="content?bnum=${bDto.bnum}" class="btn btn-secondary">취소</a>
        </div>
      </form>
    </section>
  </main>

  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
