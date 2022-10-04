<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tạo tài khoản mới</title>
    <style>
        .message{
            color: mediumvioletred;
        }
    </style>
</head>
<body>
<p>
    <a href="/users">Quay lại danh sách tài khoản</a>
</p>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Thêm tài khoản</h2>
            </caption>
            <tr>
                <th>Tên tài khoản:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Hộp thư:</th>
                <td>
                    <input type="text" name="email" id="email" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Quốc gia:</th>
                <td>
                    <input type="text" name="country" id="country" size="15"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Tạo"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
