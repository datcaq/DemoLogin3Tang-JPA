<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Category List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container py-4">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h3>Quản Lý Danh Mục (JPA 3.0)</h3>
        <div>
            <a href="<c:url value='/admin/category/add'/>" class="btn btn-success">+ Add Category</a>
            <a href="<c:url value='/logout'/>" class="btn btn-outline-danger ms-2">Đăng xuất</a>
        </div>
    </div>
    <hr>
    <table class="table table-bordered table-hover align-middle">
        <thead class="table-dark text-center">
            <tr>
                <th style="width: 60px;">STT</th>
                <th style="width: 150px;">Images</th>
                <th>Category name</th>
                <th style="width: 130px;">Status</th>
                <th style="width: 150px;">Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${listcate}" var="cate" varStatus="STT">
                <tr>
                    <td class="text-center">${STT.index + 1}</td>
                    <td class="text-center">
                        <c:choose>
                            <c:when test="${cate.images != null && cate.images.startsWith('https')}">
                                <c:url value="${cate.images}" var="imgUrl"></c:url>
                            </c:when>
                            <c:otherwise>
                                <c:url value="/image?fname=${cate.images}" var="imgUrl"></c:url>
                            </c:otherwise>
                        </c:choose>
                        <img height="80" width="120" class="img-thumbnail" src="${imgUrl}" />
                    </td>
                    <td>${cate.categoryname}</td>
                    <td class="text-center">
                        <c:if test="${cate.status == 1}"><span class="badge bg-success">Hoạt động</span></c:if>
                        <c:if test="${cate.status != 1}"><span class="badge bg-secondary">Khóa</span></c:if>
                    </td>
                    <td class="text-center">
                        <a href="<c:url value='/admin/category/edit?id=${cate.categoryid}'/>" class="btn btn-warning btn-sm">Sửa</a> |
                        <a href="<c:url value='/admin/category/delete?id=${cate.categoryid}'/>" onclick="return confirm('Bạn có chắc muốn xóa?')" class="btn btn-danger btn-sm">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>