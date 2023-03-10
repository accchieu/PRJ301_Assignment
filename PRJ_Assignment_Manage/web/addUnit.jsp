<%-- 
    Document   : addCategory
    Created on : Mar 9, 2023, 5:27:13 PM
    Author     : vuhai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Form Thêm mới đơn vị</h1>
            <form method="post" action="crudUnit" class="form">
                <table class="table">
                    
                    <tr>
                        <td>unitName</td>
                        <td><input type="text" name="unitName" id="CategoryName" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <button name="btnSave" class="btn btn-primary"><i class="fas fa-save"></i> Lưu dữ liệu</button>
                        </td>
                    </tr>
                </table>
                
            </form>
    </body>
</html>
