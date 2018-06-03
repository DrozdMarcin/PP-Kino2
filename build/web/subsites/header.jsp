<%@page import="beans.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% HttpSession sessionUser = request.getSession(true);
    String us = (String) sessionUser.getAttribute("user");

    User user1 = new User();
    user1.setUser(us);
    user1.GetUser(); %>
    
    <%-- zmienna globalna danych usera dostępna na każdej stronie --%>        
    <% request.setAttribute("userLogin", user1.getUser()); %> 
    <% request.setAttribute("userFirstName", user1.getFirst_name()); %> 
    <% request.setAttribute("userLastName", user1.getLast_name()); %> 

    
<div class="container-fullwidth">
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="../index.jsp"><img src="img/logo.png" style="max-width:70px; margin-top: -7px;"></a><h1> ABCD Kino 🎦</h1>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">


                        <% if (user1.getUser() != null) { %>   
                        <li class="nav-item">
                            <a class="nav-link" href="myaccount.jsp">   
                                <span class="glyphicon glyphicon-user"></span> 
                                <span class="account-name">

                                    <%
                                        out.print(user1.getUser());
                                    %>
                                </span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="nowosci.jsp">🆕 Nowości</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="repertuar.jsp">🎞️ Repertuar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="rezerwacja_form.jsp">🎫 Rezerwuj bilet</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="rezerwacja.jsp">📜 Rezerwacje</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="onas.jsp">ℹ️ O nas</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="kontakt_form.jsp">☎ Kontakt</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="wiadomosci.jsp">💬 Wiadomości</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logout.jsp"> 🛑 Wyloguj</a>
                        </li>
                         <div id="facebook_slider_widget" style="display: none"><script type="text/javascript" src="http://webfrik.pl/widget/facebook_slider.html?fb_url=https://www.facebook.com/imiikul/&amp;fb_width=290&amp;fb_height=590&amp;fb_faces=true&amp;fb_stream=true&amp;fb_header=true&amp;fb_border=true&amp;fb_theme=light&amp;chx=787&amp;speed=FAST&amp;fb_pic=sign&amp;position=LEFT"></script></div>
                        <div id="pop-slap" style="display: none" data-hello-text="Bądź na bieżąco, polub nas na Facebook.com" data-close-text="Dziękuję, już lubię tę stronę." data-timeout="5" data-demo="false"><script type="text/javascript" src="http://webfrik.pl/script/popup-fb?chx=787&amp;fb_url=https://www.facebook.com/imiikul/&amp;fb_theme=light"></script></div>
                      
                        <script type="text/javascript">
                        window.cookieconsent_options = {"message":"Nasza strona www używa technologii wykrywającej konfigurację przeglądarki użytkownika oraz Ciasteczek (Cookie). Korzystanie z serwisu oznacza, że akceptujesz politykę prywatności i wyrażasz zgodę na używanie Cookies zgodnie z ustawieniami Twojej przeglądarki.","dismiss":"Akceptuję!","learnMore":"","link":"","theme":"light-top"};
                        </script>

                        <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/1.0.10/cookieconsent.min.js"></script>


                        <% } else {%>
                         <li class="nav-item">
                            <a class="nav-link" href="nowosci.jsp">🆕 Nowości</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="repertuar.jsp">📽️ Repertuar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="register_form.jsp">🔐 Rejestracja</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login_form.jsp">🌎 Logowanie</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="onas.jsp">ℹ️ O nas</a>
                        </li>
                         <li class="nav-item">
                            <a class="nav-link" href="kontakt_form.jsp">☎ Kontakt</a>
                        </li>
                        
                        <div id="facebook_slider_widget" style="display: none"><script type="text/javascript" src="http://webfrik.pl/widget/facebook_slider.html?fb_url=https://www.facebook.com/imiikul/&amp;fb_width=290&amp;fb_height=590&amp;fb_faces=true&amp;fb_stream=true&amp;fb_header=true&amp;fb_border=true&amp;fb_theme=light&amp;chx=787&amp;speed=FAST&amp;fb_pic=sign&amp;position=LEFT"></script></div>
                        <div id="pop-slap" style="display: none" data-hello-text="Bądź na bieżąco, polub nas na Facebook.com" data-close-text="Dziękuję, już lubię tę stronę." data-timeout="5" data-demo="false"><script type="text/javascript" src="http://webfrik.pl/script/popup-fb?chx=787&amp;fb_url=https://www.facebook.com/imiikul/&amp;fb_theme=light"></script></div>
                      
                        <script type="text/javascript">
                        window.cookieconsent_options = {"message":"Nasza strona www używa technologii wykrywającej konfigurację przeglądarki użytkownika oraz Ciasteczek (Cookie). Korzystanie z serwisu oznacza, że akceptujesz politykę prywatności i wyrażasz zgodę na używanie Cookies zgodnie z ustawieniami Twojej przeglądarki.","dismiss":"Akceptuję!","learnMore":"","link":"","theme":"light-top"};
                        </script>

                        <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/1.0.10/cookieconsent.min.js"></script>


                        <% }%> 
                    </ul>
                </div>
            </div>
        </nav>
    </header>
</div>

