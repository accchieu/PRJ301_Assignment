<%-- 
    Document   : addCategory
    Created on : Mar 9, 2023, 5:27:13 PM
    Author     : vuhai
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Form Thêm mới nhà cung ứng </h1>
            <form method="post" action="updateSuplier" class="form">
                <table class="table">
                    <tr>
                        <td>SuplierName</td>
                        <td><input type="text" name="SuplierName" value="${suplier.displayName}" class="form-control" /></td>
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
                        <td colspan="2">
                            <button name="btnSave" class="btn btn-primary"><i class="fas fa-save"></i> Lưu dữ liệu</button>
                        </td>
                    </tr>
                </table>
                
            </form>
    </body>
</html>
