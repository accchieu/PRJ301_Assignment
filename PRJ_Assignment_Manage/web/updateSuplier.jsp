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
    <jsp:include page="header.jsp" />
    <div class="container">
        <h1>Form Thêm mới sản phẩm</h1>

        <form method="post" action="updateSuplier" class="form">
            <table class="table">
                <tr>
                    <td>SuplierId</td>
                    <td><input type="text" name="SuplierId" id="supplier_code" class="form-control" value="${suplier.suplierId}" readonly=""/></td>
                </tr>
                <tr>
                        <td>SuplierName</td>
                        <td><input type="text" name="displayName" value="${suplier.displayName}" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>SuplierAddress</td>
                        <td><input type="text" name="SuplierAddress" value="${suplier.suplierAddress}" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td><input type="text" name="Phone" value="${suplier.phone}" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="Email" value="${suplier.email}" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td>MoreInfo</td>
                        <td><input type="text" name="MoreInfo" value="${suplier.moreInfo}" class="form-control" /></td>
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
