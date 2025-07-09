<%-- 
    Document   : dahsboard
    Created on : Jul 8, 2025, 6:24:21 PM
    Author     : marku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    body {
      font-family: Roboto, sans-serif;
      background: whitesmoke;
      margin: 0;
      text-align: center;
    }

    .top-bar {
      width: 100vw;
      background-color: #3C6E71;
      color: #F1F6F9;
      font-size: 1.5em;
      font-family: Raleway;
      font-weight: bold;
      text-align: left;
      padding: 20px 0 20px 40px;
      box-sizing: border-box;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    }

    .main-block {
      margin: 60px auto;
      padding: 50px;
      width: 600px;
      background-color: #BEE9E8;
      border-radius: 12px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
    }

    h1 {
      color: #2C3E50;
      font-size: 36px;
    }

    .logout-button {
      margin-top: 30px;
      padding: 12px 24px;
      background-color: #3C6E71;
      color: #F1F6F9;
      border: none;
      border-radius: 8px;
      font-size: 1em;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s, transform 0.2s;
    }

    .logout-button:hover {
      background-color: #508991;
      transform: scale(1.05);
    }
  </style>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard - BCWellness</title>
    </head>
    <body>
         <div class="top-bar">BCWellness</div>

        <div class="main-block">
         <h1>Welcome, [studentNumber]!</h1>
        <form action="logout.jsp" method="post">
            <button type="submit" class="logout-button">Log Out</button>
        </form>
  </div>

    </body>
</html>
