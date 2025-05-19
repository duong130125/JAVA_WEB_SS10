<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng Ký Tài Khoản</title>
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
        }
        h2 {
            color: #333;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }
        .submit-button {
            background-color: #4285f4;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            margin-top: 10px;
        }
        .submit-button:hover {
            background-color: #3367d6;
        }
        .error-message {
            color: #d32f2f;
            background-color: #fde8e8;
            padding: 10px;
            border-radius: 4px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Đăng Ký Tài Khoản</h2>

    <!-- Hiển thị thông báo lỗi nếu có -->
    <c:if test="${not empty error}">
        <div class="error-message">
                ${error}
        </div>
    </c:if>

    <!-- Form đăng ký -->
    <form:form action="register-acc" method="post" modelAttribute="account">
        <div class="form-group">
            <label for="username">Tên đăng nhập:</label>
            <form:input path="username" id="username" required="true" />
        </div>

        <div class="form-group">
            <label for="password">Mật khẩu:</label>
            <form:password path="password" id="password" required="true" />
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <form:input path="email" id="email" type="email" required="true" />
        </div>

        <div class="form-group">
            <input type="submit" value="Đăng Ký" class="submit-button" />
        </div>
    </form:form>
</div>
</body>
</html>