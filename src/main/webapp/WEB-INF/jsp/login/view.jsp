<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      xmlns:th="http://www.thymeleaf.org"
      layout:decorate="~{fragments/layout}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Create an account</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<div class="container">

    <h2> User List</h2>
    <h3> All registered user showing here. </h3>

    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <span>${message}</span>

            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                </h2>
            </c:if>
        </div>
        <div class="content-wrapper">
            <section class="content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-body">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                    <tr class="info">
                                        <th colspan="11">User List</th>
                                    </tr>
                                    <tr>
                                        <th scope="col"> Sl No.</th>
                                        <th scope="col"> User Name</th>
                                        <th scope="col"> First Name</th>
                                        <th scope="col"> Last Name</th>
                                        <th scope="col"> Email</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <c:if test="${not empty userList}">
                                        <c:forEach var="user" items="${userList}" varStatus="status">
                                            <tr>
                                                <td><span> ${status.count} </span></td>
                                                <td><span> ${user.username} </span></td>
                                                <td><span> ${user.firstName} </span></td>
                                                <td><span> ${user.lastName} </span></td>
                                                <td><span> ${user.email} </span></td>
                                            </tr>
                                        </c:forEach>
                                    </c:if>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <ul>
                        <li><h3> Go to the <a href="/index" th:href="@{/index}"> Index pages</a></h3></li>
                    </ul>
                </div>
            </section>


        </div>

    </div>
</div>
</body>
</html>
