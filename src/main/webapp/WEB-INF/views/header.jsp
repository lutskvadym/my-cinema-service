<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    * {box-sizing: border-box;}
    body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
      font-size: 14px;
    }
    .header {
      overflow: hidden;
      background-color: #f1f1f1;
      padding: 20px 10px;
    }
    .header a {
      float: left;
      color: black;
      text-align: center;
      padding: 14px;
      text-decoration: none;
      font-size: 16px;
      line-height: 22px;
      border-radius: 4px;
    }
    .header a.logo {
      font-size: 18px;
      font-weight: bold;
    }
    .header a:hover {
      background-color: #ddd;
      color: black;
    }
    .header a.active {
      background-color: dodgerblue;
      color: white;
    }
    .header-right {
      float: right;
    }
    @media screen and (max-width: 500px) {
      .header a {
        float: none;
        display: block;
        text-align: left;
      }
      .header-right {
        float: none;
      }
    }
    .table_main {
      font-family: arial, sans-serif;
      border-collapse: collapse;
      width: 70%;
      text-align: center;
      margin: auto;
    }
    .table_main th, td {
      border: 1px solid #dddddd;
      text-align: left;
      padding: 8px;
    }
    .table_main textarea {
      vertical-align:middle;
    }
  </style>
  <title>Main page</title>
</head>
<body>
<script>
  function registerUser(){
    let repeatPassword = document.querySelector('#repeatPassword');
    let password = document.querySelector('#password');
    let email = document.querySelector('#email');
    let xhr = new XMLHttpRequest();
    let url = "register";
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-Type", "application/json");
    var data = JSON.stringify({ "password": password.value, "repeatPassword": repeatPassword.value, "email": email.value });
    xhr.send(data);
    xhr.abort();
    alert(data + " have been sent to " + url);
  }
  function addMovie(){
    let description = document.querySelector('#description-m');
    let title = document.querySelector('#title');
    let xhr = new XMLHttpRequest();
    let url = "movies";
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-Type", "application/json");
    var data = JSON.stringify({ "description": description.value, "title": title.value });
    xhr.send(data);
    xhr.abort();
    alert(data + " have been sent to " + url);
  }
  function addCinemaHall(){
    let description = document.querySelector('#description-ch');
    let capacity = document.querySelector('#capacity');
    let xhr = new XMLHttpRequest();
    let url = "cinema-halls";
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-Type", "application/json");
    var data = JSON.stringify({ "description": description.value, "capacity": capacity.value });
    xhr.send(data);
    xhr.abort();
    alert(data + " have been sent to " + url);
  }
  function addMovieSession(){
    let showTime = document.querySelector('#showTime').value + ":00.000Z";
    let movieId = document.querySelector('#movie-id');
    let cinemaHallId = document.querySelector('#cinema-hall-id');
    let xhr = new XMLHttpRequest();
    let url = "movie-sessions";
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-Type", "application/json");
    var data = JSON.stringify({ "cinemaHallId": cinemaHallId.value, "movieId": movieId.value, "showTime": showTime });
    xhr.send(data);
    xhr.abort();
    alert(data + " have been sent to " + url);
  }
  function showMovies() {
    window.open("${pageContext.request.contextPath}/movies", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=100,width=400,height=400");
  }
  function showCinemaHalls() {
    window.open("${pageContext.request.contextPath}/cinema-halls", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=100,width=400,height=400");
  }
  function showMovieSessions() {
    window.open("${pageContext.request.contextPath}/movie-sessions/available?movieId=2&date=19.06.2022", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=100,width=400,height=400");
  }
  function showOrders() {
    window.open("${pageContext.request.contextPath}/orders", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=100,width=400,height=400");
  }
</script>
<div class="header">
  <a href="https://mate.academy/" class="logo">Mate.Academy</a>
  <div class="header-right">
    <a class="active" href="${pageContext.request.contextPath}/">Main page</a>
    <a href="${pageContext.request.contextPath}/logout">Logout</a>
  </div>
</div>
