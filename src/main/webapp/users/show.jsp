<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/users/header.jsp" %>

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/user/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
        </div>
        <div class="card-body">
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Nazwa użytkownika</th>
                    <th>Email</th>
                    <th>Hasło</th>
                </tr>
                <tr>
                    <td>${user.id}</td>
                    <td>${user.userName}</td>
                    <td>${user.email}</td>
                    <td>${user.password}<td>
                </tr>
            </table>
        </div>
    </div>
</div>

<%--<link href="<c:url value="/theme/css/sb-admin-2.css"/>" rel="stylesheet">--%>
<!-- /.container-fluid -->
<%@ include file="/users/footer.jsp" %>
