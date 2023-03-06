<%-- 
    Document   : home
    Created on : Feb 13, 2023, 9:31:54 PM
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
        <link rel="stylesheet" href="./css/footer.css">
        <link rel="stylesheet" href="./css/header.css">

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
        <div class="container-fluid">

            <div class="row">

                <div class="col-md-3">

                    <h1 class="my-4">toys SHOP</h1>
                    <div class="list-group">
                        <a href="manageProduct.jsp" class="list-group-item">QUẢN LÝ SẢN PHẨM</a>
                        <a href="#" class="list-group-item">Category 2</a>
                        <a href="#" class="list-group-item">Category 3</a>
                        <a href="#" class="list-group-item">Category 3</a>
                        <a href="#" class="list-group-item">Category 3</a>
                        <a href="#" class="list-group-item">Category 3</a>
                        <a href="#" class="list-group-item">Category 3</a>
                        <a href="#" class="list-group-item">Category 3</a>
                        <a href="#" class="list-group-item">Category 3</a>
                        <a href="#" class="list-group-item">Category 3</a>
                        <a href="#" class="list-group-item">Category 3</a>
                        <a href="#" class="list-group-item">Category 3</a>

                    </div>

                </div>
                <!-- /.col-lg-3 -->

                <div class="col-md-9">

                    <!-- Slider -->
                    <div id="demo" class="carousel slide" data-ride="carousel">
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                        </ul>

                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT38w98wlqPWKURKODuMDZLK78AweUoRlKz3iwIy1FbEHVZDPLGHRPD1pKO4Zp1qHLR8SA&usqp=CAU" alt="Los Angeles" width="1100" height="500" >
                                <div class="carousel-caption">
                                    <h3>Los Angeles</h3>
                                    <p>We had such a great time in LA!</p>
                                </div>   
                            </div>
                            <div class="carousel-item">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT38w98wlqPWKURKODuMDZLK78AweUoRlKz3iwIy1FbEHVZDPLGHRPD1pKO4Zp1qHLR8SA&usqp=CAU" alt="Chicago" width="1100" height="500">
                                <div class="carousel-caption">
                                    <h3>Chicago</h3>
                                    <p>Thank you, Chicago!</p>
                                </div>   
                            </div>
                            <div class="carousel-item">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT38w98wlqPWKURKODuMDZLK78AweUoRlKz3iwIy1FbEHVZDPLGHRPD1pKO4Zp1qHLR8SA&usqp=CAU" alt="New York" width="1100" height="500">
                                <div class="carousel-caption">
                                    <h3>New York</h3>
                                    <p>We love the Big Apple!</p>
                                </div>   
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                    <!-- ./ end slider -->

                    <!-- Product List -->
                    <div class="row">
                        <c:forEach var="list" items="${lists}">
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
