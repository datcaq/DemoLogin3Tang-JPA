<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Trang Chủ</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light d-flex align-items-center justify-content-center vh-100">
    <div class="card shadow-lg p-4 text-center" style="max-width: 450px; width: 100%; border-radius: 15px;">
        <div class="card-body">
            <h2 class="card-title text-primary fw-bold mb-3">Trang Chủ</h2>
            <p class="card-text text-muted mb-4">Chào mừng bạn đến với hệ thống kiến trúc 3 tầng MVC.</p>
            <a href="${pageContext.request.contextPath}/login" class="btn btn-primary btn-lg w-100 shadow-sm">
                Đi đến trang Đăng Nhập
            </a>
        </div>
    </div>
</body>
</html>