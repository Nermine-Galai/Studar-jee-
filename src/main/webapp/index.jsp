<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>House Scroll</title>
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
                <div class="col-1 col-sm-2 offset-4 offset-sm-2 d-flex align-items-center">
               
                    <c:if test="${sessionScope.activeUser.job eq 'landlord'}">
                    <form action="Controller">
                    <input type="hidden" name="email" value="${sessionScope.activeUser.email}">
                    <img src="http://127.0.0.1:5500/img/link.png" alt="notification" class="icon icon-a "> <button style="border:none; background-color:transparent;" type="submit" name="myBtn" value="list" ><span class="icon-span">list a home</span></button>
                    </form>
                </c:if>
                </div>  
                 
               
                <div class="col-2 offset-2 d-flex align-items-center">
                    
				<a href="http://localhost:8580/studar/signlog.jsp" class=" underline-hover" id="log">
				                    <c:choose>
									    <c:when test="${sessionScope.activeUser.picture == null}">
									        <img src="http://127.0.0.1:5500/img/avatar.png" alt="notif" class="icon" id="logim"/>
									    </c:when>
									    <c:otherwise><img class="profil" src="http://127.0.0.1:5500/img/${sessionScope.activeUser.picture}"></c:otherwise>
									</c:choose>
				
				                    <span class="icon-span">Log out</span></a>                </div>           
            </div>
        </header>
    </div>
    <div class="container-fluid ">
        <!--city and uni filters-->
        <form action="Controller">
        <div class="row mt-3" style="margin-left:0.3cm ">
       
            <!--university filter-->
        <div class="col-lg-5 col-4">
            <div class="col d-none d-sm-inline"><!--appear all at large-->
            <div style="width: 100%; height: 100%; background: #E9E9ED; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px">
                <div class="input-group"  >
                    <span class="input-group-text"style="background-color: #E9E9ED; border-color: #E9E9ED;"><i class="fas fa-university"></i></span> <!-- Gender icon -->
                    <input style="background-color: #E9E9ED; border-color: #E9E9ED;" class="form-control" name="university" value="University">
                  </div>
                </div>
            </div>
                <div class="col d-sm-none"><!--appear only icon at small-->
                    <div class="filters" style="  width: 1.18cm; height: 100%; background: #E9E9ED; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px">
                        <div class="input-group "  >
                            <span class="input-group-text "style="background-color: #E9E9ED; border-color: #E9E9ED;"><i class="fas fa-university"></i></span> <!-- Gender icon -->
            
                          </div>
                        </div>
                    </div>
                </div>

                </div>
                <div class="row mt-3" style="margin-left:0.3cm ">
                    <!--price filter-->
            <div class="col-lg-2  col-1">
                <div class="col  d-none d-lg-inline"><!--appear all at large-->
            <div class="filters" style="  width: 100%; height: 100%; background: #E9E9ED; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px">
                <div class="input-group" id="priceDropdown">
                <span class="input-group-text" style="background-color: #E9E9ED; border-color: #E9E9ED;"><i class="fas fa-usd"></i></span> <!-- Gender icon -->
                <span class="form-select hide" aria-label="More" style="background-color: #E9E9ED; border-color: #E9E9ED;">TND</span>
            </div>
            <div style="background-color: #E9E9ED; border-color: #E9E9ED;" id="priceDropdownContent" class="dropdown-content hide2">
                <div class="range_container">
    <div class="sliders_control">
        <input id="fromSlider" type="range" value="150" min="150" max="990"/>
        <input id="toSlider" type="range" value="500" min="150" max="990"/>
    </div>
    <div class="form_control">
        <div class="form_control_container">
            <div class="form_control_container__time">Min</div>
            <input class="form_control_container__time__input" type="number" id="fromInput" name="min" value="150" min="150" max="990"/>
        </div>
        <div class="form_control_container">
            <div class="form_control_container__time">Max</div>
            <input class="form_control_container__time__input" type="number" id="toInput" name="max" value="990" min="400" max="990"/>
        </div>
    </div>
</div>
            </div>
                </div>
            </div>
            <div class="col d-lg-none"><!--appear only icon at small-->
                <div class="filters" style="  width: 1.18cm; height: 100%; background: #E9E9ED; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px">
                    <div class="input-group "  >
                        <span class="input-group-text "style="background-color: #E9E9ED; border-color: #E9E9ED;"><i class="fas  fa-usd"></i></span> <!-- Gender icon -->
        
                      </div>
                    </div>
                </div>
                </div>
                <!--room filter-->
            <div class="col-lg-2 offset-1 offset-sm-0 col-1">
                <div class="col  d-none d-lg-inline"><!--appear all at large-->
            <div class="filters" style="  width: 100%; height: 100%; background: #E9E9ED; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px">
                <div class="input-group"  >
                    <span class="input-group-text "style="background-color: #E9E9ED; border-color: #E9E9ED;"><i class="fas Example of cube fa-cube"></i></span> <!-- Gender icon -->
                    <select class="form-select hide " aria-label="Select Gender" name="bedroom" style="background-color: #E9E9ED; border-color: #E9E9ED; ">
                      <option value="room" selected>room</option>
                      <option value="0">0</option>
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                    </select>
                  </div>
                </div>
            </div>
            <div class="col d-lg-none"><!--appear only icon at small-->
                <div class="filters" style="  width: 1.18cm; height: 100%; background: #E9E9ED; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px">
                    <div class="input-group "  >
                        <span class="input-group-text "style="background-color: #E9E9ED; border-color: #E9E9ED;"><i class="fas Example of cube fa-cube"></i></span> <!-- Gender icon -->
        
                      </div>
                    </div>
                </div>
                </div>
                
                    <!--gender filter-->
            <div class="col-lg-2 offset-1 offset-sm-0 col-1">
                <div class="col  d-none d-lg-inline"><!--appear all at large-->
            <div class="filters" style="  width: 100%; height: 100%; background: #E9E9ED; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px">
                <div class="input-group "  >
                    <span class="input-group-text "style="background-color: #E9E9ED; border-color: #E9E9ED;"><i class="fas fa-venus-mars"></i></span> <!-- Gender icon -->
                    <select class="form-select hide " aria-label="Select Gender" name="gender" style="background-color: #E9E9ED; border-color: #E9E9ED; ">
                      <option value="Gender" selected>Gender</option>
                      <option value="Male">Male</option>
                      <option value="Female">Female</option>
                    </select>
                  </div>
                </div>
            </div>
            <div class="col d-lg-none"><!--appear only icon at small-->
                <div class="filters" style="  width: 1.18cm; height: 100%; background: #E9E9ED; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px">
                    <div class="input-group "  >
                        <span class="input-group-text "style="background-color: #E9E9ED; border-color: #E9E9ED;"><i class="fas fa-venus-mars"></i></span> <!-- Gender icon -->
        
                      </div>
                    </div>
                </div>
                </div>
                    <!--property type filter-->
            <div class="col-lg-2 offset-1 offset-sm-0 col-1">
                <div class="col d-none d-lg-inline"><!--appear all at large-->
                <div style="width: 100%; height: 100%; background: #E9E9ED; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px">
                    <div class="input-group"  >
                        <span class="input-group-text"style="background-color: #E9E9ED; border-color: #E9E9ED;"><i class="fas fa-building"></i></span> <!-- Gender icon -->
                        <select class="form-select hide" aria-label="Select Uni" name="property" style="background-color: #E9E9ED; border-color: #E9E9ED; ">
                          <option value="prop" selected>Property Type</option>
                          <option value="House">House</option>
		                  <option value="Apartment">Apartment</option>
		                  <option value="Condo">Condo</option>
		                  <option value="Villa">Villa</option>
                        </select>
                      </div>
                    </div>
                </div>
                    <div class="col d-lg-none"><!--appear only icon at small-->
                        <div class="filters" style="  width: 1.18cm; height: 100%; background: #E9E9ED; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px">
                            <div class="input-group "  >
                                <span class="input-group-text "style="background-color: #E9E9ED; border-color: #E9E9ED;"><i class="fas fa-building"></i></span> <!-- Gender icon -->
                
                              </div>
                            </div>
                        </div>
                    </div>
                    
                    <!--more filter-->
            <div class="col-lg-2 offset-1 offset-sm-0 col-1">
    <div class="col d-none d-lg-inline"><!--appear all at large-->
        <div class="filters" style="width: 100%; height: 100%; background: #E9E9ED; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px">
            <div class="input-group" id="moreDropdown">
                <span class="input-group-text" style="background-color: #E9E9ED; border-color: #E9E9ED;"><i class="fas fa-ellipsis-h"></i></span> <!-- Gender icon -->
                <span class="form-select hide" aria-label="More" style="background-color: #E9E9ED; border-color: #E9E9ED;">More</span>
            </div>
            <div style="background-color: #E9E9ED; border-color: #E9E9ED;" id="moreDropdownContent" class="dropdown-content hide1">
                <div class="form-check">
  <input class="form-check-input" type="checkbox" id="wifiCheckbox" name="wifi">
  <label class="form-check-label" for="wifiCheckbox">
    WiFi
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" id="furnishedCheckbox" name="furnished">
  <label class="form-check-label" for="furnishedCheckbox">
    Furnished
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" id="utilitiesCheckbox" name="water">
  <label class="form-check-label" for="utilitiesCheckbox">
    Water and Electricity Included
  </label>
</div>
                
            </div>
        </div>
    </div>
    <div class="col d-lg-none"> <!--appear only icon at small-->
        <div class="filters" style="width: 1.18cm; height: 100%; background: #E9E9ED; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px">
            <div class="input-group">
                <span class="input-group-text" style="background-color: #E9E9ED; border-color: #E9E9ED;"><i class="fas fa-ellipsis-h"></i></span> <!-- Gender icon -->
            </div>
        </div>
    </div>
</div>
            
                    <div class="col-2  col d-none d-lg-inline"><button type="submit" name="myBtn" value="Search" class="btn " style="margin-top: 0.35cm; width: 60% ;background: #53C9F6; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px; font-family: DM Sans;">Search</button></div> <!--appear search word at large-->
                    <div class="col-2 offset-sm-0 col d-lg-none"><button type="submit" name="myBtn" value="Search" class="btn search" style="width: 60% ;background: #53C9F6; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 13.59px; font-family: DM Sans;"><i class="fa fa-search" aria-hidden="true"></i></button></div> <!--appear search icon at small-->
    
        </div>
        </form>
        <!--cards-->
        
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
                     
                    </div><br>
                    <c:if test="${sessionScope.activeUser.job eq 'student'}">
          <div class="d-grid gap-2">
          <form action="Controller">
          <input type="hidden" name="houseId" value="${house.houseId}">
          <button name="myBtn" value="details" type="submit" class="btn btn-primary">More details</button>
          </form>
            
           
          </div>
          </c:if>
                </div>
                
            </div>
            </div>
    
</c:forEach>
    
           
          
    </div>
        </div>


   
    
    
    <script>
    document.addEventListener("DOMContentLoaded", function() {
        var moreDropdown = document.getElementById("moreDropdown");
        var moreDropdownContent = document.getElementById("moreDropdownContent");
        
        moreDropdown.addEventListener("click", function() {
            moreDropdownContent.classList.toggle("hide1");
        });
    });

</script>
 <script>
    document.addEventListener("DOMContentLoaded", function() {
        var priceDropdown = document.getElementById("priceDropdown");
        var priceDropdownContent = document.getElementById("priceDropdownContent");
        
        priceDropdown.addEventListener("click", function() {
            priceDropdownContent.classList.toggle("hide2");
        });
    });

</script>
    <!-- Font Awesome -->
    
    <script>
    function controlFromInput(fromSlider, fromInput, toInput, controlSlider) {
        const [from, to] = getParsed(fromInput, toInput);
        fillSlider(fromInput, toInput, '#C6C6C6', '#25daa5', controlSlider);
        if (from > to) {
            fromSlider.value = to;
            fromInput.value = to;
        } else {
            fromSlider.value = from;
        }
    }
        
    function controlToInput(toSlider, fromInput, toInput, controlSlider) {
        const [from, to] = getParsed(fromInput, toInput);
        fillSlider(fromInput, toInput, '#C6C6C6', '#25daa5', controlSlider);
        setToggleAccessible(toInput);
        if (from <= to) {
            toSlider.value = to;
            toInput.value = to;
        } else {
            toInput.value = from;
        }
    }

    function controlFromSlider(fromSlider, toSlider, fromInput) {
      const [from, to] = getParsed(fromSlider, toSlider);
      fillSlider(fromSlider, toSlider, '#C6C6C6', '#25daa5', toSlider);
      if (from > to) {
        fromSlider.value = to;
        fromInput.value = to;
      } else {
        fromInput.value = from;
      }
    }

    function controlToSlider(fromSlider, toSlider, toInput) {
      const [from, to] = getParsed(fromSlider, toSlider);
      fillSlider(fromSlider, toSlider, '#C6C6C6', '#25daa5', toSlider);
      setToggleAccessible(toSlider);
      if (from <= to) {
        toSlider.value = to;
        toInput.value = to;
      } else {
        toInput.value = from;
        toSlider.value = from;
      }
    }

    function getParsed(currentFrom, currentTo) {
      const from = parseInt(currentFrom.value, 10);
      const to = parseInt(currentTo.value, 10);
      return [from, to];
    }

    function fillSlider(from, to, sliderColor, rangeColor, controlSlider) {
        const rangeDistance = to.max-to.min;
        const fromPosition = from.value - to.min;
        const toPosition = to.value - to.min;
        controlSlider.style.background = `linear-gradient(
          to right,
          ${sliderColor} 0%,
          ${sliderColor} ${(fromPosition)/(rangeDistance)*100}%,
          ${rangeColor} ${((fromPosition)/(rangeDistance))*100}%,
          ${rangeColor} ${(toPosition)/(rangeDistance)*100}%, 
          ${sliderColor} ${(toPosition)/(rangeDistance)*100}%, 
          ${sliderColor} 100%)`;
    }

    function setToggleAccessible(currentTarget) {
      const toSlider = document.querySelector('#toSlider');
      if (Number(currentTarget.value) <= 0 ) {
        toSlider.style.zIndex = 2;
      } else {
        toSlider.style.zIndex = 0;
      }
    }

    const fromSlider = document.querySelector('#fromSlider');
    const toSlider = document.querySelector('#toSlider');
    const fromInput = document.querySelector('#fromInput');
    const toInput = document.querySelector('#toInput');
    fillSlider(fromSlider, toSlider, '#C6C6C6', '#25daa5', toSlider);
    setToggleAccessible(toSlider);

    fromSlider.oninput = () => controlFromSlider(fromSlider, toSlider, fromInput);
    toSlider.oninput = () => controlToSlider(fromSlider, toSlider, toInput);
    fromInput.oninput = () => controlFromInput(fromSlider, fromInput, toInput, toSlider);
    toInput.oninput = () => controlToInput(toSlider, fromInput, toInput, toSlider);</script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
    </body>

</html>