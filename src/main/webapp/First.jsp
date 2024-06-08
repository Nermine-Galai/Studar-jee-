<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>first lising</title>
  <!-- Bootstrap CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles -->
  <style>
    /* Background image */
   .body {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 96vh;
    background: url('http://127.0.0.1:5500/img/house2.jpg') no-repeat;
    background-size: cover;
    background-position: center;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    
}
.profil {
    width:70px;
    clip-path:ellipse(50% 50%);
 }
#list{
    width: 100%; 
    height: 100%; 
    text-align: center; 
    color: #103d57; 
    font-size: 90px; 
    font-family: Outfit; 
    font-weight: 700; 
    line-height: 90px; 
    letter-spacing: 6.30px; 
    word-wrap: break-word ;
    }
#bt{
    color: rgba(102, 102, 102, 0.80); 
    font-size: 15px; 
    font-family: Outfit; 
    font-weight: 700; 
    letter-spacing: 2.50px; 
    word-wrap: break-word ;
}
button{
       width: 100%;
       background: #196d8f;
       font-size: 16px; 
      
}


.wrapper {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center; /* Center items vertically and horizontally */
    width: 700px;
    
    max-width: 90%; /* Change to maximum width for responsiveness */
    margin: 0 auto; /* Center the wrapper horizontally */
    padding: 20px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Improved box shadow */
    background: rgba(255, 255, 255, 0.8); /* Adjusted background color */
    border-radius: 20px; /* Slightly reduced border radius */
    overflow: hidden;
    margin-top: 0;
}

h1 {
    font-size: 24px; /* Adjust font size as needed */
    margin-bottom: 20px; /* Add spacing between elements */
}

.wrapper button.btn {
    width: 300px;
    height: 60px;
    background: #196d8f;
    font-size: 16px;
    color: #ffffff;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.wrapper button.btn:hover {
    background-color: #135366;
}



    
a.underline-hover {
            text-decoration: none; /* Removes underline by default */
        }

        a.underline-hover:hover {
            text-decoration: underline; /* Adds underline on hover */
        }

    .notification-icon-container {
        position: relative;
    }
    
    .icon {
        width: 40px; 
        height: auto; 
        margin-top: -0.2cm;
    }
    .icon-a{
        width: 30px;
    }
    
    .icon-span{
        
        color: #12153A; font-size: 25px; font-family: Outfit; font-weight: 100; line-height: 17.55px; word-wrap: break-word
    }
    
    .notification-count { 
        position: absolute;
        top: 0px; 
        right:3px;
        background-color: red;
        color: white;
        width: 45%;
        height: 45%;
        border-radius: 50%;
        padding: 5px;
        font-size: 12px; 
        display: flex;
        align-items: center;
        justify-content: center;
    }
    
    @media (max-width: 1140.00px) {
        .icon-span {
            font-size: 18px;
        }
        .notification-count {
            width: 30%;
            font-size: 8px;
        }
        .icon{
            width: 25px;
        }
        .icon-a{
           width: 23px;
        }
    }
    @media (max-width: 800.00px) {
        .icon-span {
            font-size: 15px;
        }
    }
    @media (max-width: 710.00px) {
        .icon-span {
            display: none;
        }
    }


  </style>
</head>
<body> 
    <div id="header">
        <header> <!--el barre li mel fou9-->
            <div class="row m-0" style="width: 100%; height: 100%; background: #E6F6FF">
                <div class="col-3"><img src="http://127.0.0.1:5500/img/logo.png" alt="logo" style="width: 100%; height: 100%" ></div>
                 
                
                <div class="col-1 offset-2 col-sm-2 d-flex align-items-center">
                    
                    <a href="http://localhost:8580/studar/Controller?email=${sessionScope.activeUser.email}&password=${sessionScope.activeUser.password}&myBtn=Login" id="home" class="underline-hover" ><img src="http://127.0.0.1:5500\img\home.png" alt="notif" class="icon" id="homeim"/>
                        <span class="icon-span " >Home Page</span>
                        
                    </a>
                </div>  
               
                <div class="col-2 offset-3 d-flex align-items-center">
                    <a href="http://localhost:8580/studar/signlog.jsp" class=" underline-hover" id="log">
                    <c:choose>
					    <c:when test="${sessionScope.activeUser.picture == null}">
					        <img src="http://127.0.0.1:5500/img/avatar.png" alt="notif" class="icon" id="logim"/>
					    </c:when>
					    <c:otherwise><img class="profil" src="http://127.0.0.1:5500/img/${sessionScope.activeUser.picture}"></c:otherwise>
					</c:choose>

                    <span class="icon-span">Log out</span></a>
                </div>     
                         
            </div>
        </header>
    </div>
    
    <div class="row body">
      <div class="wrapper">
        <div class="blur-overlay"></div> <!-- Add the overlay inside .wrapper -->
        <h1 id="list">List a house</h1>
        
       <a href="http://localhost:8580/studar/add.jsp"> <button class="btn btn-lg ">Post your first rental free</button></a>
        
    </div>
    </div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>

  
</body>
</html>
