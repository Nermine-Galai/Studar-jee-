<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
    </style>
</head>
<body>
	<div class="container-fluid ">
        <header> <!--el barre li mel fou9-->
            <div class="row m-0" style="width: 100%; height: 100%; background: #E6F6FF">
                <div class="col-3"><img src="http://127.0.0.1:5500/img/logo.png" alt="logo" style="width: 100%; height: 100%" ></div>
                <div class="col-1 col-sm-2 offset-4 offset-sm-2 d-flex align-items-center">
                <c:out value="${sessionScope.activeUser.job}" />
                    <c:if test="${sessionScope.activeUser.name eq 'landlord'}">
                    <a class=" underline-hover"  href=""><img src="http://127.0.0.1:5500/img/link.png" alt="notification" class="icon icon-a "> <span class="icon-span">list a home<!--roommates--></span>  </a>
                </c:if>
                </div>  
                
                
                <div class="col-1 col-sm-2 d-flex align-items-center">
                    
                    <a href="" id="home" class="underline-hover" ><img src="http://127.0.0.1:5500\img\home.png" alt="notif" class="icon" id="homeim"/>
                        <span class="icon-span " >Home Page</span>
                    </a>
                </div>  
               
                <div class="col-2 d-flex align-items-center">
                    
                    <a href=""class=" underline-hover" id="log"><img src="http://127.0.0.1:5500/img/avatar.png" alt="notif" class="icon" id="logim"/><span class="icon-span">Log out</span></a>
                </div>           
            </div>
        </header>
    </div>
    <!--<img src="./img/link.png" alt="notification" class="icon ">
                    <a class="icon-span"  href="">search roommates or list a home </a>-->
</body>
</html>