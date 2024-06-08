<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>House Details</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">
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
    .notification-icon-container {
    position: relative;
}

.icon {
    width: 20px; 
    
}
.icon-span{
    color: #12153A; font-size: 25px; font-family: Outfit; font-weight: 100; line-height: 17.55px; word-wrap: break-word
}

.notification-count { 
    position: absolute;
    top: 4px; 
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
.body{
    margin-top: 2cm;
}
.nunito {
    font-family: "Nunito", sans-serif;
    font-optical-sizing: auto;
    font-weight: 200px;
    font-style: normal;
  }
.card{
    width: 100%;
    box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2);
    padding: 10px;
}
.card-body{
    font-size: 20px;
    color: #000;
    justify-content: space-between;
}
.icon{
    width: 30px;
    height: 30px;
    margin-bottom: 5px;
}
.profil {
    width:70px;
    clip-path:ellipse(50% 50%);
 }
 .carousel-indicators {
    display: flex;
    justify-content: center;
    margin-bottom: -20px; /* Adjust as needed */
}
.carousel-indicators button {
    opacity: 1 !important; /* Set opacity to 100% */
}
@media (max-width: 768.00px) {
    .carousel-indicators{
        display: none;
    }
    .body{
        margin-top: 0cm;
    }
}

    </style>
</head>
<body>
<div id="header">
        <header> <!--el barre li mel fou9-->
            <div class="row m-0" style="width: 100%; height: 100%; background: #E6F6FF">
                <div class="col-3"><img src="http://127.0.0.1:5500/img/logo.png" alt="logo" style="width: 100%; height: 100%" ></div>
                <div class="col-1 col-sm-2 offset-4 offset-sm-2 d-flex align-items-center">
                
                    <c:if test="${sessionScope.activeUser.job eq 'landlord'}">
                    <a class=" underline-hover"  href=""><img src="http://127.0.0.1:5500/img/link.png" alt="notification" class="icon icon-a "> <span class="icon-span">list a home<!--roommates--></span>  </a>
                </c:if>
                </div>  
                
                
                <div class="col-1 col-sm-2 d-flex align-items-center">
                    
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
<div class="container-fluid">
        <div class="row mt-3">
            <div class="col-md-7 col-12">
                <div class="row">
                        <div id="carouselExample" class="carousel slide">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="http://127.0.0.1:5500/img/${requestScope.house.photo1}" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="http://127.0.0.1:5500/img/${requestScope.house.photo2}" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="http://127.0.0.1:5500/img/${requestScope.house.photo2}" class="d-block w-100" alt="...">
                                </div>
                            </div>
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExample" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1" style="width: 100px;"><img src="http://127.0.0.1:5500/img/${requestScope.house.photo1}" class="d-block w-100" alt="..."></button>
                                <button type="button" data-bs-target="#carouselExample" data-bs-slide-to="1" aria-label="Slide 2" style="width: 100px;"><img src="http://127.0.0.1:5500/img/${requestScope.house.photo2}" class="d-block w-100" alt="..."></button>
                                <button type="button" data-bs-target="#carouselExample" data-bs-slide-to="2" aria-label="Slide 3"style="width: 100px;"><img src="http://127.0.0.1:5500/img/${requestScope.house.photo3}" class="d-block w-100" alt="..."></button>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="body" >
                    <div class="row">
                        <span style="color: black; font-size: 32px; font-family: Nunito; font-weight: 400; word-wrap: break-word">
                            <u>Type:</u> ${requestScope.house.propertyType}
                        </span>
                    </div>
                    <div class="row">
                        <div class="col-3 col-lg-2">
                            <img src="http://127.0.0.1:5500/img/bed.png" style="width: 25px;" alt=""> ${requestScope.house.bedrooms} bedrooms
                        </div>
                        <div class="col">
                            <c:choose>
								    <c:when test="${requestScope.house.gender eq 'Female'}">
								        <img src="http://127.0.0.1:5500/img/female.png" width="30px" height="30px" style="margin-bottom: 3%;"> Female
								    </c:when>
								    <c:when test="${requestScope.house.gender eq 'Male'}">
								        <img src="http://127.0.0.1:5500/img/male.png" width="30px" height="30px" style="margin-bottom: 3%;">Male
								    </c:when>
								    <c:when test="${requestScope.house.gender eq 'Both'}">
								        <img src="http://127.0.0.1:5500/img/female.png" width="30px" height="30px" style="margin-bottom: 3%;">
								        <img src="http://127.0.0.1:5500/img/male.png" width="30px" height="30px" style="margin-bottom: 3%;">Both
								    </c:when>
							</c:choose>
                        </div>
                    </div>
                
                    <div class="row">
                        <h2 style="color: black; font-size: 32px; font-family: Nunito; font-weight: 400; word-wrap: break-word"><u>House Features:</u></h2>
                        <div class="row">
                            <!-- Wi-Fi -->
							<c:if test="${requestScope.house.wifi == 1}">
							    <div class="col-4 col-md-3 col-lg-2 mb-3">
							        <img src="http://127.0.0.1:5500/img/wifi.png" style="width: 20px;" alt="Wi-Fi">
							        <span>Wi-Fi</span>
							    </div>
							</c:if>

                            
                            <!-- Furnished -->
                            <c:if test="${requestScope.house.furnished == 1}">
                            <div class="col-4 col-md-3 col-lg-2 mb-3">
                                <div class="d-flex align-items-center">
                                    <img src="http://127.0.0.1:5500/img/Furnished.png" style="width: 25px;"  alt="">
                                    <span>Furnished</span>
                                </div>
                            </div>
                            </c:if>
                            
                            <!-- Water and Electricity Included -->
                            <c:if test="${requestScope.house.waterelect == 1}">
                            <div class="col-7 col-md-3 col-lg-5 mb-3">
                                <div class="d-flex align-items-center">
                                    <img src="http://127.0.0.1:5500/img/faucet.png" style ="width: 20px;" alt="">
                                    <span>Water & Electricity Included</span>
                                </div>
                            </div>
                            </c:if>
                        </div>
                    </div>
                    <div class="row">
                        <div style="width: 100%; height: 100%; color: #0B0B0B; font-size: 20px; font-family: Outfit; font-weight: 500; word-wrap: break-word">
                        ${requestScope.house.note} </div>
                    </div>
                </div>
    

                    
                
                
            
                </div>
                <div class="col-md-5 col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-title fs-1"><b>S+${requestScope.house.bedrooms}</b></div>
                            <div class="card-subtitle text-danger">${requestScope.house.monthlyRent}TND/Mo</div>
                            <div class="d-flex align-items-center">
                            <i class="fas fa-university"></i>
                                <span class="fs-4 px-2">${requestScope.house.university}</span>
                            </div>
                            ${requestScope.house.location}
                            <div><b>Listed by:</b></div>
                            <div class="d-flex align-items-center">
                                <c:choose>
					    <c:when test="${requestScope.house.landlord.picture == null}">
					        <img src="http://127.0.0.1:5500/img/avatar.png"  class="profil"/>
					    </c:when>
					    <c:otherwise><img class="profil" src="http://127.0.0.1:5500/img/${requestScope.house.landlord.picture}"></c:otherwise>
					</c:choose>
                                <span>
                                    <b>${requestScope.house.landlord.fullName}</b><br>
                                   <i class="fa fa-phone"></i> ${requestScope.house.landlord.phoneNum}
                                </span>
                            </div>
                        </div>
                    </div>
                    
                    
                </div>
        </div>
        
</div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
</body>
</html>