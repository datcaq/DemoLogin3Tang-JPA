<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đăng Ký Tài Khoản</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light d-flex align-items-center justify-content-center py-5">
    <div class="card shadow-lg p-4" style="max-width: 450px; width: 100%; border-radius: 12px;">
        <div class="card-body">
            <h3 class="text-center fw-bold mb-3 text-primary">TẠO TÀI KHOẢN MỚI</h3>
            
            <c:if test="${not empty alert}">
                <div class="alert alert-danger py-2 text-center small">${alert}</div>
            </c:if>

            <form action="${pageContext.request.contextPath}/register" method="post">
                <div class="mb-2">
                    <label class="form-label fw-semibold">Tài khoản</label>
                    <input type="text" name="username" class="form-control" required>
                </div>
                <div class="mb-2">
                    <label class="form-label fw-semibold">Họ và tên</label>
                    <input type="text" name="fullname" class="form-control" required>
                </div>
                <div class="mb-2">
                    <label class="form-label fw-semibold">Email</label>
                    <input type="email" name="email" class="form-control" required>
                </div>
                <div class="mb-2">
                    <label class="form-label fw-semibold">Số điện thoại</label>
                    <input type="text" name="phone" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label fw-semibold">Mật khẩu</label>
                    <input type="password" name="password" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary w-100 py-2 fw-semibold">Đăng Ký Ngay</button>
            </form>
            <div class="text-center mt-3">
                <span class="small">Đã có tài khoản?</span> 
                <a href="${pageContext.request.contextPath}/login" class="small text-decoration-none">Đăng nhập</a>
            </div>
        </div>
    </div>
</body>
</html>