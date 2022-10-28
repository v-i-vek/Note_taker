package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

try {
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	Note n = new Note(title,content, new Date());
	System.out.println(n.getId() + " : "+ n.getTitles());
	//hibernate code --> to save the data from the browser to the database
	Session s = FactoryProvider.getFactory().openSession();
	
	Transaction tx = s.beginTransaction();
	s.save(n);
	tx.commit();
	s.close();

	
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	out.println("<h1> the note is successfully added </h1>");
	out.println("<h1 > <a href ='all_notes.jsp'>view saved</a></h1>");

	
	
} catch (Exception e) {
	e.printStackTrace();
}
		
		
	}

}