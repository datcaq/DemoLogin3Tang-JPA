<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Trang Chủ - Danh Sách Sản Phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4 shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold" href="<c:url value='/home'/>">SHOPPING STORE</a>
            <div>
                <a href="<c:url value='/admin/categories'/>" class="btn btn-outline-warning btn-sm me-2">Trang Admin</a>
                <a href="<c:url value='/logout'/>" class="btn btn-danger btn-sm">Đăng xuất</a>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container pb-5">
        <h3 class="fw-bold mb-4 text-secondary text-center">Danh Mục Sản Phẩm (JPA)</h3>
        <div class="row g-4">
            <c:forEach items="${listCategory}" var="cate">
                <div class="col-md-4 col-sm-6">
                    <div class="card h-100 shadow-sm text-center p-3 border-0 rounded-4">
                        <c:choose>
                            <c:when test="${cate.images != null && cate.images.startsWith('https')}">
                                <c:url value="${cate.images}" var="imgUrl"></c:url>
                            </c:when>
                            <c:when test="${not empty cate.images}">
                                <c:url value="/image?fname=${cate.images}" var="imgUrl"></c:url>
                            </c:when>
                            <c:otherwise>
                                <c:url value="https://via.placeholder.com/200" var="imgUrl"></c:url>
                            </c:otherwise>
                        </c:choose>
                        
                        <img src="${imgUrl}" class="card-img-top mx-auto img-thumbnail" style="height: 180px; width: auto; object-fit: contain;" alt="${cate.categoryname}">
                        
                        <div class="card-body">
                            <h5 class="card-title fw-bold text-primary">${cate.categoryname}</h5>
                            <p class="card-text">
                                <c:if test="${cate.status == 1}">
                                    <span class="badge bg-success">Đang kinh doanh</span>
                                </c:if>
                                <c:if test="${cate.status != 1}">
                                    <span class="badge bg-secondary">Tạm ngưng</span>
                                </c:if>
                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>