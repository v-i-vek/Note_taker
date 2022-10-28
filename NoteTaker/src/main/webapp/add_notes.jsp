<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <%@include file = "all_js.jsp" %>
<title>Add Notes</title>
</head>
<body>
<div class = "container">
<%@include file = "NavBar.jsp" %><br>
 <h1>please fill your note detail here</h1><br><br>
 
 <!-- this is the form to save the notes -->
 
 <form action="SaveNoteServlet" method ="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input name="title" type="text" class="form-control" required="required"  id="title" aria-describedby="emailHelp" placeholder="Enter here">
  </div>
  
  
  <div class="form-group">
    <label for="content">Content</label>
    <textarea id ="content" 
    name="content"
    placeholder="Enter your content here"
    required="required"
     class = "form-control" 
     style="height: 300px;"></textarea>
  </div>
  

<div class ="container text-center">
  <button type="submit" class="btn btn-primary " >Add</button>


</div>  
  
</form>
</div>
 
</body>
</html>