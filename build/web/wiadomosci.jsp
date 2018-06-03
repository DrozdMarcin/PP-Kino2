<%-- 
    Document   : wiadomosci
    Created on : 2018-06-03, 21:37:27
    Author     : Milosz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Kontakt"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>   
<% HttpSession sessionKontakt = request.getSession(false);
        String us = (String) sessionKontakt.getAttribute("kontakt");

    Kontakt kontakt1 = new Kontakt();
    //kontakt1.setUser(us);
    
    kontakt1.getWiadomosc();%>

<!DOCTYPE html>
<html>
    <head>
        <title>Wiadomości</title>
      <%-- wczytanie stałego nagłówka --%>
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
                SELECT * from kontakt;
            </sql:query>
                
            <div class="row">
                <c:forEach var = "row" items = "${result.rows}">
                  
                <div class="acconunt-info card col-lg-4">
                    
                    <div class="card-header">
                        ${row.imie}
                    </div>
                    <div class="card-body">
                        <jsp:useBean id="kontakt" scope="request" class="beans.Kontakt"></jsp:useBean>
                        <form action="KontaktController" method="post">
                                <div class=" form-group">
                                    <b>Imię:</b> ${row.imie} <br>
                                <b>Email: </b> ${row.email} <br>
                                <b>Wiadomosc:</b> ${row.wiadomosc} <br>
                            </div>
                        </form>
                    </div>    
                </div>
                </c:forEach>          
            </div>
            
        </div>
    </body>
</html>

