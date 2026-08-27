<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Category</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container py-4">
    <div class="row justify-content-center">
        <div class="col-md-6 card p-4 shadow-sm">
            <h4 class="mb-3 text-success">Thêm Danh Mục Mới (JPA)</h4>
            <form action="<c:url value='/admin/category/insert'/>" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label class="form-label">Category name:</label>
                    <input type="text" class="form-control" id="categoryname" name="categoryname" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Link images (Online):</label>
                    <input type="text" class="form-control" id="images" name="images">
                </div>
                <div class="mb-3">
                    <label class="form-label">Upload images (File):</label>
                    <input type="file" class="form-control" id="images1" name="images1">
                </div>
                <div class="mb-3">
                    <label class="form-label d-block">Status:</label>
                    <input type="radio" id="ston" name="status" value="1" checked>
                    <label for="ston" class="me-3">Hoạt động</label>
                    <input type="radio" id="stoff" name="status" value="0">
                    <label for="stoff">Khóa</label>
                </div>
                <button type="submit" class="btn btn-success">Insert</button>
                <a href="<c:url value='/admin/categories'/>" class="btn btn-secondary">Quay lại</a>
            </form>
        </div>
    </div>
</body>
</html>