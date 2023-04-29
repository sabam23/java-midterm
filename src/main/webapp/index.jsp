<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <title>Movies management</title>
    <style>
        table, th, td {
            border-collapse: collapse;
            border: none;
            text-align: center;
        }

        td, th {
            padding: 10px;
        }

        tr:nth-child(even) {background-color: #f2f2f2;}
    </style>
</head>

<body>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                    url="jdbc:mysql://localhost:4200/movies" user="root" password="Password"/>

<sql:query var="resultSet" dataSource="${db}">
    SELECT * FROM movies.films
</sql:query>
<a href="insert.jsp" style="font-size: 22px;color: red; margin-bottom: 30px;">Add new movie</a>
<table  border="2" width="100%">
    <thead>
    <tr>
        <th>Movie ID</th>
        <th>Title</th>
        <th>Director</th>
        <th>Release Date</th>
        <th>Rating</th>
        <th>Description</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="movie" items="${resultSet.rows}">
            <tr>
                <td><c:out value="${movie.movie_id}"/> </td>
                <td><c:out value="${movie.Title}"/> </td>
                <td><c:out value="${movie.Director}"/> </td>
                <td><c:out value="${movie.release_date}"/> </td>
                <td><c:out value="${movie.Rating}"/> </td>
                <td><c:out value="${movie.Description}"/> </td>
                <td><a href="./edit.jsp?id=${movie.movie_id}">Edit</a> </td>
                <td><a href="./delete.jsp?id=${movie.movie_id}">Delete</a></td>
            </tr>

    </c:forEach>
    </tbody>
</table>

</body>
</html>

</html>
