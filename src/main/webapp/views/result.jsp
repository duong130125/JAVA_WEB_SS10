<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kết quả thông tin người dùng</title>
    <style>
        .result-container {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .user-info {
            margin-bottom: 10px;
        }
        .label {
            font-weight: bold;
        }
        .value {
            margin-left: 10px;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #4CAF50;
        }
    </style>
</head>
<body>
<div class="result-container">
    <h2>Kết quả thông tin người dùng</h2>

    <div class="user-info">
        <span class="label">Name:</span>
        <span class="value">${user.username}</span>
    </div>

    <div class="user-info">
        <span class="label">Age:</span>
        <span class="value">${user.age}</span>
    </div>

    <div class="user-info">
        <span class="label">Address:</span>
        <span class="value">${user.address}</span>
    </div>

    <a href="userForm" class="back-link">Back to Form</a>
</div>
</body>
</html>