<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Edit movie</title>
  <style>
    input {
      width: 300px;
      height: 40px;
      border: solid 1px gray;
      border-radius: 15px;
      padding-left: 10px;
    }

    button {
      width: 90px;
      height: 40px;
      border: none;
      border-radius: 15px;
      background: red;
      color: white;
    }
  </style>
</head>
<body>
<%
  String id = request.getParameter("id");
%>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:4200/movies" user="root" password="Password"/>

<c:set var="id" value="<%=id%>"/>

<sql:query var="resultSet" dataSource="${db}">
  SELECT * FROM films where movie_id = ?
  <sql:param value="${id}"/>
</sql:query>

<c:forEach var="movie" items="${resultSet.rows}" varStatus="loopStatus">
  <c:if test="${loopStatus.index == 0}">
    <div style="display: flex;flex-direction: column; align-items: center; gap: 30px;">
      <form action="./update.jsp?id=${id}" method="post"
            style="display: flex;flex-direction: column;gap: 15px;"
      >
        <label>
          <input type="text"  name="title" value="<c:out value="${movie.title}" />" />
        </label>

        <label>
          <input type="text"  name="director" value="<c:out value="${movie.director}" />" />
        </label>

        <label>
          <input type="date" name="release_date" value="<c:out value="${movie.release_date}" />" />
        </label>

        <label>
          <input type="text" name="rating" value="<c:out value="${movie.rating}" />" />
        </label>

        <label>
          <input type="text" name="description" value="<c:out value="${movie.description}" />"/>
        </label>

        <button type="submit">Edit</button>
      </form>
    </div>
  </c:if>
</c:forEach>

</body>
</html>
