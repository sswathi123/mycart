<%

     User user=(User)session.getAttribute("current-user");
     if(user==null) {
            session.setAttribute("message", "You are not logged in !!!");
            response.sendRedirect("login.jsp");
            return;
     }
    

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Out</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        
        <div class="container">
            
            <div class="row mt-5">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center mb-3">Your selected items</h3>
                            
                            <div class="cart-body"></div>
                        </div>
                    </div>
                    
                    
                </div>
                <div class="col-md-6">
                    
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center mb-3">Your details for order</h3>
                            <form action="#!">
                                
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input value="<%= user.getUserEmail() %>" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                                  
                                </div>
                                 <div class="form-group">
                                    <label for="name">Your Name</label>
                                    <input value="<%= user.getUserName() %>" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name">
                                  
                                </div>  
                                <div class="form-group">
                                    <label for="number">Your Contact</label>
                                    <input value="<%= user.getUserPhone() %>" type="number" class="form-control" id="number" aria-describedby="emailHelp" placeholder="Enter phone number">
                                  
                                </div>
                                 <div class="form-group">
                                    <label for="exampleFormControlTextarea1">Your Shipping Address</label>
                                    <textarea  class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Enter your Address"></textarea>
                                  </div>
                                
                                <div class="container text-center">
                                    
                                    <button class="btn btn-outline-success">Order Now</button>
                                    <button class="btn btn-outline-primary">Continue shopping</button>
                                </div>
                            </form>
                            
                        </div>
                    </div>
                    
                </div>
                
            </div>
            
        </div>
        
        
    </body>
</html>
