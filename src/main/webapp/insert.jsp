<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add movie</title>
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
    <div style="display: flex;flex-direction: column; align-items: center; gap: 30px;">
        <h1>Add a movie</h1>
        <form action="add.jsp" method="post"
              style="display: flex;flex-direction: column; gap: 15px;">
            <label>
                Title
                <br>
                <input type="text"  name="title" placeholder="Title" required/>
            </label>

            <label>
                Director
                <br>
                <input type="text"  name="director" placeholder="Director" required/>
            </label>

            <label>
                Release Date
                <br>
                <input type="date" name="release_date" placeholder="Release Date" required/>
            </label>

            <label>
                Rating
                <br>
                <input type="number" min="1.0" max="10.0" step="0.1" name="rating" placeholder="Rating" required/>
            </label>

            <label>
                Description
                <br>
                <input type="text" name="description" placeholder="Description" required/>
            </label>

            <button type="submit">Add</button>
        </form>
    </div>
</body>
</html>
