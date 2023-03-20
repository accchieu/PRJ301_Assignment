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

        <link rel="stylesheet" href="./css/home.css">

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

            .input-group button{
                font-size: 16px;
            }
            .input-group{
                font-size: 18px;
                margin: 10px;

            }

        </style>
    </head>

    <body>
        <jsp:include page="header.jsp" />



        <div class="container-fluid">

            <div class="row">

                <div class="col-md-3">

                    <h1 class="my-4">Search by category</h1>

                    <div class="list-group">

                        <c:forEach items="${listC}" var="category">
                            <a href="<c:url value="/searchCategory?cate=${category.categoryId}"></c:url>" class="list-group-item">${category.categoryName}</a>
                        </c:forEach>


                    </div>

                    <h1 class="my-4">Các hoạt động</h1>

                    <div class="list-group">
                        <a href="crudProduct" class="list-group-item">CRUDProduct</a>
                        <a href="crudCategory" class="list-group-item">CRUDCategory</a>
                        <a href="crudSuplier" class="list-group-item">CRUDSuplier</a>
                        <a href="crudUnit" class="list-group-item">CRUDUnit</a>
                    </div>

                </div>
                <!-- /.col-lg-3 -->

                <div class="col-md-9">
                    <form action="searchProduct" method="get">
                        <div class="input-group">

                            Search Product By Name: &ensp; <input type="search" name="search" />&ensp;
                            <button type="button" class="btn btn-outline-primary">search</button>

                        </div>

                    </form>
                    <!-- Slider -->
                    <div id="demo" class="carousel slide" data-ride="carousel">
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                        </ul>

                        <div class="carousel-inner">
                            <c:forEach items="${top1}" var="t">
                                <div class="carousel-item active">

                                    <img src="${t.image}" alt="Responsive image">
                                    <div class="carousel-caption">
                                        
                                    </div> 
                                </div>
                            </c:forEach>


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
                    <ul class="pagination pagination_lg">
                        <c:forEach begin="1" end="${endPage}" var="i">
                            <li class="page"><a class="${tag == i?active:""}" href="home?index=${i}">${i}</a></li>

                        </c:forEach>

                    </ul>
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
