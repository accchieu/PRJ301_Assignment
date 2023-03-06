<%-- 
    Document   : updateProduct
    Created on : Mar 3, 2023, 12:13:30 AM
    Author     : vuhai
--%>

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
    <div class="container">
        <h1>Form Thêm mới sản phẩm</h1>

        <form method="post" action="updateProduct" class="form">
            <table class="table">
                <tr>
                    <td>ProductId</td>
                    <td><input type="text" name="ProductId" id="supplier_code" class="form-control" value="${product.productId}" /></td>
                </tr>
                <tr>
                    <td>CategoryId</td>
                    <td><input type="text" name="CategoryId" id="supplier_code" class="form-control" value="${product.categoryId}" /></td>
                </tr>
                <tr>
                    <td>DisplayName</td>
                    <td><input type="text" name="DisplayName" id="DisplayName" class="form-control" value="${product.displayName}"  /></td>
                </tr>
                <tr>
                    <td>UnitId</td>
                    <td><input type="text" name="UnitId" id="UnitId" class="form-control" value="${product.unitId}"  /></td>
                </tr>
                <tr>
                    <td>SuplierId</td>
                    <td><input type="text" name="SuplierId" id="SuplierId" class="form-control" value="${product.suplierId}"  /></td>
                </tr>
                <tr>
                    <td>total</td>
                    <td><input type="text" name="total" id="total" class="form-control" value="${product.total}"  /></td>
                </tr>
                <tr>
                    <td>image</td>
                    <td><input type="text" name="image" id="image" class="form-control" value="${product.image}"  /></td>
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
