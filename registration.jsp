<%-- 
    Document   : registration
    Created on : May 28, 2021, 4:12:43 PM
    Author     : Aniket kolte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <link rel="stylesheet" href="css/style.css">

    <style>
            div.page-wrapper{
            height: auto;
        }

            label,input[type="text"]{
                      display: block;
            }
            input[type="text"],input[type="password"],input[type="tel"],input[type="email"],select{
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
  var name = document.forms["myForm"]["name"].value;
    var password = document.forms["myForm"]["user_password"].value;
  var email = document.forms["myForm"]["user_email"].value;
  var mobile = document.forms["myForm"]["user_mobile"].value;
  var address = document.forms["myForm"]["user_address"].value;
  var state = document.forms["myForm"]["user_state"].value;
  var city = document.forms["myForm"]["user_city"].value;
    var pin = document.forms["myForm"]["user_pin"].value;


  if (name =="") {
    alert("Please filled Name");
    return false;
  }
  
  else if (password =="") {
    alert("Please filled password");
    return false;
  } 
  else if (email =="") {
    alert("Please filled email");
    return false;
  }
    else if (mobile =="") {
    alert("Please filled mobile");
    return false;
  }
    else if (address =="") {
    alert("Please filled address");
    return false;
  }
    else if (state =="") {
    alert("Please filled state");
    return false;
  }
    else if (city =="") {
    alert("Please filled city");
    return false;
  }
    else if (pin =="") {
    alert("Please filled pin");
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
                Registration Form
            </h2>
            <br>
            <hr/>
            <br>

            
            
            
            
            <form  name="myForm" action="registration" onsubmit="return validateForm()" method="post">

                <table>
                    <tr>
                        <td>
                            <label>Name*</label>
                            <input type="text" name="name">
                        </td>
                        
                        <td>
                            <label for="">Password*</label>
                            <input type="password" name="user_password">
                        </td>
                     
                    </tr>
                   
                    <tr>
                        <td>
                            <label>Email*
                            
                                                <% 
                try{
                    
                    String data = session.getAttribute("msg").toString();
                    out.println("<p style='color:red;'>"+data+"</p>");
                    session.removeAttribute("msg");
                

                }catch(Exception e){
                
                }
                
                %>
                
                            
                            </label>
                            <input type="email" name="user_email">
                        </td>
                        
                        <td>
                            <label for="">Mobile*</label>
                            <input type="text" name="user_mobile">
                        </td>
                     
                    </tr>
                    <tr>
                        <td>
                            <label>Address*</label>
                            <input type="text" name="user_address">
                        </td>
                        
                        <td>
                            <label for="">State*</label>
                            <select type="text" name="user_state">
                                
                                <option value="">Select State</option>
                                <option value="Andhra Pradesh">Andhra Pradesh</option>
                                <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                <option value="Assam">Assam</option>
                                <option value="Bihar">Bihar</option>
                                <option value="Chhattisgarh">Chhattisgarh</option>
                                <option value="Goa">Goa</option>
                                <option value="Gujarat">Gujarat</option>
                                <option value="Haryana">Haryana</option>
                                <option value="Himachal Pradesh">Himachal Pradesh</option>
                                <option value="Mizoram	Aizwal">Mizoram	Aizwal</option>
                                <option value="Jharkhand">Jharkhand</option>
                                <option value="Karnataka">Karnataka</option>
                                <option value="Kerala">Kerala</option>
                                <option value="Madhya Pradesh">Madhya Pradesh</option>
                                <option value="Maharashtra">Maharashtra</option>
                                <option value="Manipur">Manipur</option>
                                <option value="Meghalaya">Meghalaya</option>
                                <option value="Nagaland">Nagaland</option>
                                <option value="Odisha">Odisha</option>
                                <option value="Punjab">Punjab</option>
                                <option value="Rajasthan">Rajasthan</option>
                                <option value="Sikkim">Sikkim</option>
                                <option value="Tamil Nadu">Tamil Nadu</option>
                                <option value="Tripura">Tripura</option>
                                <option value="Telangana">Telangana</option>
                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                <option value="Uttarakhand">Uttarakhand</option>
                                <option value="West Bengal">West Bengal</option>

                            </select>

                        </td>
                     
                    </tr>
                    <tr>
                        <td>
                            <label>City*</label>
                            <input type="text" name="user_city">
                        </td>
                        
                        <td>
                            <label for="">Pin*</label>
                            <input type="text" name="user_pin">
                        </td>
                     
                    </tr>
                </table>
             

                <div class="btn-wrapper">
                    <button type="submit">Register</button>
                    <button type="reset">Reset</button>
                </div>
                
            </form>
        </div>
</div>

        <%@ include file = "footer.jsp" %>


</body>
</html>
