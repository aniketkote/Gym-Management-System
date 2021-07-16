<%-- 
    Document   : email_error
    Created on : Jun 5, 2021, 7:09:45 PM
    Author     : Aniket kolte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Email is Already Registered</title>
        <style>
                *{
                    box-sizing: border-box;
                    margin: 0ch;
                    padding: 0ch;
                }
                body{
                    display: grid;
                    justify-content: center;
                    align-items:center;
                    background-color: #b2bec3;
                    width: 100vw;
                    height: 100vh;
                }
                .card{
                    display: grid;
                    justify-content: center;
                    align-items: center;
                    width: 600px;
                    height: 300px;
                    border: 2px solid black;
                    border-radius: 10px;
                    box-shadow:0px 0px 70px -42px black;
                }
                .card h1{
                    text-align: center;
                    color: brown;
                    font-weight:bolder;
                    font-size: 25px;
                }
                .card p{
                    font-size: 100px;
                    font-weight: bolder;
                }
                .card a{
                    background-color: #2c3e50;
                    border: 2px solid black;
                    border-radius: 20px;
                    box-shadow: 0px 0px 10px -3px #000000b0;
                    padding: 2px;
                    display:block;
                    margin-top: 20px;
                    text-decoration: none;
                    color:white;
                    font-weight: bolder;
                }
        </style>
    </head>
    <body>

        <div class="card">
            <h1>Your Email is Already Registered<br>Login Or Register With New Email.<a href="customer_login.jsp">LOGIN</a><a href="registration.jsp">REISTER</a></h1>
            
        </div>

    </body>
</html>
