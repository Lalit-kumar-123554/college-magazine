<%@include file="dbcon.jsp"%>
<%
Statement st = con.createStatement();
int x;
ResultSet rs;

String opt = request.getParameter("opt");
String name = request.getParameter("name");
String password = request.getParameter("password");
String branch = request.getParameter("branch");
String contact = request.getParameter("contact");
String section = request.getParameter("section");
String year = request.getParameter("year");
String rollno = request.getParameter("rollno");
String department = request.getParameter("department");
String email = request.getParameter("email");

if(opt.equals("1")){
	x = st.executeUpdate(" insert into student (name,branch,section,year,rollno,contact,password) values ('"+name+"','"+branch+"','"+section+"','"+year+"','"+rollno+"','"+contact+"','"+password+"') ");
	if(x!=0){
		response.sendRedirect("index.jsp?Registration_Success");
	}else{
		response.sendRedirect("studentreg.jsp?Registration_Failed");
	}
}else if(opt.equals("2")){
	x = st.executeUpdate(" insert into faculty (name,rollno,department,contact,password) values ('"+name+"','"+rollno+"','"+department+"','"+contact+"','"+password+"') ");
	if(x!=0){
		response.sendRedirect("index.jsp?Registration_Success");
	}else{
		response.sendRedirect("facultyreg.jsp?Registration_Failed");
	}
}else if(opt.equals("3")){
	x = st.executeUpdate(" insert into editorial (name,rollno,department,contact,email,password) values ('"+name+"','"+rollno+"','"+department+"','"+contact+"','"+email+"','"+password+"') ");
	if(x!=0){
		String msg = " Your are now a member of Editorials.\n User ID: "+rollno+"\n Password: "+password;
		response.sendRedirect("adminedit.jsp?Registration_Success");
	}else{
		response.sendRedirect("addeditorial.jsp?Registration_Failed");
	}
}
%>