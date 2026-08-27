<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Category</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container py-4">
    <div class="row justify-content-center">
        <div class="col-md-6 card p-4 shadow-sm">
            <h4 class="mb-3 text-warning text-dark">Cập Nhật Danh Mục (JPA)</h4>
            <form action="<c:url value='/admin/category/update'/>" method="post" enctype="multipart/form-data">
                <input type="hidden" name="categoryid" value="${cate.categoryid}">
                
                <div class="mb-3">
                    <label class="form-label">Category name:</label>
                    <input type="text" class="form-control" id="categoryname" name="categoryname" value="${cate.categoryname}" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Link images:</label>
                    <input type="text" class="form-control" id="images" name="images" value="${cate.images}">
                </div>
                <div class="mb-3">
                    <label class="form-label d-block">Hình ảnh hiện tại:</label>
                    <c:choose>
                        <c:when test="${cate.images != null && cate.images.startsWith('https')}">
                            <c:url value="${cate.images}" var="imgUrl"></c:url>
                        </c:when>
                        <c:otherwise>
                            <c:url value="/image?fname=${cate.images}" var="imgUrl"></c:url>
                        </c:otherwise>
                    </c:choose>
                    <img height="100" width="150" class="img-thumbnail" src="${imgUrl}" />
                </div>
                <div class="mb-3">
                    <label class="form-label">Upload images mới:</label>
                    <input type="file" class="form-control" id="images1" name="images1">
                </div>
                <div class="mb-3">
                    <label class="form-label d-block">Status:</label>
                    <input type="radio" id="ston" name="status" value="1" ${cate.status == 1 ? 'checked' : ''}>
                    <label for="ston" class="me-3">Hoạt động</label>
                    <input type="radio" id="stoff" name="status" value="0" ${cate.status != 1 ? 'checked' : ''}>
                    <label for="stoff">Khóa</label>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
                <a href="<c:url value='/admin/categories'/>" class="btn btn-secondary">Quay lại</a>
            </form>
        </div>
    </div>
</body>
</html>