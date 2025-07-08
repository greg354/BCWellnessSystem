<%-- 
    Document   : register
    Created on : Jul 8, 2025, 6:23:37 PM
    Author     : marku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <style>
    body {
      font-family: Roboto, sans-serif;
      background: whitesmoke;
      text-align: center;
      margin: 0;
    }

    .top-bar {
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

    .main-block {
      display: flex;
      justify-content: center;
      align-items: stretch;
      margin: 60px auto;
      border-radius: 12px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
      overflow: hidden;
      width: fit-content;
    }

    .title-section, .form-section {
      padding: 45px;
      width: 400px;
      height: 450px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .title-section {
      background-color: #BEE9E8;
      color: #2C3E50;
    }

    .title-section h1 {
      margin: 0;
      font-size: 40px;
    }

    .form-section {
      background-color: #77D9C2;
    }

    form {
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 85%;
      padding: 10px;
      margin: 10px 0;
      border: none;
      border-radius: 6px;
      font-size: 1em;
    }

    .submit-button {
      width: 180px;
      margin-top: 25px;
      padding: 15px 0;
      font-size: 1.1em;
      font-weight: bold;
      background-color: #3C6E71;
      color: #F1F6F9;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      transition: transform 0.2s ease, background-color 0.3s;
    }

    .submit-button:hover {
      background-color: #508991;
      transform: scale(1.05);
    }
  </style>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Register - BCWellness</title>
    </head>
    <body>
       <div class="top-bar">BCWellness</div>

  <div class="main-block">
    <div class="title-section">
      <h1>Join BCWellness</h1>
      <p>We're excited to have you!</p>
    </div>

    <div class="form-section">
      <form action="RegisterServlet" method="post">
        <input type="text" name="studentNumber" placeholder="Student Number" required />
        <input type="text" name="name" placeholder="First Name" required />
        <input type="text" name="surname" placeholder="Surname" required />
        <input type="email" name="email" placeholder="Email" required />
        <input type="text" name="phone" placeholder="Phone Number" required />
        <input type="password" name="password" placeholder="Password" required />
        <button class="submit-button" type="submit" href="login.jsp">Register</button>
      </form>
    </div>
  </div>

    </body>
</html>
