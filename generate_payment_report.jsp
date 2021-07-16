<%-- 
    Document   : admin_membership_report
    Created on : Jun 2, 2021, 12:38:44 AM
    Author     : Aniket kolte
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.gms.connectionProvider.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Report</title>
    <link rel="stylesheet" href="css/style.css">

    <style>
            div.page-wrapper{
            height: auto;
        }
           
            .form-wrapper{
                padding: 20px;
                display: grid;
                justify-content: center;
               width: 100%;
               height: auto; 
               background-color: #b2bec3;
            }
            
            .form-wrapper{
                align-items: center;
            }
            table {
                    font-family: arial, sans-serif;
                    border-collapse: collapse;
                    width: 100%;
                  }

                  td, th {
                    border: 1px solid #dddddd;
                    text-align: left;
                    padding: 8px;
                  }
                  th {
                    text-align: center;
                  }
                  tr:nth-child(odd) {
                    background-color: #cfd1d0;
                  }
                    tr:first-child{
                    color:white;
                    background-color: #2c3e50;
                  }

            </style>
    <script>
        
    </script>
    
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
                All Customer Report
            </h2>
            <br>
            <hr/>
            <br>
            <table >
                <tr>
                  <th>Customer Name</th>
                  <th>Payment Month</th>
                  <th>Payment Date</th>
                  <th>Paid Amount</th>
                </tr>
                <%
              try{
              Connection con= ConnectionProvider.getCon();
              Statement st =con.createStatement();
              String sql ="select * from payment";
              ResultSet rs = st.executeQuery(sql);
              while(rs.next()){
              %>
              <tr>
              <td><%=rs.getString("m_name") %></td>
              <td><%=rs.getString("month") %></td>
              <td><%=rs.getString("date") %></td>
              <td><%=rs.getString("amount") %></td>
              </tr>
              <%
              }
              con.close();
              } catch (Exception e) {
              e.printStackTrace();
              }
              %>
              </table>
          
        </div>
</div>

        <%@ include file = "footer.jsp" %>


 
</body>
</html>
