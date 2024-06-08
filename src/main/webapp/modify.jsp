<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add house</title>
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
    .profil {
    width:70px;
    clip-path:ellipse(50% 50%);
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
                 
                
                <div class="col-1 offset-3 col-sm-2 d-flex align-items-center">
                    
                    <a href="http://localhost:8580/studar/Controller?email=${sessionScope.activeUser.email}&password=${sessionScope.activeUser.password}&myBtn=Login" id="home" class="underline-hover" ><img src="http://127.0.0.1:5500\img\home.png" alt="notif" class="icon" id="homeim"/>
                        <span class="icon-span " >Home Page</span>
                        
                    </a>
                </div>  
               <div class="col-1 col-sm-2  d-flex align-items-center">
               
                    <c:if test="${sessionScope.activeUser.job eq 'landlord'}">
                    <form>
                    <input type="hidden" name="userId" value="${sessionScope.activeUser.id}">
                    <img src="http://127.0.0.1:5500/img/link.png" alt="notification" class="icon icon-a "> <button style="border:none; background-color:transparent;" type="submit" name="myBtn" value="list" ><span class="icon-span">list a home</span></button>
                    </form>
                </c:if>
                </div> 
                <div class="col-2 d-flex align-items-center">
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
        </header></div>
  <div class="card">
    <form  action="Controller">
    <div class="container" id="con1">
        
        
         <div class="row">
            <div class="col-4 offset-2">
                
                    <h1 class="outfit">listing information :</h1>
                    <div class="form-group mt-3" >
                         <label for="monthly" class="form-label outfit"><h4>Monthly rent (Between 150DT and 990DT)</h4></label>
                         <input type="number" min="150" max="990" class="form-control form-control-lg " name="monthly"  value="${requestScope.house.monthlyRent}" required>
                    </div>
 
            </div>
        </div>

        <div class="row">
            <div class="offset-2 col-3">
                <div class="form-group mt-3" >
                    <label for="bedrooms" class="form-label outfit"><h4>Bedrooms</h4></label>
                    <input type="number" max="10" min="0" class="form-control form-control-lg " name="bedrooms" value="${requestScope.house.bedrooms}"required>
                </div>

            </div>
        </div>
           <h4 class="outfit offset-2 mt-3">Gender</h4>
        
<div class="form-check form-check-inline offset-2">
    <input class="form-check-input" type="radio" id="female" value="Female" name="gender" ${requestScope.house.gender == 'Female' ? 'checked' : ''} required>
    <label class="form-check-label" for="female">Female</label>
</div>
<div class="form-check form-check-inline">
    <input class="form-check-input" type="radio" id="male" value="Male" name="gender" ${requestScope.house.gender == 'Male' ? 'checked' : ''} required>
    <label class="form-check-label" for="male">Male</label>
</div>
<div class="form-check form-check-inline">
    <input class="form-check-input" type="radio" id="both" value="Both" name="gender" ${requestScope.house.gender == 'Both' ? 'checked' : ''} required>
    <label class="form-check-label" for="both">Both</label>
</div>

              <div class="row"> 
                <div class="col-6 offset-2">
                        <div class="form-group mt-2" >
                            <label for="uni" class="form-label outfit"><h4>university or campus near by :</h4></label>
                            <input type="text" class="form-control form-control-lg " name="uni" value="${requestScope.house.university}" required>
                       </div>
                </div>
            </div>
            <h4 class="outfit offset-2 mt-3">Amenities</h4>
            
            <div class="form-check offset-2">
                <input class="form-check-input" type="checkbox"  name="furnished" ${requestScope.house.furnished == 1 ? "checked" : ""}>
                <label class="form-check-label outfit" for="op2">
                  Furnished
                </label>
                </div>
                <div class="form-check offset-2">
                <input class="form-check-input" type="checkbox"  name="wifi" ${requestScope.house.wifi == 1 ? "checked" : ""}>
                <label class="form-check-label outfit" for="op4">
                  Wifi
                </label>
               </div>
               <div class="form-check offset-2">
                <input class="form-check-input" type="checkbox"  name="water"${requestScope.house.waterelect == 1 ? "checked" : ""}>
                <label class="form-check-label outfit" for="op5">
                  water and electricity included
                </label>
            </div>
           
            <div class="row">
                <div class="col-4 offset-2">
            <h4 class="outfit   mt-3">Notes(optional) </h4>
           <textarea name="note"  cols="30" rows="10"  class=" form-control" >${requestScope.house.note}</textarea>
        </div>
        </div>
              <input type="hidden" name="email" value="${sessionScope.activeUser.email}">
                            <input type="hidden" name="houseId" value="${requestScope.house.houseId}">
              

        <div class="row">
            <div class="offset-8 col-5 mt-5">
                <input type="submit" style="margin-top:0.5cm"  class="btn btn-info btn-lg btn-blocck rounded-pill" value="modify" name="myBtn">
            </div>
        </div>
        </div>
        
</form>
        
    
    </div>
    
    
 
</body>
</html>