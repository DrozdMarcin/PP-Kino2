<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>

<!DOCTYPE html>
<html>
    <head>

        <title>Nowości</title>

        <%-- wczytanie wspólnego head --%>
        <jsp:include page="subsites/head.jsp" />
    </head>


    <body>
        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />
        <div id="main-container" class="container">


            <center> 
                <b> Deadpool 2 </b>
                <br>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/Ybtm9D6yAb0?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                <br> 
                <br>
                <br>
                <br>
                <b> Pandy 3D </b>
                <br>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/st8irY11H9c?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                <br> 
                <br>
                <br>
                <br>
                <b> Transformers </b>
                <br>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/dxQxgAfNzyE?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>


            </center>
        </div>
        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />

    </body>
</html>
