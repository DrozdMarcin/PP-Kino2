<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Wylogowano</title>
        <%-- wczytanie stałej head --%>
        <jsp:include page="subsites/head.jsp" />
    </head>

    <body>
        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />

        <div id="main-container"  class="container">

            <div class="row">

                <div class="alert alert-primary" role="alert" style="width:50%; margin-left: 25%;">
                    <% session.invalidate();%>
                    <center>
                        <h2>Zostałeś poprawnie wylogowany!</h2>
                        <br>
                        <a class="btn btn-primary" href="index.jsp">Powrót do strony głownej</a>
                        <a class="btn btn-primary" href="login_form.jsp">Zaloguj się ponownie</a>

                        <br>
                        <br>
                        <br>
                    </center>

                </div>
            </div>
        </div>

        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />

    </body>
</html>
