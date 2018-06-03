package controllers;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import beans.Rezerwacja;
import javax.servlet.http.HttpSession;


//pobranie bazy danych

public class RezerwacjaController extends HttpServlet 
{
      
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  {
            
            Rezerwacja rezerwacja = new Rezerwacja();
     
                rezerwacja.setImie(request.getParameter("imie"));
                rezerwacja.setNazwisko(request.getParameter("nazwisko"));
                rezerwacja.setTytul(request.getParameter("tytul"));
                rezerwacja.setGodzina(request.getParameter("godzina"));
                rezerwacja.setBiletynorm(request.getParameter("biletynorm"));
                rezerwacja.setBiletyulg(request.getParameter("biletyulg"));
                 rezerwacja.setNazwauzytkownika(request.getParameter("nazwauzytkownika"));
                
                rezerwacja.Rezerwuj();
                
                  RequestDispatcher rdr = request.getRequestDispatcher("rezerwacja_form.jsp");
                rdr.forward(request,response);
            } finally {out.close();}
        
    }          
           @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
        {
            processRequest(request, response);
        }
        
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
        {
            processRequest(request, response);
        }
        
        @Override
        public String getServletInfo() 
        {
            return "Short description";
        }
}   