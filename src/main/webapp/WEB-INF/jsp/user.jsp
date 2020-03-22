<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User List </title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            console.log("ready!");
            alert("${userList}");
        });

        $(window).on("load", function () {
            console.log("window loaded");
        });
    </script>
</head>
<body>

<div>
    <div class="container">
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </c:if>
    </div>

    <div class="content-wrapper">
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table class="table table-bordered table-striped">
                                <thead>
                                <tr class="info">
                                    <th colspan="11">User List</th>
                                </tr>
                                <tr>
                                    <th scope="col"> Sl</th>
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
                                            <td><span> ${user.username} </span></td>
                                            <td><span> ${user.firstName} </span></td>
                                            <td><span> ${user.lastName} </span></td>
                                            <td><span> ${user.email} </span></td>
                                        </tr>
                                    </c:forEach>
                                </c:if>

                                <%-- <c:forEach var="user" items="${userList}" varStatus="status">
                                       <tr>
                                           <td th:text="${status.count}"></td>
                                           <td th:text="${user.username}"></td>
                                           <td th:text="${user.email}"></td>
                                       </tr>
                                   </c:forEach>--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

</div>

</body>
</html>