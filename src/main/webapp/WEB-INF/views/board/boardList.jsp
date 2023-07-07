<%--
  Created by IntelliJ IDEA.
  User: vic
  Date: 2023-07-06
  Time: 오후 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
    <h2>여기는 게시판입니다.</h2>
    <table class="table">
        <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>내용</th>
                <th>글쓴이</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${boardList}" var="board">
        <tr>
            <td>${board.boardId}</td>
            <td>${board.title}</td>
            <td>${board.content}</td>
            <td>${board.regId}</td>
        </tr>
        </c:forEach>
        </tbody>
    </table>

</head>
<body>

</body>
</html>
