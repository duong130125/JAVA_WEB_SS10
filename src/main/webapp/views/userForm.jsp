<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Information Form</title>
    <style>
        .form-container {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>User Information Form</h2>
    <form:form action="submit-Form" method="post" modelAttribute="user">
        <div class="form-group">
            <label for="username">UserName:</label>
            <form:input path="username" id="name" />
        </div>

        <div class="form-group">
            <label for="age">Age:</label>
            <form:input path="age" id="age" type="number" min="0"/>
        </div>

        <div class="form-group">
            <label for="address">Address:</label>
            <form:input path="address" id="address" />
        </div>

        <button type="submit">Submit</button>
    </form:form>
</div>
</body>
</html>