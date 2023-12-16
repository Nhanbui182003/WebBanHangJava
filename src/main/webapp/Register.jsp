<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
            <h5 class="card-title text-center">Register</h5>
            <form>
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" class="form-control" id="username" placeholder="Enter your username">
                </div>
                <div class="form-group">
                    <label for="username">Email:</label>
                    <input type="text" class="form-control" id="username" placeholder="ex: a@gmail.com">
                </div>
                <div class="form-group">
                    <label for="username">Phone number:</label>
                    <input type="text" class="form-control" id="username" placeholder="ex: 0830138281">
                </div>
                
                <div class="form-group">
                    <label for="username">Address:</label>
                    <input type="text" class="form-control" id="username" placeholder="123 Nguyen Luong Bang ..">
                </div>
                
                 <div class="form-group">
                    <label for="username">Password:</label>
                    <input type="password" class="form-control" id="username">
                </div>
               
                <input class="form-control btn btn-primary btn-block btn-success" type="submit" name=action value="Register">
                
                <hr>
                
                 <input class="form-control btn btn-primary btn-block btn-primary" type="submit" name=action value="Back">
                
<!--                 <div style="display: flex; justify-content: space-between; margin-top: 20px">
                	<button  type="submit" class="btn btn-primary btn-block">Login</button>
                	<button type="submit"  class="btn btn-primary btn-block" >Register </button>
                </div> -->
                
            </form>
        </div>
    </div>
</div>
</body>
</html>