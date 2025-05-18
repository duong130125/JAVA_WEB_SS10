<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thông Tin Sản Phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h2 {
            color: #333;
        }
        .product-details {
            width: 500px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .detail-item {
            margin-bottom: 10px;
        }
        .label {
            font-weight: bold;
            color: #555;
        }
        .value {
            margin-left: 10px;
        }
        .back-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
        }
        .back-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h2>Thông Tin Sản Phẩm Đã Thêm</h2>

<div class="product-details">
    <div class="detail-item">
        <span class="label">Tên sản phẩm:</span>
        <span class="value">${product.name}</span>
    </div>

    <div class="detail-item">
        <span class="label">Giá:</span>
        <span class="value">${product.price}</span>
    </div>

    <div class="detail-item">
        <span class="label">Mô tả:</span>
        <span class="value">${product.description}</span>
    </div>
</div>

<a href="product-add" class="back-button">Thêm sản phẩm mới</a>
</body>
</html>