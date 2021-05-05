<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee INFO</title>
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
            width: 500px; /* Ширина таблицы */
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

        <h3>Employee INFO</h3>
        <form:form action="saveEmployee" modelAttribute="employee">

            <form:hidden path="id"/>

            <table cellpadding="10">

                <tr>
                    <td>
                        Name <form:input path="name"/>
                        <form:errors path="name"/> <%--валидация--%>
                    </td>
                </tr>

                <tr>
                    <td>
                        Surname <form:input path="surname"/>
                    </td>
                </tr>

                <tr>
                    <td>
                            <%--                        Department <form:input path="department"/>--%>

                        Department
                        <form:radiobutton path="department" value="IT"/> IT
                        <form:radiobutton path="department" value="Sales"/> Sales
                        <form:radiobutton path="department" value="HR"/> HR
                        <form:errors path="department"/> <%--валидация--%>
                    </td>
                </tr>

                <tr>
                    <td>
                        Salary <form:input path="salary"/>
                        <form:errors path="salary"/> <%--валидация--%>
                    </td>
                </tr>

                <tr>
                    <td>
                        Phone Number <form:input path="phoneNumber"/>
                        <br>
                        <form:errors path="phoneNumber"/> <%--валидация--%>
                    </td>
                </tr>

            </table>
            <br>

            <input type="submit" value="Ok">
            <input type="button" onclick="history.back();" value="Back"/>

        </form:form>

    </div>

</security:authorize>

</body>
</html>
