<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Studar</title>
  <!-- Bootstrap CSS -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom styles -->
  <style>
    /* Background image */
    .body {
      background-image: url('http://127.0.0.1:5500/img/login.jpg');
      background-size: cover;
      background-position: center;
      height: 100vh;
      margin: 0;
      display: flex;
      align-items: center;
      justify-content: flex-end;
    }
    .sign{
      transform: rotateY(180deg);
      margin-top:-0.15cm;
    }
    
    /* Styled div */
    .custom-div {
      width: 100%;
      height: 100%;
      margin-right: 0.8cm;
      position: relative;
      background: rgba(255, 255, 255, 0.25);
      border-radius: 24px;
      overflow: hidden;
      backdrop-filter: blur(11px);
      padding: 20px;
      transition: transform 0.5s ease; /* Add transition for smooth rotation */
    }
    .form-control {
      background-color: transparent !important;
      border: 1px rgba(71, 68, 68, 0.35) solid !important;
    }
    .centered-container {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      text-align: center;
      margin-top: 20px; /* Adjust this margin as needed */
    }
    .custom-control-input:checked + .custom-control-label::before {
    background-color: black;
    border-color: black; /* Border color when checked */
}

.custom-control-input:not(:checked) + .custom-control-label::before {
    background-color: transparent;
    border-color: black; /* Border color when unchecked */
}

.custom-control-label::before {
    background-color: transparent;
    border-color: black; /* Initial border color */
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
                 
                         
            </div>
        </header>
    </div>
    
    <div class="row body">
      <div class="custom-div offset-7 col-5" id="customDiv">
        <div class="login-form" style="display: block;">
          <div style="margin-top: 1cm; width: 100%; height: auto; text-align: center; color: #111111; font-size: 54px; font-family: Poppins; font-weight: 600; line-height: 68px; word-wrap: break-word">Welcome back!</div>
          <div class="offset-1">
          <div style="text-align: center; font-size: 20px; font-family: Poppins; color: #111111">
		    <c:out value="${requestScope.errorMessage}" />
		</div>
            <form action="Controller">
              <div class="form-group" style="margin-top: 1cm;">
                <div style="width: 100%; height: 100%; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 4px; display: inline-flex">
                  <div style="width: 472px; padding-bottom: 3px; padding-right: 355px; justify-content: flex-start; align-items: center; display: inline-flex">
                    <div style="color: #3b3939; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">Email address:</div>
                  </div>
                  <input name="email" style="width: 472px; height: 56px; position: relative; border-radius: 12px; border: 1px rgba(71, 68, 68, 0.35) solid" type="email" class="form-control" id="email" placeholder="Enter email" required>
                </div>
              </div>
              <div class="form-group">
                <div style="width: 472px; padding-bottom: 3px; padding-right: 355px; justify-content: flex-start; align-items: center; display: inline-flex">
                  <div style="color: #3b3939; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">Password:</div>
                </div>
                <input name="password" style="width: 472px; height: 56px; position: relative; border-radius: 12px; border: 1px rgba(71, 68, 68, 0.35) solid" type="password" class="form-control" id="password" placeholder="Enter password" required>
              </div>
              <div class="centered-container" style="margin-top: 3cm;">
                <button name="myBtn" value="Login" class="col-3" style="width: 100%; height: 100%; padding-top: 11px; padding-bottom: 12px; padding-left: 58.50px; padding-right: 58.50px; background: #111111; border-radius: 32px; overflow: hidden; justify-content: center; align-items: center; display: inline-flex">
                  <div style="text-align: center; color: white; font-size: 22px; font-family: Poppins; font-weight: 500; word-wrap: break-word">Login</div>
                </button><span style="color: #474444; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">Don’t have an acount?</span><span style="color: #666666; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word"> </span>
                <div style=" color: #474444; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word"><a href="#" id="signupLink" style="color: #111111; font-size: 16px; font-family: Poppins; font-weight: 500; word-wrap: break-word; text-decoration: underline;">Sign up</a></div>
              </div>
            </form>
          </div>
        </div>
        <div class="signup-form" style="display: none;">
          <div class="sign" style=" width: 90%; height: auto; text-align: center; color: #111111; font-size: 40px; font-family: Poppins; font-weight: 600; line-height: 68px; word-wrap: break-word">Sign Up</div>
          <div class="offset-1 sign">
          <div style="margin-left: 1.2cm; text-align: center; font-size: 20px; font-family: Poppins; color: #111111">
		    <c:out value="${requestScope.errorMessage}" />
		</div>
            <form method="post" action="Controller" enctype="multipart/form-data">
              <div class="form-group sign">
                <div style="width: 100%; height: 100%; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 4px; display: inline-flex">
                  
                    <div class="form-group sign">
                      <div style="width: 100%; height: 100%; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 4px; display: inline-flex">
                        <div style="width: 472px; padding-bottom: 3px; padding-right: 355px; justify-content: flex-start; align-items: center; display: inline-flex">
                          <div style="color: #3b3939; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">Full Name:</div>
                        </div>
                        <input name="fullname" style="width: 472px; height: 56px; position: relative; border-radius: 12px; border: 1px rgba(71, 68, 68, 0.35) solid" type="text" class="form-control" id="email" placeholder="Enter your first and last name">
                      </div>
                    </div>
                    <div class="form-group sign">
                      <div style="width: 100%; height: 100%; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 4px; display: inline-flex">
                        <div style="width: 472px; padding-bottom: 3px; padding-right: 355px; justify-content: flex-start; align-items: center; display: inline-flex">
                          <div style="color: #3b3939; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">Email address:</div>
                        </div>
                        <input name="email1" style="width: 472px; height: 56px; position: relative; border-radius: 12px; border: 1px rgba(71, 68, 68, 0.35) solid" type="email" class="form-control" id="email" placeholder="Enter email">
                      </div>
                    </div>
                    <div class="form-group sign offset-7">
                      <div style="color: #474444; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">Gender:</div>
                      <div class="custom-control custom-radio" style="display: inline-block; margin-right: 20px;">
                        <input type="radio" class="custom-control-input" id="maleRadio" name="gender" value="Male">
                        <label class="custom-control-label" for="maleRadio">Male</label>
                      </div>
                      <div class="custom-control custom-radio" style="display: inline-block;">
                        <input type="radio" class="custom-control-input" id="femaleRadio" name="gender" value="Female">
                        <label class="custom-control-label" for="femaleRadio">Female</label>
                      </div>
                    </div>
                    <div class="form-group sign offset-6" style="margin-left: 7.3cm;">
        <div style="color: #474444; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">Job:</div>
        <div class="custom-control custom-radio" style="display: inline-block; margin-right: 20px;">
            <input type="radio" class="custom-control-input" id="studentRadio" name="job" value="student" onclick="toggleFields()">
            <label class="custom-control-label" for="studentRadio">Student</label>
        </div>
        <div class="custom-control custom-radio" style="display: inline-block;">
            <input type="radio" class="custom-control-input" id="landRadio" name="job" value="landlord" onclick="toggleFields()">
            <label class="custom-control-label" for="landRadio">Landlord</label>
        </div>
    </div>
                   <div id="phone" class="form-group sign" style="display: none;">
        <div style="width: 100%; height: 100%; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 4px; display: inline-flex">
            <div style="width: 472px; padding-bottom: 3px; padding-right: 355px; justify-content: flex-start; align-items: center; display: inline-flex">
                <div style="color: #3b3939; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">Phone number:</div>
            </div>
            <input name="phone_num" style="width: 472px; height: 56px; position: relative; border-radius: 12px; border: 1px rgba(71, 68, 68, 0.35) solid" type="text" class="form-control"  placeholder="Enter phone number">
        </div>
    </div>
    <div class="form-group sign" id="universityField" style="display: none;">
        <div style="width: 100%; height: 100%; flex-direction: column; justify-content: flex-start; align-items: flex-start; gap: 4px; display: inline-flex">
            <div style="width: 472px; padding-bottom: 3px; padding-right: 355px; justify-content: flex-start; align-items: center; display: inline-flex">
                <div style="color: #3b3939; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">University:</div>
            </div>
            <select name="university" style="width: 472px; height: 56px; position: relative; border-radius: 12px; border: 1px rgba(71, 68, 68, 0.35) solid" class="form-control" id="university">
                <option value="" disabled selected>Select University</option>
                <option value="university1">University 1</option>
                <option value="university2">University 2</option>
                <option value="university3">University 3</option>
                <!-- Add more options as needed -->
            </select>
        </div>
    </div>
    
                    
                  
               <div class="form-group sign">
                <div style="width: 472px; padding-bottom: 3px; padding-right: 355px; justify-content: flex-start; align-items: center; display: inline-flex">
                  <div style="color: #3b3939; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word">Password:</div>
                </div>
                <input name="password1" style="width: 472px; height: 56px; position: relative; border-radius: 12px; border: 1px rgba(71, 68, 68, 0.35) solid" type="password" class="form-control" id="password" placeholder="Enter password">
              </div>
                <div style="margin-left:1.5cm" class="sign">
                  <div style="color: #11111; font-size: 18px; font-family: Poppins; font-weight: 400; word-wrap: break-word">choose a profile picture: (optional)</div>
              
              <input type="file" name="multiPartServlet" accept="image/*" 
                   onchange="readFilesAndDisplayPreview(this.files);" /> <br/>  
                  
                </div>
              </div>
              </div>
              
              <div class="centered-container">
                  
            
              
                <!-- Add signup button and link to switch back to login form -->
                <button name="myBtn" value="Signup" class="col-3" style="width: 100%; height: 80%; padding-top: 8px; padding-bottom: 8px; padding-left: 58.50px; padding-right: 58.50px; background: #111111; border-radius: 32px; overflow: hidden; justify-content: center; align-items: center; display: inline-flex">
                  <div style="text-align: center; color: white; font-size: 20px; font-family: Poppins; font-weight: 500; word-wrap: break-word">Signup</div>
                </button>
                <span style="color: #474444; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word"> Already have an acount?</span>
                <div style=" color: #474444; font-size: 16px; font-family: Poppins; font-weight: 400; word-wrap: break-word"><a href="#" id="loginLink" style="color: #111111; font-size: 16px; font-family: Poppins; font-weight: 500; word-wrap: break-word; text-decoration: underline;">Login</a></div>
              </div>
            </form>
            
          </div>
        </div>
      </div>
    </div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>

  <script>
    document.getElementById("signupLink").addEventListener("click", function(event) {
      event.preventDefault(); // Prevent default action of link
      document.getElementById("customDiv").style.transform = "rotateY(180deg)"; // Rotate the custom-div
      var loginForm = document.querySelector(".login-form");
      var signupForm = document.querySelector(".signup-form");

      if (loginForm.style.display === "block") {
        loginForm.style.display = "none";
        signupForm.style.display = "block";
      } else {
        loginForm.style.display = "block";
        signupForm.style.display = "none";
      }
    });

    document.getElementById("loginLink").addEventListener("click", function(event) {
      event.preventDefault();
      document.getElementById("customDiv").style.transform = "rotateY(0deg)";
      var loginForm = document.querySelector(".login-form");
      var signupForm = document.querySelector(".signup-form");

      if (signupForm.style.display === "block") {
        signupForm.style.display = "none";
        loginForm.style.display = "block";
      } else {
        signupForm.style.display = "block";
        loginForm.style.display = "none";
      }
    });
    function toggleFields() {
        var studentRadio = document.getElementById("studentRadio");
        var landRadio = document.getElementById("landRadio");
        var universityField = document.getElementById("universityField");
        var phoneField = document.getElementById("phone");

        if (studentRadio.checked) {
            universityField.style.display = "block";
            phoneField.style.display = "none";
        } else if (landRadio.checked){
            universityField.style.display = "none";
            phoneField.style.display = "block";
        }
    }
  </script>
         
        
</body>
</html>
