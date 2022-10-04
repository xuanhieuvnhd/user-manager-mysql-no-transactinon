<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sắp xếp tài khoản</title>
</head>
<body>
<p>
    <a href="/users">Quay lại danh sách tài khoản</a>
</p>
<center>
    <h5><a href="/users?action=create">Tạo tài khoản mới</a></h5>
    <h5><a href="/users?action=search">Tìm tài khoản theo quốc gia</a></h5>
    <h5><a href="/users?action=sort"> Sắp xếp tài khoản theo tên</a></h5>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>Danh sách đã được sắp xếp theo tên</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="user" items="${userList}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                </td>
                <td><a href="/users?action=delete&id=${user.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
