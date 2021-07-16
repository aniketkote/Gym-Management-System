<%-- 
    Document   : admin_add_payment
    Created on : May 30, 2021, 3:22:34 PM
    Author     : Aniket kolte
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="com.gms.connectionProvider.ConnectionProvider"%>
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
            input[type="text"],input[type="password"],input[type="date"],select{
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
                Add Payment
            </h2>
            <br>
            <hr/>
            <br>

            <form action="admin_add_payment" method="post">

                <table>
                    <tr>
                        <td>
                            <label>Select Customer*</label>
                            
                             <%
                                try{
                            Connection con= ConnectionProvider.getCon();
                            Statement statement = con.createStatement() ;

                               ResultSet rs = statement.executeQuery("select name from customer");
                            %> 
                            
                        <select type="text" name="membership_name">
                            
                            <option value="">Select Customer</option>
                            <%  while(rs.next()){ %>
                            <option ><%= rs.getString(1)%></option>
                            <%  } %>
                        
                        </select>
                            <%
                            }catch(Exception e){
}
                            
                            %>
                        </td>
                        <td>
                            <label>Select Month*</label>
                            <select type="text" name="month">
                                <option value="">Select Type</option>
                                <option value="Jan">Jan</option>
                                <option value="Feb">Feb</option>
                                <option value="Mar">Mar</option>
                                <option value="Apr">Apr</option>
                                <option value="May">May</option>
                                <option value="Jun">Jun</option>
                                <option value="Jul">Jul</option>
                                <option value="Aug">Aug</option>
                                <option value="Sep">Sep</option>
                                <option value="Oct">Oct</option>
                                <option value="Nov">Nov</option>
                                <option value="Dec">Dec</option>
                            </select>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <label>Date*</label>
                        <input type="date" name="date">
                        </td>
                        <td>
                            <label>Amount*</label>
                            <input type="text" name="amount">
                        </td>

                    </tr>
                    

                    <tr>
                        <td>
                        <label>Description*</label>
                        <textarea name="text" id="" cols="54" rows="8" maxlength = "54" name="membership_description"></textarea>
                        </td>

                    </tr>

                </table>

                
               
                <div class="btn-wrapper">
                    <button type="submit">Save Details</button>
                    <button type="reset">Reset Form</button>
                </div>
                
            </form>
        </div>
        
        <%@ include file = "footer.jsp" %>

</body>
</html>

