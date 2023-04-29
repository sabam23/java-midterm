<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Delete</title>
</head>
<body>
<a href="./index.jsp" style="font-size: 22px;color: red; margin-bottom: 30px;">See Movies</a>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:4200/movies" user="root" password="Password"/>

<%
    String id = request.getParameter("id");
%>

<c:set var="id" value="<%=id%>"/>

<sql:update var="affectedRows" dataSource="${db}">
    delete from films where movie_id = ?
    <sql:param value="${id}"/>
</sql:update>

</body>
</html>
