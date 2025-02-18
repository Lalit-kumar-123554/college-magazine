<%@include file="dbcon.jsp"%>
<%
Statement st = con.createStatement();
int x;
ResultSet rs;

String role = request.getParameter("role");
String name = request.getParameter("name");
String password = request.getParameter("password");

if(role.equals("admin")){
	if(name.equals("admin") && password.equals("admin")){
		response.sendRedirect("adminhome.jsp?Login_Success");
	}else{
		response.sendRedirect("index.jsp?Login_Failed");
	}
}else if(role.equals("faculty")){
	rs = st.executeQuery(" select * from faculty where rollno='"+name+"' and password='"+password+"' ");
	if(rs.next()){
		session.setAttribute("fsid",name);
		session.setAttribute("hrole","Faculty");
		response.sendRedirect("facstuhome.jsp?Login_Success");
	}else{
		response.sendRedirect("index.jsp?Login_Failed");
	}
}else if(role.equals("student")){
	rs = st.executeQuery(" select * from student where rollno='"+name+"' and password='"+password+"' ");
	if(rs.next()){
		session.setAttribute("fsid",name);
		session.setAttribute("hrole","Student");
		response.sendRedirect("facstuhome.jsp?Login_Success");
	}else{
		response.sendRedirect("index.jsp?Login_Failed");
	}
}else if(role.equals("editorial")){
	rs = st.executeQuery(" select * from editorial where rollno='"+name+"' and password='"+password+"' ");
	if(rs.next()){
		session.setAttribute("eid",name);
		response.sendRedirect("editorialhome.jsp?Login_Success");
	}else{
		response.sendRedirect("index.jsp?Login_Failed");
	}
}
%>