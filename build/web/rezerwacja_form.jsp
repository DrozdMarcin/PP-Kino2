<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Rezerwacja"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Zarezerwuj bilet</title>


        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/head.jsp" />         
    </head>


    <body>
    <center>   <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />              

        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                           url = "jdbc:mysql://localhost:3306/kino"
                           user = "root"  password = ""/>

        <sql:query dataSource = "${snapshot}" var = "result">
            SELECT tytul from repertuarr;
        </sql:query>


        <jsp:useBean id="rezerwacja" scope="request" class="beans.Rezerwacja"></jsp:useBean>
            <br />
            <br />
            <h2>🎫 Formuarz rezerwacji biletu</h2>
            <div id="main-container"  class="container">

                <div class="row">

                    <div class="col-lg-3">

                    </div>
                    <div class="card col-lg-6">


                        <div class="card-body">
                            <center>
                                <form action="RezerwacjaController" method="post">

                                    <input type="hidden" class="form-control" required pattern="{1}" name="nazwauzytkownika" value="${userLogin}">

                                <label>Imię: </label>
                                <input type="text" class="form-control" required pattern="{1}" name="imie" value="${userFirstName}">

                                <label>Nazwisko: </label>
                                <input type="text" class="form-control" required pattern="{1}" name="imie" value="${userLastName}">

                                <label>Tytul wybranego filmu </label>
                                <input type="text" list="movies" class="form-control" required pattern="{1}" name="tytul" value="<jsp:getProperty name="rezerwacja" property="tytul"/>">
                                <%-- wczytywanie sugestii do pola--%>
                                <datalist id="movies">

                                    <c:forEach var = "row" items = "${result.rows}">
                                        <option value="${row.tytul}">
                                        </c:forEach>

                                </datalist>


                                <label>Godzina projekcji filmu:</label>
                                <input type="text" pattern="([01]?[0-9]|2[0-3]):[0-5][0-9]" class="form-control" name="godzina" value="<jsp:getProperty name="rezerwacja" property="godzina"/>">

                                <label>Ilość biletów normalnych:</label>
                                <input type="text" pattern="[0-9]" class="form-control" name="biletynorm" value="<jsp:getProperty name="rezerwacja" property="biletynorm"/>">

                                <label>Ilość biletów ulgowych:</label>
                                <input type="text" pattern="[0-9]" class="form-control" name="biletyulg" value="<jsp:getProperty name="rezerwacja" property="biletyulg"/>">

                                <br><br>

                                <center>
                                    <input type="submit" class="btn btn-primary" value="Złóż zamówienie"><br /><br />
                                    <input type="reset" class="btn btn-dark" value="Wyczyść" />          
                                </center>

                            </form>                   
                    </div>
                </div>
            </div>
        </div>


        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />
    </center>   
</body>     
</html>
