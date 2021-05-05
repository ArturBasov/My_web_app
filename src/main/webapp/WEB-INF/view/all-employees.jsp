<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <%@ page isELIgnored="false" %>
</head>
<head>
    <title>Employees</title>
    <style>

        body {
            background: #eee; /* Цвет фона */
            zoom: 150%;
        }

        .text {
            font-family: Arial;
            text-align: center;
        }

        table {
            width: 100%; /* Ширина таблицы */
            border: 2px solid #323232; /* Рамка вокруг таблицы */
            margin: auto; /* Выравниваем таблицу по центру окна  */
            background: #d9d9d9;
            border-collapse: collapse;
            font-family: Arial;
        }

        td, th {
            padding: 4px; /* Поля в ячейках */
            border: 1px solid #323232; /* Граница между ячейками */
        }

        th {
            background: #868686; /* Цвет фона строки заголовка */
            color: #ffe; /* Цвет текста */
            text-align: center; /* Выравнивание по левому краю */
            font-family: Arial, Helvetica, sans-serif; /* Выбор гарнитуры */
            font-size: 0.9em; /* Размер текста */
        }

        tbody tr:hover {
            background: #c1bfbf; /* Цвет фона при наведении */
            color: #ffe; /* Цвет текста при наведении */
        }

    </style>
</head>

<body>

<div class="text">

    <h2>All employees</h2>

    <input type="button" value="Logout" onclick="window.location.href = '<c:url value="/logout" />'">
    <br>
    <br>

    <table cellpadding="10">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Phone Number</th>
            <security:authorize access="hasRole('ADMIN')">
                <th>Operations</th>
            </security:authorize>
        </tr>

        <c:forEach var="emp" items="${allEmps}">

            <c:url var="updateButton" value="/updateInfo">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>

            <c:url var="deleteButton" value="/askDelete">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>

            <tr>
                <td>${emp.id}</td>
                <td>${emp.name}</td>
                <td>${emp.surname}</td>
                <td>${emp.department}</td>
                <td>${emp.salary}</td>
                <td>${emp.phoneNumber}</td>
                <security:authorize access="hasRole('ADMIN')">
                    <td>
                        <input type="button" value="Update" onclick="window.location.href='${updateButton}'">
                        <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}'">
                    </td>
                </security:authorize>
            </tr>
        </c:forEach>

    </table>
    <br>

    <security:authorize access="hasRole('ADMIN')">
        <input type="button" value="Add New Employee" onclick="window.location.href = 'addNewEmployee'">
    </security:authorize>

</div>
</body>
</html>
