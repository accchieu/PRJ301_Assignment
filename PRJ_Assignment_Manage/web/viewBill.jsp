<%-- 
    Document   : viewBill.jsp
    Created on : Mar 20, 2023, 4:09:00 PM
    Author     : vuhai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <jsp:include page="header.jsp" />
    <head>
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet"
              id="bootstrap-css">
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("are you sure delete student have id=" + id + "")) {
                    window.location = "deleteProduct?id=" + id;
                }
            }
        </script>
    </head>

    <body>
        <div class="container">
            <h1>Danh sách sản phẩm</h1>

            <!-- Button Thêm mới -->
           
            <form action="crudProduct" >
                <div class="table-responsive-sm">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ProductId</th>
                                <th>CategoryId</th>
                                <th>DisplayName</th>
                                <th>UnitId</th>
                                <th>SuplierId</th>
                                <th>Total</th>
                              
                            </tr>
                        </thead>

                        <c:forEach var="list" items="${lists}">
                            <tbody>

                                <tr>
                                    <td>${list.productId}</td>
                                    <td>${list.categoryId}</td>
                                    <td>${list.displayName}</td>
                                    <td>${list.unitId}</td>
                                    <td>${list.suplierId}</td>
                                    <td>${list.total}</td>
                                    <td>${list.image}</td>
                                    <td>${list.price}</td>
                                    
                                </tr>
                            </tbody><!-- comment -->
                        </c:forEach>
                    </table>


                </div>
            </form>
        </div>
    </body>

</html>