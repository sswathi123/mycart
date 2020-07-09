<%@page import="com.mycompany.mycart.entities.User"%>

<%
     User user1=(User)session.getAttribute("current-user");
     

 %>


<nav class="custom-bg navbar navbar-expand-lg navbar-dark" >
    <div class="container">
        <a class="navbar-brand" href="index.jsp">MyCart</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home<span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
    </ul>
      <ul class="navbar-nav ml-auto">
           <li class="nav-item active">
               <a class="nav-link" href="#!" data-toggle="modal" data-target="#cart"><i class="fa fa-cart-plus" style="font-size: 20px;"></i><span class="cart-items ml-0">( 0 )</span></a>
            </li>
          
        <%
         if(user1==null) {
            
             
        %>
                <li class="nav-item active">
               <a class="nav-link" href="login.jsp">Login</a>
                </li>

                <li class="nav-item active">
               <a class="nav-link" href="register.jsp">Register</a>
                </li>


        <%
         }
         else {
         %>
               <li class="nav-item active">
               <a class="nav-link" href="#"><%= user1.getUserName()%></a>
                </li>

                <li class="nav-item active">
               <a class="nav-link" href="LogoutServlet">Logout</a>
                </li>
         
         <%
         }
        %>
        
      </ul>
  </div>
    </div>
</nav>

        
<div class="modal fade" id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Your cart</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="cart-body">
              
              
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary checkout-btn" onclick="goToCheckout()">Checkout</button>
      </div>
    </div>
  </div>
</div>
<div id="toast">This is custom toast text</div>