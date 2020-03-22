<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      xmlns:th="http://www.thymeleaf.org"
      layout:decorate="~{fragments/layout}"
      ng-app="app">
<%--<html ng-app="app">--%>
<head>
    <meta charset="ISO-8859-1">
    <title>User CRUD</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
    <script src="/resources/js/angular/user/user.js"></script>
    <style>
        a {
            cursor: pointer;
            background-color: lightblue;
        }
    </style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>

<div ng-controller="UserCRUDCtrl">
    <table>
        <tr>
            <td width="100">ID:</td>
            <td><input type="text" id="id" ng-model="user.id"/></td>
        </tr>
        <tr>
            <td width="100">Name:</td>
            <td><input type="text" id="username" ng-model="user.username"/></td>
        </tr>
        <tr>
            <td width="100">Email:</td>
            <td><input type="text" id="email" ng-model="user.email"/></td>
        </tr>
    </table>
    <br/> <br/>
    <a ng-click="getUser(user.id)">Get User</a>
    <a ng-click="updateUser(user.id,user.username,user.email)">Update User</a>
    <a ng-click="addUser(user.username,user.email)">Add User</a>
    <a ng-click="deleteUser(user.id)">Delete User</a>

    <br/> <br/>
    <p style="color: green">{{message}}</p>
    <p style="color: red">{{errorMessage}}</p>

    <br/>
    <br/>
    <a ng-click="getAllUsers()">Get all Users</a><br/>
    <br/> <br/>
    <%--<div ng-repeat="usr in users">
        {{usr.username}} {{usr.email}}
        {{alert("msg")}}
    </div>--%>

    <div class="col-md-6">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>name</th>
                <th>email</th>
            </tr>
            </thead>
            <tbody>
            <tr *ngFor="let usr of users">
                <td>{{usr.username}}</td>
                <td>{{usr.email}}</td>
                <%--<td><button class="btn btn-danger" (click)="deleteEmployee(employee)"> Delete Employee</button></td>--%>
            </tr>
            </tbody>
        </table>

    </div>
</div>
</body>
</html>