<%-- 
    Document   : contactus
    Created on : May 26, 2021, 3:56:04 PM
    Author     : Aniket kolte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contact Us | Gym Management System</title>
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
                Contact Us Form
            </h2>
            <br>
            <hr/>
            <br>
            <form action="#">

                
                <label class="redchar">Name*</label>
                <input type="text">
                
                <label>Email*</label>
                <input type="text">
                
                <label>Phone*</label>
                <input type="text">
                
                <label >Subject*</label>
                <input type="text">
                
                <label>Message*</label>
                <textarea type="text" rows="4" cols="54"></textarea>
                
                <button type="submit">Send</button>
                <button type="reset">Reset</button>
                
            </form>
        </div>
</div>
        <%@ include file = "footer.jsp" %>

</body>
</html>
