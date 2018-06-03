<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>

<!DOCTYPE html>
<html>
    <head>

        <title>NOWA STRONA</title>

        <%-- wczytanie wspólnego head --%>
        <jsp:include page="subsites/head.jsp" />
    </head>


    <body>
        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />
        <div id="main-container" class="container">

            <div class="row">

                TREŚĆ STRONY    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

            </div>

        </div>
        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />

    </body>
</html>
