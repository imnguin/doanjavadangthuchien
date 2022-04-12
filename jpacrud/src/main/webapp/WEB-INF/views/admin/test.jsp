<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>
<style>
table, th, td {
  border: 1px solid black;
}
td {
  padding-right: 30px;
}
</style>
</head>
<body>
  <c:url value="/add-category" var="urlSave"/>
  <c:url value="/customer-view/" var="urlView"/>
  <c:url value="/update-category/" var="urlUpdate"/>
  <c:url value="/customerDelete/" var="urlDelete"/>
  <h1>List Customer:</h1>
  <a href="${urlSave}">Add Customer</a>
  <br />
  <br />
  <table>
    <tr>
      <th>Id</th>
      <th>Name</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
    <c:if test="${not empty cate}">
      <c:forEach var="ca" items="${cate}">
        <tr style="border: 1px black solid">
          <td>${ca.id}</td>
          <td>${ca.name}</td>
          <td> <a href="${urlUpdate}/${ca.id}">Edit</a></td>
          <td> <a href="${urlDelete}/${ca.id}">Delete</a></td>
        </tr>
      </c:forEach>
    </c:if>
  </table>
</body>
</html>