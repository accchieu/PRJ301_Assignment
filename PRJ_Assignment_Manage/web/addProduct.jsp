<%-- 
    Document   : createProduct
    Created on : Mar 2, 2023, 11:41:57 PM
    Author     : vuhai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet"
              id="bootstrap-css">
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>

    <body>
        <jsp:include page="header.jsp" />
        <div class="container">
            <h1>Form Thêm mới sản phẩm</h1>
            <form method="post" action="addProduct" class="form">
                <table class="table">
                    <tr>
                        <td>CategoryId</td>
                        <td>  <select class="form-control" name="CategoryId">
                                <c:forEach items="${listC}" var="category">
                                    <option value="${category.categoryId}">
                                        ${category.categoryName}
                                    </option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>DisplayName</td>
                        <td><input type="text" name="DisplayName" id="DisplayName" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>UnitId</td>
                        <td>  <select class="form-control" name="UnitId">
                                <c:forEach items="${listU}" var="unit">
                                    <option value="${unit.unitId}">
                                        ${unit.unitName}
                                    </option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>SuplierId</td>
                        <td>  <select class="form-control" name="SuplierId">
                                <c:forEach items="${listS}" var="suplier">
                                    <option value="${suplier.suplierId}">
                                        ${suplier.suplierName}
                                    </option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>total</td>
                        <td><input type="text" name="total" id="total" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>image</td>
                        <td><input type="text" name="image" id="image" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><input type="text" name="price" id="image" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <button name="btnSave" class="btn btn-primary"><i class="fas fa-save"></i> Lưu dữ liệu</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>

</html>
