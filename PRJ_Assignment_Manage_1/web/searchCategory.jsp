<%-- 
    Document   : searchProduct
    Created on : Mar 12, 2023, 12:48:28 AM
    Author     : vuhai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>GVN360 - Trang chủ</title>
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet"
              id="bootstrap-css">
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>


        <!------ Include the above in your HEAD tag ---------->

        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        

        <style>
            /* Make the image fully responsive */
            .carousel-inner img  {
                width: 100%;
                height: 80%;
                padding-bottom: 10px;
            }
            .list-group{
                font-size: 16px;
                font-style: italic;
            }
        </style>
    </head>

    <body>
        <jsp:include page="header.jsp" />
        
                    <!-- Product List -->
                    <div class="row">
                        <c:forEach var="list" items="${result}">
                            <div class="col-md-4 col-md-6 mb-4">
                                <div class="card h-100">
                                    <a href="#"><img class="card-img-top"
                                                     src="${list.image}"
                                                     alt=""></a>
                                    <div class="card-body">
                                        <h4 class="card-title">
                                            <a href="#">${list.displayName}</a>
                                        </h4>
                                         <h5>Số Lượng: ${list.total}</h5>
                                        
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted"> </small>
                                    </div>
                                </div>
                            </div>


                        </c:forEach>
                    </div>
                    <!-- /.row Product List -->

                </div>
                <!-- /.col-lg-9 -->

            </div>
            <!-- /.row -->

        </div>
        <jsp:include page="footer.jsp" />

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="slick/slick.min.js"></script>
    </body>

</html>
