import java.sql.*;
import java.sql.Connection;
import java.sql.SQLException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Iwang
 */
public  class ConnectionProvider {
    public ConnectionProvider(){}
    String username = "postgres";
    String pass = "1101";
    private static final String ConURL = "jdbc:postgresql://localhost:5432/postgres";
    private static final String DRIVER = "org.postgresql.Driver";
    Connection con;
 
  
    
public Connection getCon() throws ClassNotFoundException{
    try{
        Class.forName(DRIVER);
        this.con = DriverManager.getConnection(ConURL, username, pass);
        if(this.con != null){
            System.out.println("Connected to database");
        }
    }catch(SQLException ex){
        System.out.println("Could not connect: "+ex.getMessage());
    }
    return con;
}  

public void add(String StudentID, String Name, String Surname,String Email,String Phone,String Pass) throws ClassNotFoundException{
    Connection conn;
    PreparedStatement pstmt;
    try{
        conn = getCon();
        pstmt = conn.prepareStatement("INSERT INTO student_services.tblusers (studentid,name,surname,email,phone,password) VALUES (?,?,?,?,?,?)");
        pstmt.setString(1, StudentID);
        pstmt.setString(2, Name);
        pstmt.setString(3, Surname);
        pstmt.setString(4, Email);
        pstmt.setString(5, Phone);
        pstmt.setString(6, Pass);
        
        pstmt.executeUpdate();
    }catch(SQLException ex){
        System.out.println("Could not add data: " + ex.getMessage());
    }
}
    public StudentOBJ getSTudent(String studentNumber) throws ClassNotFoundException{
      Connection conn;
      PreparedStatement pstmt;
      try{
          conn = getCon();
          pstmt = conn.prepareStatement("SELECT * FROM student_services.tblusers WHERE studentid = ?");
          pstmt.setString(1, studentNumber);
          ResultSet rs = pstmt.executeQuery();
          rs.next();
          String sNum = rs.getString("studentid");
          String sName = rs.getString("name");
          String sPassword = rs.getString("password");
          return new StudentOBJ(sNum, sName, sPassword);
          
      }catch(SQLException ex){
        System.out.println("Could not find student " + ex.getMessage());  
      }
      return null;
    }

}
