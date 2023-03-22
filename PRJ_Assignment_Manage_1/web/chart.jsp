<%-- 
    Document   : chart
    Created on : Mar 15, 2023, 9:40:15 PM
    Author     : vuhai
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://www.gstatic.com/charts/loader.js"></script><!-- comment -->
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet"
              id="bootstrap-css">
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
        
        <script src="./js/chart.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container">
        <div class="row">
            <div class="col-md-6">
                
                   

                        <div class="row">
                            <div class="col-md-6 content chart-wrapper">
                                <div id="piechart_div" class="chart"></div>
                            </div>

                        </div>

                       

                    
                
            </div>
            <div class="col-md-6">
                 <h1>San pham ban chay</h1>
                <div class="table-responsive-sm">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ProductId</th>
                                <th>Quantity</th>
                                <th>Name</th>

                            </tr>
                        </thead>

                        <c:forEach var="list" items="${data}">
                            <tbody>

                                <tr>
                                    <td>${list.productId}</td>
                                    <td>${list.quantity}</td>
                                    <td>${list.displayName}</td>


                                </tr>
                            </tbody><!-- comment -->
                        </c:forEach>
                    </table>


                </div>
            </div>
        </div>
        </div>
    </body>
</html>
