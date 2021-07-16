<%-- 
    Document   : aboutus
    Created on : May 30, 2021, 12:56:52 PM
    Author     : Aniket kolte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AboutUs|Gym Management System</title>
    <link rel="stylesheet" href="css/style.css">
    
               <style>

        div.page-wrapper{
            height: auto;
        }

            label,input[type="text"]{
                      display: block;
            }
            input[type="text"]{
                width: 400px;
                height: 35px;
                margin:10px 10px 10px 0;
            }
            textarea{
                width: 400px;
                display: block;
            }
           
            .form-wrapper{
                padding: 20px;
                display: grid;
                justify-content: center;
               width: 100%;
               background-color: #b2bec3;
            }

            

            button{
                margin: 11px;
                padding: 10px 20px;
            }


    </style>
    </head>
    <body>
           <%@ include file = "header.jsp" %>
        
        
        <%@ include file = "menu_bar.jsp" %>

        <div class="form-wrapper">

            <h2>
                About Us
            </h2>
            <br>
            <hr/>
            <br>
      
            <br>
        <h4>
            
Fitness Gym Management System provides a computer-base management system for keeping all records about gym member, Machinery, Expenses, transactions and Salaries in an efficient and accessible database. This system helps the Owner and Admin to maintain large data about users and their daily transactions in gymnasium system in helping in creating reports, manages salaries, expenses, and machinery record.

        </h4>
            <br>
        <h4>
            
Fitness Gym Management System provides a computer-base management system for keeping all records about gym member, Machinery, Expenses, transactions and Salaries in an efficient and accessible database. This system helps the Owner and Admin to maintain large data about users and their daily transactions in gymnasium system in helping in creating reports, manages salaries, expenses, and machinery record.

        </h4>
      
        
        </div>
       
        <%@ include file = "footer.jsp" %>


    </body>
</html>
