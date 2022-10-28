<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "com.helper.*" %>
    <%@ page import= "com.entities.*" %>
    
<%@ page import= "org.hibernate.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit note : Note Taker</title>
 <%@include file = "all_js.jsp" %>

</head>
<body>
 <div class = "container">
      <%@include file = "NavBar.jsp" %><br>
      <h1>Edit your Notes here</h1>
      
      <%
      int note = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note n = (Note)s.get(Note.class , note);

      %>
      
      <form action="UpdateServlet" method ="post">
      <input value = <%= n.getId() %> name = "noteid" type = "hidden">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input name="title" value ="<%=n.getTitles()%>" type="text" class="form-control" required="required"  id="title" aria-describedby="emailHelp" placeholder="Enter here">
  </div>
  
  
  <div class="form-group">
    <label for="content">Content</label>
    <textarea id ="content" 
    name="content"
    placeholder="Enter your content here"
    required="required"
     class = "form-control" 
     style="height: 300px;"><%=n.getContents() %></textarea>
  </div>
  

<div class ="container text-center">
  <button type="submit" class="btn btn-success " >update</button>


</div>  
  
</form>
   
   </div>


</body>
</html>