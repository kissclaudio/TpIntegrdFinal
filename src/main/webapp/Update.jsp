<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	
String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String mail = request.getParameter("mail");
	String cantidad = request.getParameter("cantidad");
	String categoria = request.getParameter("categoria");

	Class.forName("com.mysql.cj.jdbc.Driver");
    try{
		 Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Compraticket", "root", "");
		 Statement stm = cn.createStatement();
		 
		 stm.executeUpdate("UPDATE ticket set nombre='"+ nombre +"' ,apellido='"+ apellido +"' ,mail='"+ mail +"' ,cantidad='"+ cantidad +" ,categoria='"+ categoria +"'"); 
    }catch(Exception e){
    	out.print("error la Modificar los datos");
    }
%>

<jsp:include page ="ticket.jsp"></jsp:include>


</body>
</html>