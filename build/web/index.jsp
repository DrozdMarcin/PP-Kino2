<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Projekt Kino</title>
        <%-- wczytanie stałej head --%>
        <jsp:include page="subsites/head.jsp" />
    </head>


    <body>
        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />
        <div id="main-container-index" class="container-fluid">
            <div class="caption">
                <span class="border">📽️ ABCD Kino 🎦</span><br>
                <br><br>

                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d159938.9016819835!2d22.423685559982626!3d51.21824044046406!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x472257141e154061%3A0x5528ee7af6e8e95f!2sLublin!5e0!3m2!1spl!2spl!4v1527621133115" width="1000" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>            

        </div>
        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />

    </body>
</html>
