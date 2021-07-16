<%-- 
    Document   : customer_dashbord
    Created on : May 30, 2021, 2:15:38 PM
    Author     : Aniket kolte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Customer Dashbord Page</title>
    <link rel="stylesheet" href="css/style.css">
    
    
     <style>
            div.page-wrapper{
            height: auto;
        }

            label,input[type="text"]{
                      display: block;
            }
            input[type="text"],input[type="password"]{
                width: 400px;
                height: 35px;
                margin:10px 10px 10px 0;
            }
           
            .form-wrapper{
                padding: 20px;
                display: grid;
                justify-content: center;
               width: 100%;
               height: auto; 
               background-color: #b2bec3;
            }

            

            button{
                padding: 10px 20px;
            }

            .btn-wrapper{
                margin-top: 10px;
            }
            
            .form-wrapper{
                align-items: center;
            }

            .option-wrapper{
                padding: 0px 40px;
                display: grid;
                justify-content: center;
                align-items: center;
                height: 40px;
                width: 100%;
                background-color: #2c3e50;
                border-radius: 10px;
                margin: 10px 0px;
            }
            table{
                width: 500px;
                border-spacing: 30px 30px;
            }
            
    </style>
    
    </head>
    <body>
        
        <%@ include file = "header.jsp" %>
        
        
        <%@ include file = "customer_menu_bar.jsp" %>
        
        
         <div class="form-wrapper">

            <h2>
                Welcome to Customer Dashbord
            </h2>
            <br>
            <hr/>
            <br>

            <table >
                <tr>
                    <td>
                        <a class="option-wrapper" href="index.jsp">
                            <h5>Home</h5>
                            </a>
                    </td>
                    <td>
                        <a class="option-wrapper" href="aboutus.jsp">
                            <h5>About Us</h5>
                            </a>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <a class="option-wrapper" href="all_memberships.jsp">
                            <h5>All Membership</h5>
                            </a>
                    </td>
                    <td>
                        <a class="option-wrapper" href="customer_my_membership.jsp">
                        <h5>My Membership</h5>
                        </a>
                    </td>
                    
                </tr>
              
                <tr>
                    <td> 
                        <a class="option-wrapper" href="customer_change_password">
                        <h5>Change Password</h5>
                         </a>
                    </td>
                    <td>
                        <a class="option-wrapper" href="customer_logout">
                            <h5>Logout</h5>
                             </a>
                    </td>
                    
                </tr>
                
            </table>
        </div>
        
        <%@ include file = "footer.jsp" %>

        
    </body>
</html>
