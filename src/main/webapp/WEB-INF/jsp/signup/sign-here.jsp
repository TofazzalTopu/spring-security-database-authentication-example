<!DOCTYPE html>
<html xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout" lang="en"
      xmlns:th="http://www.thymeleaf.org"
      layout:decorate="~{fragments/layout}">
<!-- Navbar-->
<header class="header">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <%--<nav class="navbar navbar-expand-lg navbar-light py-3">
        <div class="container">
            <!-- Navbar Brand -->
            <a href="#" class="navbar-brand">
                &lt;%&ndash;<img src="https://res.cloudinary.com/mhmd/image/upload/v1571398888/Group_1514_tjekh3_zkts1c.svg"
                     alt="logo" width="150">&ndash;%&gt;
            </a>
        </div>
    </nav>--%>
    <nav class="navbar navbar-expand-lg navbar-light py-3">
        <div class="container">
            <div class="col-md-8">
            </div>
            <div class="col-md-4 ml-auto">
                <h1>Create an Account</h1>
            </div>

        </div>
    </nav>
</header>

<jsp:include page="../common/header.jsp"/>

<div class="container">
    <div class="row py-5 mt-4 align-items-center">
        <div class="col-md-8">
            <img src="https://res.cloudinary.com/mhmd/image/upload/v1569543678/form_d9sh6m.svg" alt=""
                 class="img-fluid mb-3 d-none d-md-block">
            <h1>Create an Account</h1>
        </div>

        <!-- Registeration Form -->
        <div class="col-md-4 ml-auto">
            <form id="userForm" name="userForm" role="form"
                  action="executeSaveUser" method="POST">
                <%--th:action="@{/executeSaveUser}" method="POST">--%>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="row">
                    <div class="form-group col-lg-12 mx-auto mb-0">
                        <label for="userName"> User Name:</label>
                        <input id="username" type="text" name="username" placeholder="User Name"
                               class="form-control bg-white border-left-0 border-md">
                    </div>

                    <div class="form-group col-lg-12 mx-auto mb-0">
                        <label for="firstname"> First Name:</label>
                        <input id="firstName" type="text" name="firstName" placeholder="First Name"
                               class="form-control bg-white border-left-0 border-md">
                    </div>

                    <div class="form-group col-lg-12 mx-auto mb-0">
                        <label for="lastName"> Last Name:</label>
                        <input id="lastName" type="text" name="lastName" placeholder="Last Name"
                               class="form-control bg-white border-left-0 border-md">
                    </div>

                    <div class="form-group col-lg-12 mx-auto mb-0">
                        <label for="email"> Email:</label>
                        <input id="email" type="email" name="email" placeholder="Email Address"
                               class="form-control bg-white border-left-0 border-md">
                    </div>

                    <div class="form-group col-lg-12 mx-auto mb-0">
                        <label for="phoneNumber"> Phone Number:</label>
                        <input id="phoneNumber" type="tel" name="phoneNumber" placeholder="Phone Number"
                               class="form-control bg-white border-md border-left-0 pl-3">
                    </div>

                    <div class="form-group col-lg-12 mx-auto mb-0">
                        <label for="password"> Password:</label>
                        <input id="password" type="password" name="password" placeholder="Password"
                               class="form-control bg-white border-left-0 border-md">
                    </div>

                    <%--<div class="form-group col-lg-12 mx-auto mb-0">
                        <label for="passwordConfirmation">Confirmation Password:</label>
                        <input id="passwordConfirmation" type="text" name="passwordConfirmation"
                               placeholder="Confirm Password" class="form-control bg-white border-left-0 border-md">
                    </div>--%>

                    <!-- Submit Button -->
                    <%--<div class="form-group col-lg-12 mx-auto mb-0">
                        <a href="/executeSaveUser" th:href="@{/executeSaveUser}" class="btn btn-primary btn-block py-2">
                            <span class="font-weight-bold">Create your account</span>
                        </a>
                    </div>--%>

                    <div class="form-group col-lg-12 mx-auto mb-0">
                        <input type="submit" class="btn btn-primary btn-block py-2" value="Create your account"
                               id="Update" name="Update">
                    </div>

                    <!-- Divider Text -->
                    <div style="alignment: center;" class="form-group col-lg-12 mx-auto d-flex align-items-center my-4">
                        <div class="border-bottom w-100 ml-5"></div>
                        <span class="px-2 small text-muted font-weight-bold text-muted">OR</span>
                        <div class="border-bottom w-100 mr-5"></div>
                    </div>

                    <!-- Social Login -->
                    <div class="form-group col-lg-12 mx-auto">
                        <a href="https://twitter.com/home" class="btn btn-primary btn-block py-2 btn-facebook">
                            <%--<i class="fa fa-facebook-f mr-2"></i>--%>
                            <i class="fab fa-facebook-f"></i>
                            <span class="font-weight-bold">Continue with Facebook</span>
                        </a>
                        <a href="https://www.facebook.com/" class="btn btn-primary btn-block py-2 btn-twitter">
                            <%--<i class="fa fa-twitter mr-2"></i>--%>
                            <i class="fab fa-twitter"></i>
                            <span class="font-weight-bold">Continue with Twitter</span>
                        </a>
                    </div>

                    <!-- Already Registered -->
                    <div class="text-center w-100">
                        <p class="text-muted font-weight-bold">Already Registered? <a href="/login" th:href="@{/login}"
                                                                                      class="text-primary ml-2">Login</a>
                        </p>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>

</html>