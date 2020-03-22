<!DOCTYPE html>
<html xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout" lang="en"
      xmlns:th="http://www.thymeleaf.org"
      layout:decorate="~{fragments/layout}">
<head>
    <title> Swagger and Actuator </title>
</head>
<body>

<jsp:include page="common/header.jsp"/>

<div class="container">

    <div class="row">
    </div>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <ul>
                <li>Click here <a href="/swagger-ui.html" th:href="@{/swagger-ui.html}"> Swagger </a> to show Swagger
                    Implementation
                </li>
            </ul>
            <ul>
                <li>Click here <a href="/browser/index.html#/actuator" th:href="@{//browser/index.html#/actuator}">
                    Actuator </a> to show Actuator
                    Implementation
                </li>
            </ul>

            <ul>
                <li><h3> Go to the <a href="/index" th:href="@{/index}"> Index pages</a></h3></li>
            </ul>
        </div>
    </div>
</div>


</body>
</html>
