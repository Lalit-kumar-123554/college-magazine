<%@include file="dbcon.jsp"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>

<%
String fsid = (String)session.getAttribute("fsid");
String hrole=(String)session.getAttribute("hrole");
MultipartRequest m=new MultipartRequest(request,"D:\CollegeMagazine\src\main\webapp\Magazine\firstmag.txt");
String name=m.getParameter("name");
String description=m.getParameter("description");
String mfile=m.getFilesystemName("mfile");
Statement st = con.createStatement();
int x = st.executeUpdate(" insert into magazine (name,description,mfile,fsid) values ('"+name+"','"+description+"','"+mfile+"','"+fsid+"') ");
if(x!=0){
	response.sendRedirect("facstuhome.jsp?Magazine_Upload_Success");
}else{
	response.sendRedirect("fsupload.jsp?Magazine_Upload_Failed");
}
%>


