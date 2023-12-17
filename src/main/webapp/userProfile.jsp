<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
   
</head>
<style>
   body {
            background-color: #f8f9fa;
        }

        .login-container {
            max-width: 400px;
            margin: auto;
            margin-top: 100px;
        }
        .form-group {
        	padding: 6px;
        }
        .btn-submit {
        	margin-top: 16px;
        	margin-bottom: 16px;
        }
  </style>


<body>
<div class="container login-container">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title text-center">User Profile</h5>
            <form action="UserServlet" method="post">
                <div class="form-group">
                    <label for="username">Username:</label>
        			<input type="text" id="username" name="username" value="${user.username}" required>
                </div>
                 <div class="form-group">
                     <label for="email">Email:</label>
        			 <input type="email" id="email" name="email" value="${user.email}" required>
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
        			<input type="text" id="address" name="address" value="${user.address}" required>
                </div>
                <div class="form-group">
                    <label for="phoneNumber">Phone Number:</label>
        			<input type="text" id="phoneNumber" name="phoneNumber" value="${user.phoneNumber}" required>
                </div>
                
                <div class="form-group">
                    <label for="password">password:</label>
        			<input type="text" id="password" name="password" value="${user.password}" required>
                </div>
               
               	<input type="hidden" name="userId" value="${user.userId}"> 
               
                <input class="form-control btn btn-primary btn-block btn-success" type="submit" value="Update Profile">
                
                <hr>
                
                 <input class="form-control btn btn-primary btn-block btn-primary" type="submit" name=action value="Back">
                
            </form>
        </div>
    </div>
</div>
</body>
</html>
