<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>图书添加</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/s/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col">
            <nav class="navbar navbar-expand-lg bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Navbar</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Dropdown
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled">Disabled</a>
                            </li>
                        </ul>
                        <form class="d-flex" role="search">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-header">
                    图书添加
                </div>
                <div class="card-body">
                  <form method="post" enctype="multipart/form-data">
                      <div class="mb-3 row">
                          <label for="inputName" class="col-sm-2 col-form-label">Name</label>
                          <div class="col-sm-10">
                              <input type="text" class="form-control" id="inputName" name="name" value="${param.name}">
                          </div>
                      </div>
                      <div class="mb-3 row">
                          <label for="inputAuthor" class="col-sm-2 col-form-label">Author</label>
                          <div class="col-sm-10">
                              <input type="text" class="form-control" id="inputAuthor" name="author" value="${param.author}">
                          </div>
                      </div>
                      <div class="mb-3 row">
                          <label for="inputTid" class="col-sm-2 col-form-label">Tid</label>
                          <div class="col-sm-10">
                              <input type="text" class="form-control" id="inputTid" name="tid" value="${param.tid}">
                          </div>
                      </div>
                      <div class="mb-3 row">
                          <label for="inputPrice" class="col-sm-2 col-form-label">Price</label>
                          <div class="col-sm-10">
                              <input type="text" class="form-control" id="inputPrice" name="price" value="${param.price}">
                          </div>
                      </div>
                      <div class="mb-3 row">
                          <label for="inputDescri" class="col-sm-2 col-form-label">Descri</label>
                          <div class="col-sm-10">
                              <input type="text" class="form-control" id="inputDescri" name="descri" value="${param.descri}">
                          </div>
                      </div>
                      <div class="mb-3 row">
                          <label for="inputPhoto" class="col-sm-2 col-form-label">Photo</label>
                          <div class="col-sm-10">
                              <input type="file" class="form-control" id="inputPhoto" name="photox">
                              <%--此处不能回填 type类型value赋值没用，来源W3cSchool用法说明--%>
                          </div>
                      </div>
                      <div class="mb-3 row">
                          <label for="inputPubdate" class="col-sm-2 col-form-label">Pubdate</label>
                          <div class="col-sm-10">
                              <input type="text" class="form-control" id="inputPubdate" name="pubdate" value="${param.pubdate}">
                          </div>
                      </div>
                      <div class="mb-3 row">
                          <label class="col-sm-2 col-form-label"></label>
                          <div class="col-sm-10">
                              <button type="submit">添加</button>
                          </div>
                      </div>
                  </form>
                </div>
                <div class="card-footer">

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-header">
                <p class="text-center">南师雷王仔版权所有&copy;</p>
            </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/s/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>
