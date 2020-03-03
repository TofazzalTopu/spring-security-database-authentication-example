<%--
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
--%>

<%--<c:set var="contextPath" value="${pageContext.request.contextPath}"/>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Log in Page</title>
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
						<span>New user? <a href="/registration">Register
								here</a></span>
                </div>

            </form>

        </div>
    </div>
</div>

<jsp:include page="../common/footer.jsp"/>

</body>
</html>
