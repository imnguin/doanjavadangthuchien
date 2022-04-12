<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<body>  
<h1>Employees List</h1>    
<table border="2" width="70%" cellpadding="2">    
<tr><th>img</th></th></tr>    
   <c:forEach var="comic" items="${comicchapter}">     
   <tr>    
   <td><img src="<c:url value="/web/assets/images/${comic.img}"/>" alt="list-icon"></td>
   </tr>    
   </c:forEach>    
   </table>    
</body>  
</html> 