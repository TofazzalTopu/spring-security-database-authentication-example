<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      xmlns:th="http://www.thymeleaf.org"
      layout:decorate="~{fragments/layout}">
<head>
    <title>Index</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<%--<div layout:fragment="content" th:remove="tag">--%>
<div class="container">
    <div class="card">
        <div class="card-body">

            <%--<div class="col-md-12 col-md-offset-3">--%>
            <%--<h1>Hello Spring Security</h1>--%>
            <h2 class="card-title">Hello Spring Security</h2>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <%--<c:if test="${pageContext.request.userPrincipal.name != null}">
                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
                <h2>Welcome ${pageContext.request.userPrincipal.name} | <a
                        onclick="document.forms['logoutForm'].submit()">Logout</a>
                </h2>
            </c:if>--%>

            <h2>Horizontal form</h2>
            <form class="form-horizontal" action="/action_page.php">
                <div class="row">
                    <%--<div class="card-header">
                        Featured
                    </div>--%>

                    <div class="col-md-12">
                        <div class="form-group col-md-4">
                            <label for="pwd">Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="firstName">firstName:</label>
                            <input type="firstName" class="form-control" id="firstName" placeholder="Enter firstName"
                                   name="firstName">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="lastName">Last Name:</label>
                            <input type="lastName" class="form-control" id="lastName" placeholder="Enter lastName"
                                   name="lastName">
                        </div>

                    </div>
                </div>


                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group col-md-4">
                            <label for="phoneNumber">Phone Number:</label>
                            <input type="phoneNumber" class="form-control" id="phoneNumber"
                                   placeholder="Enter phoneNumber" name="phoneNumber">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" id="password" placeholder="Enter password"
                                   name="password">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-default">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>

</div>
</div>
</body>
</html>