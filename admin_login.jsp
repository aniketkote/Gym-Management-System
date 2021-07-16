<%-- 
    Document   : adminlogin
    Created on : May 26, 2021, 4:03:21 PM
    Author     : Aniket kolte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login Page</title>
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
            
    </style>
    <script>
            function validateForm() {
              var name = document.forms["myForm"]["user_name"].value;
                var password = document.forms["myForm"]["user_password"].value;


                  if (name =="") {
                alert("Please filled UserName");
                return false;
              }

              if (password =="") {
                alert("Please filled Password");
                return false;
              }

              }
   </script>   
    
</head>
<body>
        <%@ include file = "header.jsp" %>
        
        
        <%@ include file = "menu_bar.jsp" %>
        
        
        <div class="form-wrapper">

            <h2>
                Admin Login Form
            </h2>
            <br>
            <hr/>
            <br>

            <form name="myForm" method="post" action="admin_login" onsubmit="return validateForm()">

                <% 
                try{
                    
                    String data = session.getAttribute("msg").toString();
                    out.println("<h4 style='color:red; text-align:center;'>"+data+"</h4><br>");
                    session.removeAttribute("msg");
                

                }catch(Exception e){
                
                }
                
                %>
                
                 
                <label class="redchar">Usearname*</label>
                <input type="text" name="user_name">
                
                <label>Password*</label>
                <input type="password" name="user_password">

                <div class="btn-wrapper">
                    <button type="submit">Login</button>
                    <button type="reset">Reset</button>
                </div>
                
            </form>
        </div>
</div>

        <%@ include file = "footer.jsp" %>


 
</body>
</html>
