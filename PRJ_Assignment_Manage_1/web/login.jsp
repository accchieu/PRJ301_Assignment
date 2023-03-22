<%-- 
    Document   : login
    Created on : Feb 11, 2023, 1:14:52 PM
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
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="./css/login.css">

        <title>GVN360 - Authen</title>
    </head>

    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="panel panel-login">
                        <div class="panel-heading">
                            <div class="row">
                                <div>
                                    <a href="#" class="active" id="login-form-link">Đăng nhập</a>
                                </div>

                            </div>
                            <hr>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form id="login-form" action="loginController" method="post"
                                          role="form" style="display: block;">
                                        <div class="form-group">
                                            <input type="text" name="log_username" id="username" tabindex="1"
                                                   class="form-control" placeholder="Tên đăng nhập" value="">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="log_password" id="password" tabindex="2"
                                                   class="form-control" placeholder="Mật khẩu">
                                        </div>
                                        <div> 
                                            <a href="resetPass.jsp">Reset password</a>
                                        </div>
                                        <div class="form-group">
                                            <c:if test="${errMsg != null}">
                                                <p>${errMsg}</p>
                                            </c:if>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <input type="submit" name="login-submit" id="login-submit" tabindex="4"
                                                           class="form-control btn btn-login" value="Đăng nhập">
                                                </div>
                                            </div>
                                        </div>

                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <script src="./js/login.js"></script>

</html>
