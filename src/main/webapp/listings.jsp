<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listings</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
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
    @charset "ISO-8859-1";
.card {
    border-radius: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.7); 
    margin-top: 0.5cm;
  }
  
  .carousel-item img {
    max-width: 100%;
    height: auto;
    max-height: 220px; /* Adjust this value as needed */
}
.range_container {
  display: flex;
  flex-direction: column;
  width: 80%;
  margin: 35% auto;
}

.sliders_control {
  position: relative;
  min-height: 50px;
}

.form_control {
  position: relative;
  display: flex;
  justify-content: space-between;
  font-size: 24px;
  color: #635a5a;
}

input[type=range]::-webkit-slider-thumb {
  -webkit-appearance: none;
  pointer-events: all;
  width: 24px;
  height: 24px;
  background-color: #fff;
  border-radius: 50%;
  box-shadow: 0 0 0 1px #C6C6C6;
  cursor: pointer;
}

input[type=range]::-moz-range-thumb {
  -webkit-appearance: none;
  pointer-events: all;
  width: 24px;
  height: 24px;
  background-color: #fff;
  border-radius: 50%;
  box-shadow: 0 0 0 1px #C6C6C6;
  cursor: pointer;  
}
.profil {
    width:70px;
    clip-path:ellipse(50% 50%);
 }

input[type=range]::-webkit-slider-thumb:hover {
  background: #f7f7f7;
}

input[type=range]::-webkit-slider-thumb:active {
  box-shadow: inset 0 0 3px #387bbe, 0 0 9px #387bbe;
  -webkit-box-shadow: inset 0 0 3px #387bbe, 0 0 9px #387bbe;
}

input[type="number"] {
  color: #8a8383;
  width: 50px;
  height: 30px;
  font-size: 20px;
  border: none;
}

input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button {  
   opacity: 1;
}

input[type="range"] {
  -webkit-appearance: none; 
  appearance: none;
  height: 2px;
  width: 100%;
  position: absolute;
  background-color: #C6C6C6;
  pointer-events: none;
}

#fromSlider {
  height: 0;
  z-index: 1;
}


/* Custom CSS for carousel indicators */
.custom-indicators .carousel-indicators {
    display: none; /* Hide indicators by default */
}
/* Display indicators when hovering over the carousel container */
.card:hover .custom-indicators .carousel-indicators {
    display: flex !important;
}
.custom-indicators .carousel-indicators button {
    background-color: black !important; /* Set background color */
    width: 10px; /* Set width */
    height: 10px; /* Set height */
    border-radius: 50%; /* Make it a circle */
    border: none; /* Remove border */
    margin: 0 5px; /* Add some space between indicators */
}
.custom-indicators .carousel-indicators .active {
    background-color: white !important; /* Set active indicator color */
}



.card:hover{
    transform: scale(1.15);
}
a.in {
    color: black; /* Set the default color to black */
    text-decoration: none; /* Remove underline by default */
}

a.in:hover {
    text-decoration: underline; /* Add underline when hovered on */
}

.hide1 {
        display: none;
    }
.hide2{
        display: none;
    }

    .dropdown-content {
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
        padding: 12px 16px;
        z-index: 100;
    }

@media (max-width: 575.50px)
{
    .search{
        margin-top: 0.35cm;
    }
}
@media (max-width: 768px) {
    .card{
        margin-top: 0.8cm;
    }
}
    </style>
</head>
<body>
<div id="header">
        <header> <!--el barre li mel fou9-->
            <div class="row m-0" style="width: 100%; height: 100%; background: #E6F6FF">
                <div class="col-3"><img src="http://127.0.0.1:5500/img/logo.png" alt="logo" style="width: 100%; height: 100%" ></div>
                
                
                
                <div class="col-1 offset-4 col-sm-2 d-flex align-items-center">
                    
                    <a href="http://localhost:8580/studar/Controller?email=${sessionScope.activeUser.email}&password=${sessionScope.activeUser.password}&myBtn=Login" id="home" class="underline-hover" ><img src="http://127.0.0.1:5500\img\home.png" alt="notif" class="icon" id="homeim"/>
                        <span class="icon-span " >Home Page</span>
                        
                    </a>
                </div>  
               
                <div class="col-2 offset-1 d-flex align-items-center">
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
    <div class="container-fluid ">
    <div class="row"><span style="font-size: 24px;"><b>My listings:</b></span></div>
<div class="row">
    
    <c:forEach var="house" items="${requestScope.listHouses}" varStatus="loop">
   
    <div class="col-12 col-md-6 col-lg-3">
            <div class="card">
              <div id="carouselExampleIndicators${loop.index + 1}" class="carousel slide carousel-fade custom-indicators">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleIndicators${loop.index + 1}" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators${loop.index + 1}" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleIndicators${loop.index + 1}" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="http://127.0.0.1:5500/img/${house.photo1}" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="http://127.0.0.1:5500/img/${house.photo2}" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="http://127.0.0.1:5500/img/${house.photo3}" class="d-block w-100" alt="...">
                  </div>
                </div>
              </div>
                <div class="card-body">
                    <div class="row">
                    <p class="card-text"><span style="font-size: 24px;"><a class="in" href="./detail.html"><b>S+${house.bedrooms}</b></a></span></p>
                </div>
                <div class="row">
                <div class="card-subtitle text-danger">${house.monthlyRent}TND/Mo</div>
                
                </div>
                <div class="row">
                    <p class="card-text" style="color: red;"><span style="font-size: 20px;">${house.monthlyrent}</span></p>
                </div>
                    <div class="row">
                        <p class="card-text"><i class="fas fa-university"></i><span style="font-size: 15px;">${house.university}</span>
                    </div>
                    <div class="row">
                        <div class="col-6">
                            <i class="fas  fa-bed"></i><span style="font-size: 15px;"> ${house.bedrooms} Rooms</span>
                        </div>
                        <div class="col-6">
                            <c:choose>
								    <c:when test="${house.gender eq 'Female'}">
								        <img src="http://127.0.0.1:5500/img/female.png" width="30px" height="30px" style="margin-bottom: 3%;">
								    </c:when>
								    <c:when test="${house.gender eq 'Male'}">
								        <img src="http://127.0.0.1:5500/img/male.png" width="30px" height="30px" style="margin-bottom: 3%;">
								    </c:when>
								    <c:when test="${house.gender eq 'Both'}">
								        <img src="http://127.0.0.1:5500/img/female.png" width="30px" height="30px" style="margin-bottom: 3%;">
								        <img src="http://127.0.0.1:5500/img/male.png" width="30px" height="30px" style="margin-bottom: 3%;">
								    </c:when>
							</c:choose>
							<span style="font-size: 15px;">${house.gender}</span>
                        </div>
                     
                    </div>
                  <br>
          <div class="d-grid gap-2">
          <form action="Controller">
          <input type="hidden" name="houseId" value="${house.houseId}">
          <button name="myBtn" value="details2" type="submit" class="btn btn-primary">More details</button>
          </form>
            
           
          </div>
                </div>
                
            </div>
            </div>
    
    
</c:forEach>
    
           </div>
          <div class="row">
          <div class="col-4 offset-9">
          <a href="http://localhost:8580/studar/add.jsp"><button class="btn btn-primary btn-lg">add a listing</button></a>
          
          </div>
          </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
</body>
</html>