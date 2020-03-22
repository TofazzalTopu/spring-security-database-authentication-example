<!DOCTYPE html>
<html xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout" lang="en"
      xmlns:th="http://www.thymeleaf.org"
      layout:decorate="~{fragments/layout}">
<head>
    <title>Log in</title>


</head>
<body>

<jsp:include page="../common/header.jsp"/>

<div class="container">

    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <h1>Login page </h1>
            <form method="POST" action="${contextPath}/login">

                <div class="form-group ${error != null ? 'has-error' : ''}">
                    <span>${message}</span>
                    <br/>
                    <label for="username">Username</label>:
                    <input type="text"
                           id="username" name="username" class="form-control" required
                           autofocus="autofocus" placeholder="Username"/>
                </div>
                <div class="form-group  ${error != null ? 'has-error' : ''}">
                    <label for="password">Password</label>:
                    <input type="password"
                           id="password" name="password" class="form-control" required
                           placeholder="Password"/>
                </div>
                <span>${error}</span>

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3">
                            <input type="submit" name="login-submit" id="login-submit"
                                   class="form-control btn btn-primary" value="Log In"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
						<span>New user? <a href="/signup" href="${contextPath}/signup}">Register
								here</a></span>
                </div>
                <div class="form-group">
						<span id="showMore">To see Swagger and Actuator? <a href="#" href="#">Click
								here</a></span>
                </div>
            </form>

        </div>
    </div>
    <div class="row" id="showHide">
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
                <li><h3> Go to the <a href="/index" th:href="@{/index}"> Index
                    pages</a></h3></li>
            </ul>
        </div>
    </div>
</div>

<%--<jsp:include page="../common/footer.jsp"/>--%>

</body>
</html>
