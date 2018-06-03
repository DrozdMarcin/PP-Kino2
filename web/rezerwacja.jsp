<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<% HttpSession sessionUser = request.getSession(true);
    String us = (String) sessionUser.getAttribute("user");

    User user1 = new User();
    user1.setUser(us);
    user1.GetUser();%>

<!DOCTYPE html>
<html>
    <head>
        <title>Lista rezerwacji</title>
        <%-- wczytanie stałej head --%>
        <jsp:include page="subsites/head.jsp" />
    </head>


    <body>
        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />
        <div id="main-container" class="container">

            <div class="row">

            </div>

            <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                               url = "jdbc:mysql://localhost:3306/kino"
                               user = "root"  password = ""/>

            <sql:query dataSource = "${snapshot}" var = "result">
                SELECT * from rezerwacja;
            </sql:query>

            <center><h1>🎫 Rezerwacje</h1> 
                <div class="row">

                    <c:forEach var = "row" items = "${result.rows}">


                        <div class="acconunt-info card col-lg-4">
                            <div class="card-header">
                                ${row.tytul} 
                            </div>
                            <div class="card-body">
                                <jsp:useBean id="user" scope="request" class="beans.User"></jsp:useBean>

                                <sql:query dataSource = "${snapshot}" var = "image">
                                    SELECT img from repertuarr WHERE tytul="${row.tytul} ";
                                </sql:query>
                                <c:forEach var = "image" items = "${image.rows}">
                                    <img class="card-img-top rounded" 
                                         src="
                                         <c:if test="${image.img!='NULL'}">
                                             ${image.img}
                                         </c:if>
                                         <c:if test="${image.img=='NULL' || image.img==''}">
                                             img/noimage.png
                                         </c:if>

                                         " alt="${row.tytul}">



                                </c:forEach>

                                <form action="LoginController" method="post">

                                    <div class=" form-group">
                                        <br><b>Termin: </b><br>${row.godzina} <br>
                                        <b>Bilety normalne i ulgowe:</b><br>${row.biletynorm} i  ${row.biletyulg}<br>

                                    </div>
                                </form>       
                            </div>
                        </div>

                    </c:forEach>
                </div>
            </center>
        </div>

        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />

    </body>
</html>
