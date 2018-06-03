<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>

<!DOCTYPE html>
<html>
    <head>
        <title>O nas</title>
        <jsp:include page="subsites/head.jsp" />
    </head>
    <body>
        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />
        <div id="main-container" class="container">
            <center>
                <p><em><b> Firma:</b></p>
                <p>Projekt Kina</p><p>  Katolicki Uniwersytet Lubelski</p>
                <p>Wydział Matematyki, Informatyki i Architektury Krajobrazu</p>
                <p>Konstantynów 1H,</p>
                <p>20-708 Lublin</em></p>
                <p><em><b> tel.: </b>81/ 445 45 52</em></p>
                <p><b>e-mail: </b>wmiak@kul.pl</p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2498.0620027993573!2d22.49864001583096!3d51.23635297959155!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4722583469e163c1%3A0xcd2340f2a6afcce4!2sKatolicki+Uniwersytet+Lubelskie+Wydzia%C5%82+Matematyki%2C+Informatyki+i+Architektury+Krajobrazu!5e0!3m2!1spl!2spl!4v1527590391158" width="600" height="450" frameborder="0" style="border:0" center></iframe> 
                <br>
                <br>
                <b> <p>Nasze kino:</p> </b>
               
                <div id="gallery">
                    <ul id="navigation">
                        <li><a href="#pic1"><img alt="" src="img/mkino1.jpg" /></a></li>
                        <li><a href="#pic2"><img alt="" src="img/mkino2.jpg" /></a></li>
                        <li><a href="#pic3"><img alt="" src="img/mkino3.jpg" /></a></li>
                        <li><a href="#pic4"><img alt="" src="img/mkino4.jpg" /></a></li>
                        <li><a href="#pic5"><img alt="" src="img/mkino5.jpg" /></a></li>
                    </ul>
                    <div id="full-picture">
                        <div><a name="pic1"></a><img alt="" src="img/kino1.jpg" /></div>
                        <div><a name="pic2"></a><img alt="" src="img/kino2.jpg" /></div>
                        <div><a name="pic3"></a><img alt="" src="img/kino3.jpg" /></div>
                        <div><a name="pic4"></a><img alt="" src="img/kino4.jpg" /></div>
                        <div><a name="pic5"></a><img alt="" src="img/kino5.jpg" /></div>
                    </div>
                </div>
            </center>
        </div>
        <jsp:include page="subsites/footer.jsp" />
    </body>
</html>
