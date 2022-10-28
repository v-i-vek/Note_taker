<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "com.entities.*" %>
<!DOCTYPE html>
<%@ page import= "com.helper.*" %>
<%@ page import= "org.hibernate.*" %>
<%@ page import= "org.hibernate.Query" %>
<%@ page import= "java.util.*" %>
<html>
<head>
 <%@include file = "all_js.jsp" %>
<meta charset="UTF-8">
<title>saved notes : Note Taker</title>
</head>
<body>
<div class = "container">
      <%@include file = "NavBar.jsp" %>
      
      <div class = "row">
      <div class = "col-12">
       <%
   Session s = FactoryProvider.getFactory().openSession();
   Query q = s.createQuery("from Note");
   
   List<Note> list = q.list();
   
   for(Note note : list){
	  
	   
	   %>
	   <div class="card container mt-3 mx-auto" >
  <img class="card-img-top container" style = "max-width:100px" src="img/notes.png" alt="Card image cap">
  <div class="card-body container">
    <h5 class="card-title"><%= note.getTitles() %></h5>
    <p class="card-text"><%= note.getContents()%></p>
    <p><b>updated on <%=note.getAddedDate()%>p>
   <div class ="text-center">
   
   <a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">update</a>
   </div>
  </div>
</div>
	  
	   <% 
	   
	     
   }
   
   s.close();
   
   
   %>
      
      
      </div>
      
      
      </div>
      
      
   
  
   
   </div>

</body>
</html>