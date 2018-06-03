package controllers;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import beans.Kontakt;
import javax.servlet.http.HttpSession;

public class KontaktController extends HttpServlet 
{  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  {         
            Kontakt kontakt = new Kontakt();
                kontakt.setImie(request.getParameter("imie"));
                kontakt.setEmail(request.getParameter("email"));       
                kontakt.setWiadomosc(request.getParameter("wiadomosc"));   
                kontakt.Wiadomosc();               
                RequestDispatcher rdr = request.getRequestDispatcher("kontakt_form.jsp");
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