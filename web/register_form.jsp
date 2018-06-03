<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Formularz rejestracji</title>

        <%-- wczytanie stałej head --%>
        <jsp:include page="subsites/head.jsp" />
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
                        <div class="form-group">
                            <jsp:useBean id="user" scope="request" class="beans.User"></jsp:useBean>

                                <form action="RegisterController" method="post">
                                    <div class="form-group">
                                        <label>E-mail:</label>
                                        <input type="text" class="form-control" name="email" required pattern="[^ @]*@[^ @]*" value="<jsp:getProperty name="user" property="email"/>">

                                    <label>Imie:</label>

                                    <input type="text" class="form-control" name="first_name" required pattern="[A-Za-z]{1,15}" value="<jsp:getProperty name="user" property="first_name"/>">
                                    <label>Nazwisko:</label>

                                    <input type="text" class="form-control" name="last_name" required pattern="[A-Za-z]{1,15}" value="<jsp:getProperty name="user" property="last_name"/>">

                                    <label>Login:</label>
                                    <input type="text" class="form-control" name="user" value="<jsp:getProperty name="user" property="user"/>">
                                    <small id="emailHelp" class="form-text text-muted">Masz już konto? <a href="login_form.jsp">Zaloguj się</a>.</small>

                                    <label>Hasło:</label>

                                    <input type="password" class="form-control" name="pwd" value="<jsp:getProperty name="user" property="pwd"/>">
                                    <br>
                                    <input type="reset" class="btn btn-dark" value="Resetuj" />
                                    <input type="submit" class="btn btn-primary" value="Zarejestruj">

                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />

    </body>
</html>
