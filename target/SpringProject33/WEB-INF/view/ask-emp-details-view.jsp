<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Title</title>
</head>

<body>
    <h2>Dear Employee, Please enter your details</h2>

    <br>
    <br>

    <form:form action="showDetails"
               modelAttribute="employee">

        Name: <form:input path="name"/>
        <br><br>
        Surname: <form:input path="surname"/>
        <br><br>
        Salary: <form:input path="salary"/>
        <br><br>
        Department: <form:select path="department">
        <%--<form:option value="Information Technology" label="IT"/>
        <form:option value="Human Resources" label="HR"/>
        <form:option value="Sales" label="Sales"/> --%>
        <form:options items="${employee.departments}"/>
        </form:select>
        <br><br>
        Which car do you want?
        <br><br>
        <%--BMW <form:radiobutton path="carBrand" value="BMW"/>
        Audi <form:radiobutton path="carBrand" value="Audi"/>
        MB <form:radiobutton path="carBrand" value="Mersedes-Benz"/>--%>
        <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
        <br><br>
        Foreign Language(s)
        <br><br>
        <%--EN <form:checkbox path="languages" value="English"/>
        DE <form:checkbox path="languages" value="Deutch"/>
        FR <form:checkbox path="languages" value="French"/>--%>
        <form:checkboxes path="languages" items="${employee.langList}"/>
        <br><br>
        <input type="submit" value="OK">

    </form:form>

</body>

</html>
