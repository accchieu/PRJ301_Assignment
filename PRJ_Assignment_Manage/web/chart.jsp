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
        <script src="./js/chart.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <div id="main">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-md-6 content chart-wrapper">
                        <div id="piechart_div" class="chart"></div>
                    </div>
                    
                </div>

                <h1>San pham ban chay</h1>

            </div>
        </div>
    </body>
</html>
