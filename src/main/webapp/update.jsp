<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Data</title>
</head>
<body>
<a href="./index.jsp" style="font-size: 22px;color: red; margin-bottom: 30px;">See Movies</a>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:4200/movies" user="root" password="Password"/>

<%
    String id = request.getParameter("id");
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String release_date = request.getParameter("release_date");
    String rating = request.getParameter("rating");
    String description = request.getParameter("description");
%>

<c:set var="title" value="<%=title%>"/>
<c:set var="director" value="<%=director%>"/>
<c:set var="release_date" value="<%=release_date%>"/>
<c:set var="rating" value="<%=rating%>"/>
<c:set var="description" value="<%=description%>"/>
<c:set var="id" value="<%=id%>"/>

<sql:update dataSource="${db}" var="table">
    update films set Title = ?, Director = ?, release_date = ?, Rating =?, Description = ?
    where movie_id = ?

    <sql:param value="${title}"/>
    <sql:param value="${director}"/>
    <sql:param value="${release_date}"/>
    <sql:param value="${rating}"/>
    <sql:param value="${description}"/>
    <sql:param value="${id}"/>
</sql:update>


</body>
</html>
