<%-- 
    Document   : admin_change_password
    Created on : May 30, 2021, 3:33:50 PM
    Author     : Aniket kolte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password | Admin </title>
    <link rel="stylesheet" href="css/style.css">

    <style>
            div.page-wrapper{
            height: auto;
        }

            label,input[type="text"]{
                      display: block;
            }
            input[type="text"],input[type="password"],input[type="file"],select{
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
            
    </style>
    </head>
    <body>
        
        <%
         
         //Checking Admin is Login or Not.
         
      if (session != null) {
         if (session.getAttribute("user") != null) //Checking admin is login or not
         {
             // admin is login
             
         } else {
             
             //admin is not login so redirect request on admin login page.
          
            response.sendRedirect("admin_login.jsp");
           
         }
      }
   %>
        
         <%@ include file = "header.jsp" %>
        
        
        <%@ include file = "admin_menu_bar.jsp" %>

           <div class="form-wrapper">

            <h2>
                Change Password
            </h2>
            <br>
            <hr/>
            <br>

            <form action="# ">

                <table>
               
                    <tr>
                       
                            <label>Old Password*</label>
                            <input type="password" name="old_password">
                    </tr>
                    <tr>
                       
                        <label>New Password*</label>
                        <input type="password" name="new_password">
                </tr>
                <tr>
                       
                    <label>Confirm New Password*</label>
                    <input type="password" name="confirm_new_password">
            </tr>
            

                 

                </table>

                
               
                <div class="btn-wrapper">
                    <button type="submit">Reset Password</button>
                    <button><a href="admin_dashbord.jsp" style=" color:black;">Cancle</a></button>
                </div>
                
            </form>
        </div>

        <%@ include file = "footer.jsp" %>


    </body>
</html>
