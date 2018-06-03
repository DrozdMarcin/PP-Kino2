<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<!DOCTYPE html>
<html>
    <head>
        <%-- wczytanie stałej head --%>
        <jsp:include page="subsites/head.jsp" />
        <title>Logowanie</title>
    </head>
    <body>
        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />

        <div id="main-container"  class="container">

            <div class="row">

                <div class="col-lg-4">

                </div>
                <div class="card col-lg-4">
                    <div class="card-header">
                        Zaloguj się
                    </div>
                    <div class="card-body">
                        <jsp:useBean id="user" scope="request" class="beans.User"></jsp:useBean>

                            <form action="LoginController" method="post">

                                <div class="form-group">
                                    <label>Login</label>
                                    <input  class="form-control" type="text" name="user" value="<jsp:getProperty name="user" property="user"/>">
                                <small id="emailHelp" class="form-text text-muted">Nie masz konta? <a href="register_form.jsp">Zarejestruj się</a>.</small>

                                <label>Hasło</label>
                                <input class="form-control" type="password" name="pwd" value="<jsp:getProperty name="user" property="pwd"/>">
                                <br><br>
                                <input type="submit" class="btn btn-primary" value="Zaloguj">
                            </div>
                        </form>       
                    </div>
                </div>
            </div>
        </div>

        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />
    </body>
</html>
