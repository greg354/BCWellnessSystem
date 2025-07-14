/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author marku
 */
@WebServlet(urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

   
   ConnectionProvider conn = new ConnectionProvider();
   
  

    

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       var studentNum = request.getParameter("studentNumber");
       var name = request.getParameter("name");
       var surname = request.getParameter("surname");
       var email = request.getParameter("email");
       var phone = request.getParameter("phone");
       var password = request.getParameter("password");
       
       try {
           this.conn.add(studentNum, name, surname, email, phone, password);
           System.out.println("User added successfully");
       } catch (ClassNotFoundException ex) {
           Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
           System.out.println("Womp Womp");
       }
       
       response.sendRedirect("login.jsp");
       
       
       
       
      
    }

   
    
}
