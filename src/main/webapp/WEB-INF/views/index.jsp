<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<h2 class="table_main">Main page</h2>
<table class="table_main">
    <tr>
        <th>Please, log in first using logins: anna@g.com or david@g.com and password: 12345678
            <button onclick="window.location.href='${pageContext.request.contextPath}/login'">
            Login page</button></th>
    </tr>
    <tr style="background-color: AliceBlue">
        <td>Anna has ADMIN role     [/cinema-halls,/movies -create; /movie-sessions -create-update-delete]</td></tr>
    <tr style="background-color: HoneyDew"><td>David has USER role     [/orders -read; /orders/complete -create]  </td></tr>


    <tr><td></td></tr><tr><td></td></tr>
    <tr><td>Register new user [anyone]</td></tr>
    <tr style="background-color: Lavender"><td>Email/login: <input type="email" id="email" placeholder="Email">
        Create password: <input type="password" id="password" placeholder="Password" autocomplete="new-password">
        Repeat password: <input type="password" id="repeatPassword" placeholder="Repeat password"></td></tr>
    <tr style="background-color: Lavender"><td>
        <button onclick="registerUser()">Register a new user with role USER [Post]</button></td></tr>


    <tr><td></td></tr><tr><td></td></tr>
    <tr><td>Retrieve data from DB</td></tr>
    <tr style="background-color: GhostWhite"><td>Show all movies from DB [anyone] <button onclick="showMovies()">/movies [Get]</button></td></tr>
    <tr style="background-color: GhostWhite"><td>Show all cinema halls from DB [anyone] <button onclick="showCinemaHalls()">/cinema-halls [Get]</button></td></tr>
    <tr style="background-color: GhostWhite"><td>Show movie sessions from DB [anyone] <button onclick="showMovieSessions()">/movie-sessions/available?movieId=2&date=19.06.2022 [Get]
    </button></td></tr>
    <tr style="background-color: HoneyDew"><td>Show orders from an authenticated user [user role] <button onclick="showOrders()">/orders [Get]</button></td></tr>


    <tr><td></td></tr><tr><td></td></tr>
    <tr><td>Add a movie to DB [admin role]</td></tr>
    <tr style="background-color: AliceBlue"><td>Title: <input type="text" id="title" placeholder="Title">
        Description: <textarea id="description-m" placeholder="Description" rows="1" cols="30"></textarea>
        <button onclick="addMovie()">Add a new movie [Post]</button></td></tr>

    <tr><td></td></tr>
    <tr><td>Add a cinema hall to DB [admin role]</td></tr>
    <tr style="background-color: AliceBlue"><td>Capacity: <input type="text" id="capacity" placeholder="Capacity #">
        Description: <textarea id="description-ch" placeholder="Description" rows="1" cols="30"></textarea>
        <button onclick="addCinemaHall()">Add a cinema hall [Post]</button></td></tr>

    <tr><td></td></tr>
    <tr><td>Add a movie session to DB [admin role]</td></tr>
    <tr style="background-color: AliceBlue"><td>Show time [format yyyy-mm-ddThh:mm]: <input type="text" id="showTime" placeholder="ex. 2022-07-14T19:00">
        Movie ID: <input type="text" id="movie-id" placeholder="Movie ID #">
        Cinema Hall ID: <input type="text" id="cinema-hall-id" placeholder="Cinema Hall #"></td></tr>
    <tr style="background-color: AliceBlue"><td><button onclick="addMovieSession()">Add a movie session [Post]</button></td></tr>
    <tr><td></td></tr>
</table>
</body>
</html>
