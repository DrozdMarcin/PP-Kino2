<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Repertuar"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Dodaj repertuar</title>

        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/head.jsp" />         
    </head>


    <body>
        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />              
        <jsp:useBean id="repertuar" scope="request" class="beans.Repertuar"></jsp:useBean>

            <div id="main-container"  class="container">

                <div class="row">

                    <div class="col-lg-3">

                    </div>
                    <div class="card col-lg-6">
                        <div class="card-header">
                            Dodaj film do repertuaru

                        </div>
                        <div class="card-body">

                            <form action="RepertuarController" method="post">

                                <label>Tytuł Filmu:</label>
                                <input type="text" class="form-control" required pattern="{1}" name="tytul" value="<jsp:getProperty name="repertuar" property="tytul"/>">

                            <label>Link do obrazka:</label>
                            <input type="text" class="form-control" name="img" value="<jsp:getProperty name="repertuar" property="img"/>">

                            <label>Krótki opis:</label>
                            <input type="text" class="form-control" required pattern="{5}" name="opis" value="<jsp:getProperty name="repertuar" property="opis"/>">

                            <label>Godziny projekcji:</label>
                            <input type="text" pattern="([01]?[0-9]|2[0-3]):[0-5][0-9]" class="form-control" name="godziny" value="<jsp:getProperty name="repertuar" property="godziny"/>">

                            <label>Bilety normalne /szt.:</label>

                            <input type="number" pattern="[0-50]" class="form-control" name="biletynorm" value="<jsp:getProperty name="repertuar" property="biletynorm"/>">


                            <label>Bilety ulgowe /szt.:</label>
                            <input type="number" pattern="[0-50]" class="form-control" name="biletyulg" value="<jsp:getProperty name="repertuar" property="biletyulg"/>">

                            <br><br>

                            <center><input type="reset" class="btn btn-dark" value="Resetuj" />
                                <input type="submit" class="btn btn-primary" value="Dodaj film"></center>

                            </center>
                        </form>


                    </div>
                    </form>       
                </div>
            </div>
        </div>


        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />

    </body>
</html>
