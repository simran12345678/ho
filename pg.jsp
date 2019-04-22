<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="<c:url value="/jsp/css/pg_details.css" />">
 <script src="<c:url value="/jsp/js/pg_details.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url var="action" value="add"></c:url>
<form:form action="${action}" commandName="user" method="POST">
<div class="main">        <!-- for css main -->

  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Account Setup</li>
    <li>Facilities</li>
    <li>Image Upload</li>
  </ul>
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Register Your PG</h2>
    <form:input class="un " align="center" placeholder="pg_name" path="pg_name"></form:input>
      <br>
      <form:errors path="pg_name" cssClass="error"></form:errors>
      
       <form:input class="un " align="center" placeholder="Address Line1" path="addressline1"></form:input>
       <br>
      <form:errors path="pg_name" cssClass="error"></form:errors>
      
       <form:input class="un " align="center" placeholder="Address Line2" path="addresslin1"></form:input>
       <br>
      	<form:errors path="pg_name" cssClass="error"></form:errors>
       
                           
          <form:input class="un " type="text" align="center" placeholder="Zip_code " path="zip_code"></form:input>
          <form:errors path="zip_code" cssClass="error"></form:errors>
          
          <form:input class="un " type="text" align="center" placeholder="E-mail" path="email"></form:input>
          <br>
          <form:errors path="email" cssClass="error"></form:errors>
          
          <form:input class="un " type="text" align="center" placeholder="Contact No. " path="contact_number"></form:input>
          <br>
          <form:errors path="contact_number" cssClass="error"></form:errors>
          
           <form:input class="un " type="text" align="center" placeholder="Alt_Contact No. " path="alt_contact_number"></form:input>
           <br>
          <form:errors path="alt_contact_number" cssClass="error"></form:errors>
    
  </fieldset>
  </div>
  </form:form>
  <fieldset>
    <h2 class="fs-title">Facilities</h2>
   
  </fieldset>
  <fieldset>
    <h2 class="fs-title">Images</h2>
     Select a file to upload: <br />
      <form:form input action = "UploadServlet" method = "post"
         enctype = "multipart/form-data">
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Upload File" />
      </form:form>
  </fieldset>

</body>
</html>