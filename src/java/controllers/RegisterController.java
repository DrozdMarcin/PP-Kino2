package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import beans.User;
import java.math.BigInteger;
import javax.servlet.http.HttpSession;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.security.*;

public class RegisterController extends HttpServlet 
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
            user.setFirst_name(request.getParameter("first_name"));
            user.setLast_name(request.getParameter("last_name"));
            user.setUser(request.getParameter("user"));
            user.setPwd(HashMD5(request.getParameter("pwd")));
            user.setEmail(request.getParameter("email"));
            user.RegisterUser();
            RequestDispatcher rd = request.getRequestDispatcher("login_form.jsp");
            rd.forward(request,response);
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