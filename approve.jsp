<%@include file="dbcon.jsp"%>
<%
System.out.println("approve.jsp");
String mname;
SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
Date dt = new Date();
String eid = (String) session.getAttribute("eid");
String id = request.getParameter("id");
int mrank1 = Integer.parseInt(request.getParameter("mrank"));
String review = request.getParameter("review");
System.out.println("id:"+id);
Statement st = con.createStatement();
Statement st1 = con.createStatement();
Statement st2 = con.createStatement();
Statement st3 = con.createStatement();

int x = st.executeUpdate(" update magazine set cnt=cnt+1,mrank=mrank+'"+mrank1+"' where id = '"+id+"' ");
if(x != 0){
	ResultSet rs = st1.executeQuery(" select * from magazine where id='"+id+"' ");
	if(rs.next()){
		int cnt = rs.getInt(7);
		mname = rs.getString(2);
		if(cnt >= 3){
			int x1 = st2.executeUpdate(" update magazine set status='yes' where id = '"+id+"' ");
			if(x1 != 0){
				st3.executeUpdate(" insert into appmag (name,eid,adate,mid,mrank,review) values ('"+mname+"','"+eid+"','"+sdf.format(dt)+"','"+id+"','"+mrank1+"','"+review+"') ");
				response.sendRedirect("editorialhome.jsp?Approval_Success");
			}else{
				response.sendRedirect("editorialhome.jsp?Approval_Failed");
			}
		}else{
			st3.executeUpdate(" insert into appmag (name,eid,adate,mid,mrank,review) values ('"+mname+"','"+eid+"','"+sdf.format(dt)+"','"+id+"','"+mrank1+"','"+review+"') ");
			response.sendRedirect("editorialhome.jsp?Approval_Success");
		}
	}else{
		response.sendRedirect("editorialhome.jsp?Approval_Failed");
	}
}else{
	response.sendRedirect("editorialhome.jsp?Approval_Failed");
}
%>