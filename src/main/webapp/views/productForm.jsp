<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm Sản Phẩm Mới</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h2 {
            color: #333;
        }
        .form-container {
            width: 500px;
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
        input[type="text"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        textarea {
            height: 100px;
        }
        .submit-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .submit-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h2>Thêm Sản Phẩm Mới</h2>

<div class="form-container">
    <form:form action="product-save" method="post" modelAttribute="product">
        <div class="form-group">
            <label for="name">Tên sản phẩm:</label>
            <form:input path="name" id="name" />
        </div>

        <div class="form-group">
            <label for="price">Giá:</label>
            <form:input path="price" id="price" type="number" step="0.01" min="0"/>
        </div>

        <div class="form-group">
            <label for="description">Mô tả:</label>
            <form:textarea path="description" id="description" />
        </div>

        <div class="form-group">
            <input type="submit" value="Lưu sản phẩm" class="submit-button" />
        </div>
    </form:form>
</div>
</body>
</html>