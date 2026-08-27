<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light d-flex align-items-center justify-content-center vh-100">
    <div class="card shadow-lg p-4" style="max-width: 400px; width: 100%; border-radius: 15px;">
        <div class="card-body">
            <h3 class="text-center text-dark fw-bold mb-4">ĐĂNG NHẬP</h3>
            <form action="${pageContext.request.contextPath}/login" method="post">
                <div class="mb-3">
                    <label class="form-label fw-semibold">Tài khoản</label>
                    <input type="text" name="username" class="form-control" placeholder="Nhập tài khoản (admin)" required>
                </div>
                <div class="mb-4">
                    <label class="form-label fw-semibold">Mật khẩu</label>
                    <input type="password" name="password" class="form-control" placeholder="Nhập mật khẩu (123)" required>
                </div>
                <button type="submit" class="btn btn-success w-100 py-2 fw-bold shadow-sm">Đăng Nhập</button>
            </form>
            <div class="text-center mt-3">
                <a href="${pageContext.request.contextPath}/" class="text-muted text-decoration-none small">← Về trang chủ</a>
            </div>
        </div>
    </div>
</body>
</html>