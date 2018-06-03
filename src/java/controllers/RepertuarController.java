package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import beans.Repertuar;
import javax.servlet.http.HttpSession;

public class RepertuarController extends HttpServlet 
{
      
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  {
            
            Repertuar repertuar = new Repertuar();
     
                repertuar.setTytul(request.getParameter("tytul"));
                repertuar.setOpis(request.getParameter("opis"));
                repertuar.setGodziny(request.getParameter("godziny"));
                repertuar.setBiletynorm(request.getParameter("biletynorm"));
                repertuar.setBiletyulg(request.getParameter("biletyulg"));
                repertuar.setImg(request.getParameter("img"));
                
                repertuar.RegisterRepertuar();
                
                  RequestDispatcher rdr = request.getRequestDispatcher("repertuar_form.jsp");
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