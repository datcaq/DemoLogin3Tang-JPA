<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Lỗi Đăng Nhập</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light d-flex align-items-center justify-content-center vh-100">
    <div class="card shadow-lg p-4 text-center border-danger" style="max-width: 420px; width: 100%; border-radius: 15px;">
        <div class="card-body">
            <div class="text-danger mb-3" style="font-size: 3rem;">⚠️</div>
            <h4 class="card-title text-danger fw-bold mb-2">Đăng Nhập Thất Bại!</h4>
            <p class="card-text text-muted mb-4">Tài khoản hoặc mật khẩu bạn nhập không chính xác.</p>
            <a href="${pageContext.request.contextPath}/login" class="btn btn-outline-danger w-100 py-2 fw-semibold">
                Thử lại
            </a>
        </div>
    </div>
</body>
</html>