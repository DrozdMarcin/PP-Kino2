<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Kontakt"%>
<!DOCTYPE html>
<html>
    <head>     


        <title>Kontakt</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" media="all">
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">         
        <script src="bootstrap/js/bootstrap.min.js"></script>  
        <jsp:include page="subsites/head.jsp" />
    </head>
    <body>
        <jsp:include page="subsites/header.jsp" />           
        <jsp:useBean id="kontakt" scope="request" class="beans.Kontakt"></jsp:useBean> 
            <div id="main-container"  class="container">     

                <div class="row">
                    <div class="col-lg-3">
                    </div>
                    <div class="card col-lg-6">

                        <div class="card-header">
                            Wyślij wiadomość
                        </div>
                        <div class="card-body">

                            <form action="KontaktController" method="post">
                                <label>Imie:</label>
                                <input type="text" class="form-control" name="imie" required pattern="[A-Za-z]{1,15}" value="<jsp:getProperty name="kontakt" property="imie"/>">                    
                            <label>Email:</label>
                            <input type="text" class="form-control"  name="email" required pattern="[^ @]*@[^ @]*" value="<jsp:getProperty name="kontakt" property="email"/>">
                            <label>Wiadomość:</label>
                            <input type="text" class="form-control"  name="wiadomosc" required pattern="{1,120}" value="<jsp:getProperty name="kontakt" property="wiadomosc"/>">

                            <br> <center> <input type="submit" class="btn btn-primary" value="Wyślij"> </center>
                        </form>              
                    </div> 
                </div>
            </div>
        </div>
        <jsp:include page="subsites/footer.jsp" />

    </body>
</html>





