<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="./index.jsp" style=" color: red;font-size: 22px;">See movies</a>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:4200/movies" user="root" password="Password"/>

<%
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String release_date = request.getParameter("release_date");
    float rating = Float.parseFloat(request.getParameter("rating"));
    String description = request.getParameter("description");
%>

<c:set var="title" value="<%=title%>"/>
<c:set var="director" value="<%=director%>"/>
<c:set var="release_date" value="<%=release_date%>"/>
<c:set var="rating" value="<%=rating%>"/>
<c:set var="description" value="<%=description%>"/>

<sql:update dataSource="${db}" var="table">
    insert into movies.films( title, director, release_date, rating, description) values (?, ?, ?, ?, ?)
    <sql:param value="${title}"/>
    <sql:param value="${director}"/>
    <sql:param value="${release_date}"/>
    <sql:param value="${rating}"/>
    <sql:param value="${description}"/>
</sql:update>

</body>
</html>
