<%-- 
    Document   : crudCategory
    Created on : Mar 8, 2023, 11:17:47 PM
    Author     : vuhai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="header.jsp" />
    <head>

        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet"
              id="bootstrap-css">
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("are you sure delete student have id=" + id + "")) {
                    window.location = "deleteCategory?id=" + id;
                }
            }
        </script>
    </head>
    <body>
        <h1>Form Thêm mới loại sản phẩm</h1>
        <a href="addCategory.jsp" class="btn btn-primary">
            <i class="fas fa-plus"></i> Thêm mới
        </a><br><br>
        <form action="crudProduct" >
            <div class="table-responsive-sm">
                <table class="table">
                    <thead>
                        <tr class="table-active">

                            <th>CategoryId</th>
                            <th>CategoryName</th>
                            <th>###</th>
                        </tr>
                    </thead>

                    <c:forEach var="list" items="${listC}">
                        <tbody>

                            <tr>

                                <td>${list.categoryId}</td>
                                <td>${list.categoryName}</td>

                                <td>
                                    <a href="#" onclick="doDelete('${list.categoryId}')">Delete</a>
                                </td>
                            </tr>
                        </tbody><!-- comment -->
                    </c:forEach>
                </table>
            </div>
        </form>
    </body>
</html>
