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
import jakarta.servlet.http.HttpSession;
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
       var password = request.getParameter("password");
       
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
           HttpSession sesion = request.getSession();
           sesion.setAttribute("Student", student);
           sesion.setAttribute("Name", student.name);
           sesion.setMaxInactiveInterval(30*60);
           String uri = response.encodeRedirectURL("dahsboard.jsp");
           response.sendRedirect(uri);
       }catch(ClassNotFoundException exception){
           Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, exception);
           System.out.println("Womp Womp");
       }
       
       
       
    }

   

}
