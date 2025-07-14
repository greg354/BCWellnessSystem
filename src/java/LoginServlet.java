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
@WebServlet(urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

   
  ConnectionProvider conn = new ConnectionProvider();
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       var studentNum = request.getParameter("studentNumber");
       var password = request.getParameter("passowrd");
       
       try{
          var student = this.conn.getSTudent(studentNum);
          if(student == null){
            response.sendRedirect("login.jsp?error=Student not found, please try again  ");
            return;
          }
          
          if(!student.password.equals(password)){
             response.sendRedirect("login.jsp?error=Passwod is inncorrect, please try again  ");
            return; 
          }
           response.sendRedirect("dahsboard.jsp");
       }catch(ClassNotFoundException exception){
           Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, exception);
           System.out.println("Womp Womp");
       }
       
    }

   

}
