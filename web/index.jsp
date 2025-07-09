<%-- 
    Document   : index
    Created on : Jul 8, 2025, 5:56:42 PM
    Author     : marku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
   body {
      font-family: Roboto;
      background: whitesmoke;
      text-align: center;
      margin: 0;
    }
    .bar{
      width: 100vw;
      background-color: #3C6E71;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
      color: #F1F6F9;
      text-align: left;
      font-size: 1.5em;
      font-family: Raleway;
      font-weight: bold;
      padding: 20px 0 20px 40px;
      box-sizing: border-box;
 
    }
    .block {
    display: flex;
    justify-content: center;
    align-items: stretch;
    margin-top: 7.5%;
    border-radius: 12px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
    overflow: hidden; 
    width: fit-content;
    margin-left: auto;
    margin-right: auto;
    }

    .title-Section,
    .button-Section {
    padding: 45px;
    width: 400px;
    height: 350px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    background-color: #BEE9E8;
    }
    #head-smal{
       font-size: 45px; 
    }
    .title-Section{
       color: #2C3E50;
        font-size: 40px;
    }
    .title-Section h1{
        margin: 0;
    }
    .button-Section {
      background-color: #77D9C2;
  
    }

    .nav-button {
      display: block;
      width: 180px;
      margin: 30px auto;
      padding: 18px 0;
      font-size: 1.2em;
      font-weight: bold;
      background-color: #3C6E71;
      color: #F1F6F9;
      text-decoration: none;
      border: none;
      border-radius: 10px;
      transition: transform 0.2s ease, background-color 0.3s;
    }
    
    .nav-button:hover {
      background-color: #508991;
     transform: scale(1.05);
      
    }


</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
       <div class="bar">BCWellness</div>

    <div class="block">
        <div class="title-Section">
            <h1 id="head-smal">Welcome to</h1> 
            <h1>BCWellness</h1>
        </div>
        <div class="button-Section">
            <a class="nav-button" href="login.jsp">Login</a>
            <a class="nav-button" href="register.jsp">Register</a>
        </div>
    </div>



    </body>
</html>
