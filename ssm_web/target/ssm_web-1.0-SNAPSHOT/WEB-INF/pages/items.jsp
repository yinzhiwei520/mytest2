<%--
  Created by IntelliJ IDEA.
  User: administratorad
  Date: 2020/2/7
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table>
        <form action="/items/insert" method="post">
            <table>
                <tr>
                    <td>名称</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>价格</td>
                    <td><input type="text" name="price"/></td>
                </tr>
                <tr>
                    <td>图片</td>
                    <td><input type="text" name="pic"/></td>
                </tr>
                <tr>
                    <td>创建日期</td>
                    <td><input type="text" name="createtime"/></td>
                </tr>
                <tr>
                    <td>详情</td>
                    <td><input type="text" name="detail"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="提交"/>
                    </td>
                </tr>
            </table>
        </form>
    </table>
    <hr>
    <table border="1">
        <tr>
            <td>ID</td>
            <td>name</td>
            <td>price</td>
            <td>pic</td>
            <td>createTime</td>
            <td>detail</td>
            <td></td>
        </tr>
        <c:forEach items="${requestScope.items}" var="item">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.price}</td>
                <td>${item.pic}</td>
                <td>${item.createtime}</td>
                <td>${item.detail}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
