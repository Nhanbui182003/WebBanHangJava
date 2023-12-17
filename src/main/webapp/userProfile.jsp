<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <!-- Add your stylesheets and scripts here -->
</head>
<body>

    <h2>User Profile</h2>

    <form action="UserServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="${user.username}" required>
        <br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${user.email}" required>
        <br>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" value="${user.address}" required>
        <br>

        <label for="phoneNumber">Phone Number:</label>
        <input type="text" id="phoneNumber" name="phoneNumber" value="${user.phoneNumber}" required>
        <br>

		<label for="password">password:</label>
        <input type="text" id="password" name="password" value="${user.password}" required>
        <br>
        
        <input type="hidden" name="userId" value="${user.userId}">

        <input type="submit" value="Update Profile">
    </form>

</body>
</html>
