<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <%@ page isELIgnored="false" %>
</head>
<head>
    <title>Warning</title>
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
            width: 300px; /* Ширина таблицы */
            border: 2px solid #323232; /* Рамка вокруг таблицы */
            margin: auto; /* Выравниваем таблицу по центру окна  */
            background: #d9d9d9;
            border-collapse: collapse;
            text-align: left; /* Выравнивание по левому краю */
            font-family: Arial;
        }

        td, th {
            padding: 4px; /* Поля в ячейках */
            border: 1px solid #323232; /* Граница между ячейками */
        }

    </style>
</head>
<body>

<security:authorize access="hasRole('ADMIN')">

<div class="text">

    <h3>Do you want to delete this Employee?</h3>

    <table cellpadding="10">

        <form:form action="saveEmployee" modelAttribute="employee">

            <form:hidden path="id"/>

            <tr>
                <td>
                    Name: ${delEmp.name}
                </td>
            </tr>

            <tr>
                <td>
                    Surname: ${delEmp.surname}
                </td>
            </tr>

            <tr>
                <td>
                    Department: ${delEmp.department}
                </td>
            </tr>

            <tr>
                <td>
                    Salary: ${delEmp.salary}
                </td>
            </tr>

            <tr>
                <td>
                    Phone Number: ${delEmp.phoneNumber}
                </td>
            </tr>

        </form:form>

    </table>
    <br>
    <c:url var="deleteButton" value="/deleteEmployee">
        <c:param name="empId" value="${delEmp.id}"/>
    </c:url>

    <input type="button" value="Delete" onclick="window.location.href='${deleteButton}'">

    <input type="button" onclick="history.back();" value="Back"/>

</div>

</security:authorize>

</body>
</html>
