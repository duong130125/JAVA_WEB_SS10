<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng Ký Thành Công</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        h2 {
            color: #333;
        }
        .success-message {
            color: #2e7d32;
            background-color: #e8f5e9;
            padding: 15px;
            border-radius: 4px;
            margin: 20px 0;
            font-size: 18px;
        }
        .button {
            background-color: #4285f4;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            text-decoration: none;
            display: inline-block;
        }
        .button:hover {
            background-color: #3367d6;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Đăng Ký Tài Khoản</h2>

    <div class="success-message">
        <c:choose>
            <c:when test="${not empty success}">
                ${success}
            </c:when>
            <c:otherwise>
                Bạn đã đăng ký tài khoản thành công!
            </c:otherwise>
        </c:choose>
    </div>

    <a href="register" class="button">Quay lại trang đăng ký</a>
</div>
</body>
</html>