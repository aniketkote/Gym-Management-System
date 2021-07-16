<%-- 
    Document   : admin_dashbord
    Created on : May 26, 2021, 7:21:09 PM
    Author     : Aniket kolte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashbord Page</title>
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
                width: 600px;
                border-spacing: 30px 30px;
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
                    Welcome to Admin Dashbord
            </h2>
            <br>
            <hr/>
           

            <table >
                <tr>
                    <td>
                        <a class="option-wrapper" href="admin_add_membership.jsp">
                            <h5>Add Membership</h5>
                            </a>
                    </td>
                    <td>
                        <a class="option-wrapper" href="admin_add_payment.jsp">
                            <h5>Add Payment</h5>
                            </a>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <a class="option-wrapper" href="generate_membership_report.jsp">
                            <h5>Membership Report</h5>
                            </a>
                    </td>
                    <td>
                        <a class="option-wrapper" href="generate_customer_report.jsp">
                        <h5>Customer Report</h5>
                        </a>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <a class="option-wrapper" href="generate_payment_report.jsp">
                        <h5>Payment Report</h5>
                         </a>
                    </td>
                    
                    <td>
                        <a class="option-wrapper" href="customer_membership_report.jsp">
                            <h5>Customers Membership Report</h5>
                             </a>
                    </td>
                    
                </tr>
                <tr>
                    <td> 
                        <a class="option-wrapper" href="admin_change_password.jsp">
                        <h5>Change Password</h5>
                         </a>
                    </td>
                    <td>
                        <a class="option-wrapper" href="admin_logout">
                            <h5>Logout</h5>
                             </a>
                    </td>
                    
                </tr>
                
            </table>
        </div>
</div>
           <%@ include file = "footer.jsp" %>

</body>
</html>

