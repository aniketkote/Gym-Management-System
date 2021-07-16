<%-- 
    Document   : add_membership
    Created on : May 30, 2021, 9:03:53 AM
    Author     : Aniket kolte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Membership Page</title>
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
      if (session != null) {
         if (session.getAttribute("user") != null) {
            String name = (String) session.getAttribute("user");
         } else {
            response.sendRedirect("admin_login.jsp");
         }
      }
   %>
    
    
           <%@ include file = "header.jsp" %>
        
        
        <%@ include file = "admin_menu_bar.jsp" %>
        
        
        <div class="form-wrapper">

            <h2>
                Add Membership
            </h2>
            <br>
            <hr/>
            <br>

            <form method="post" action="admin_add_membership" enctype="multipart/form-data">

                <table>
                    <tr>
                        <td>
                            <label>Membership Name*</label>
                        <input type="text" name="membership_name">
                        </td>
                        <td>
                            <label>Membership Type*</label>
                            <select type="text" name="membership_type">
                                <option value="">Select Type</option>
                                <option value="Monthy">Monthly</option>
                                <option value="3 month">3 Months</option>
                                <option value="6 month">6 Months</option>
                                <option value="8 month">8 Months</option>
                                <option value="1 year">1 Year</option>

                            </select>
                        </td>

                    </tr>
                        <td>
                            <label>Membership Categoty*</label>
                        <input type="text" name="membership_category">
                        </td>
                        <td>
                            <label>Membership Price*</label>
                            <input type="text" name="membership_price">
                        </td>

                    </tr>
                        <td>
                            <label>Number of Memberships is Stock*</label>
                        <input type="text" name="membership_stock">
                        </td>
                       

                    </tr>
                        <td>
                        <label>Description*</label>
                        <textarea type="text" cols="49" rows="8" maxlength = "54" name="membership_description"></textarea>
                        </td>

                        <td>
                            <label>Cover Image*</label>
                            <input type="file" name="membership_cover">
                        </td>
                    </tr>

                </table>

                
               
                <div class="btn-wrapper">
                    <button type="submit">Save Membership</button>
                    <button type="reset">Reset Form</button>
                </div>
                
            </form>
        </div>
        
        <%@ include file = "footer.jsp" %>

</body>
</html>
