# Project description
Java web application which represents some operation processes of the movie theatre chain. 
It has been built using Solid principles, Three-Tier Architecture, DTO pattern, Spring Security, and DB authentication with Role-Based Access Control.
Users can manipulate data about movie sessions using different movies and cinema halls by linking them together or adding/removing them as well.
There is the ability to order tickets using shopping cart implementation. User Interface implemented with JSP.

# Technologies
- Java 11 
- Spring Security 
- Maven
- Tomcat 
- MySQL
- JSP
- HTML/CSS

# Features
- login/logout using Spring Security Login
- some data in DB will be initialized at the start
- getting access is limited by the role of the user
- the main page is provided to test for some functions with admin and user roles
- add/delete users, movie, cinema hall, movie session ...
- corresponding Restful controllers which convert responses to JSON
- <img style="vertical-align:middle" height="130" src="db_tables.jpg" width="500"/>

# How to run this project on your local machine:
- Install JDK 11+
- Install Maven
- Install Tomcat (version 9.0.xx)

- Install IntelliJ IDEA
- Clone this repository (f.e. using VS Code + Git Bash)

- Install MySQL
- Create schema "cinema" ../resources/init_db.sql
- Configure ../resources/db.properties (username, password)

- Thank you!
