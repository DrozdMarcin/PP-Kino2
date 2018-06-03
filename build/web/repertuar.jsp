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
    user1.GetUser(); %>

<!DOCTYPE html>
<html>
    <head>

        <title>Repertuar</title>

        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/head.jsp" />
    </head>


    <body>
    <center>
        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />

        <div id="main-container" class="container">

            <div class="row">
                <div class="col">
                    <br>
                    <% if (user1.getUser() != null) { %>
                    <a href="repertuar_form.jsp" class="btn btn-primary">Dodaj film do bazy</a>
                    <% } %>
                    <br/>
                </div>  
                <br/>
                <br/><br/>
                <br/><br/>
                <br/>

            </div>

            <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                               url = "jdbc:mysql://localhost:3306/kino"
                               user = "root"  password = ""/>

            <sql:query dataSource = "${snapshot}" var = "result">
                SELECT * from repertuarr;
            </sql:query>



            <div class="row">

                <c:forEach var = "row" items = "${result.rows}">

                    <div class="col-3">
                        <img class="card-img-top rounded" 
                             src="
                             <c:if test="${row.img!='NULL'}">
                                 ${row.img}
                             </c:if>
                             <c:if test="${row.img=='NULL' || row.img==''}">
                                 img/noimage.png
                             </c:if>

                             " alt="${row.tytul}">
                        <div class="card-body">
                            <h4 class="card-title">${row.tytul}</h4>
                            <p class="card-text">${row.opis}<br><b>Terminy: ${row.godziny}</b><br>normalny: ${row.biletynorm}<br>ulogowy: ${row.biletyulg}</p>
                                    <% if (user1.getUser() != null) { %>
                            <!--          <a href="#" class="btn btn-primary">Rezerwuj</a> -->
                            <% }%>
                        </div>
                    </div>
                </c:forEach>
            </div>

        </div>

        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />
    </center>
</body>
</html>
