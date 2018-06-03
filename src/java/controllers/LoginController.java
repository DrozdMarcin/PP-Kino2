package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import beans.User;
import controllers.RegisterController;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.servlet.http.HttpSession;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LoginController extends HttpServlet 
{
    public String HashMD5(String password){
        String md5 = null;
            try {
                MessageDigest digest = MessageDigest.getInstance("MD5");
                digest.update(password.getBytes(), 0, password.length());
                md5 = new BigInteger(1, digest.digest()).toString(16);
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
            }
         return md5;
    }

        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
        {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            User user = new User(); 
            user.setUser(request.getParameter("user"));
            user.setPwd(HashMD5(request.getParameter("pwd")));
            if(User.LoginUser(request.getParameter("user"),HashMD5(request.getParameter("pwd"))))
            {
                User us = new User();
                us.setUser(String.valueOf(request.getParameter("user")));
                us.GetUser();
                
                HttpSession sessionUser = request.getSession();
                sessionUser.setAttribute("user",us.getUser());
                
                RequestDispatcher rd1 = request.getRequestDispatcher("index.jsp");
                rd1.forward(request,response);
            }
            else
            {
                out.println("Niepoprawny login lub hasło !");
                out.println("<a href=\"login_form.jsp\">Sprobuj ponownie...</a>");
            }
            out.close();
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