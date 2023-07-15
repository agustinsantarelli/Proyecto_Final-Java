<%@page import="clases.SociosDAO"%>
<%@page import="clases.Socios"%>
<%@page import="java.util.List"%>  


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar Socio</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
#body{
    background-color: rgb(139, 145, 145);
}
#título2{
    color: black;
    font-size: 50px;
    margin-bottom: 30px;
    text-align: center;
    margin-top: 50px;
    font-family: Georgia, 'Times New Roman', Times, serif;
}
#button2{

    background-color: rgb(255, 221, 0);
    border: 2px solid rgb(0, 0, 0);
    color: black ;
    width: 400px;
    margin-left: 450px;
    margin-top: 80px;
}

#button2:hover{
    background:rgb(198, 169, 5);
    border-color:rgb(0, 0, 0);

}

</style>
</head>
<body id="body">
	<div class="container">
		<h1 class="text-center" id="título2">Modificar Socio</h1>

		<div class="row" >
		<% 
		String id=request.getParameter("id");
		int mid;
		mid=Integer.parseInt(id);
		Socios resultado=null;
		SociosDAO socio=new SociosDAO();
		resultado=socio.mostrarSocio(mid);
		%>
			
		 <form class="p-5" action="SociosController?accion=actualizar" method="post">
			
			<div class="mb-3">				
				<input type="hidden"  class="form-control" id="id" name="id"  value=<%=resultado.getId_socio()%> >
			</div>
			
			
			<div class="mb-3">
				<label for="nombre" class="form-label" > <b>Nombre:</b></label>
				<input type="text" class="form-control" id="nombre" name="nombre"  value=<%=resultado.getNombre()%> >
			</div>
			
			<div class="mb-3">
				<label for="apellido" class="form-label" > <b>Apellido:</b></label>
				<input type="text" class="form-control" id="apellido" name="apellido" value=<%=resultado.getApellido()%> >
			</div>
			
			<div class="mb-3">
				<label for="apellido" class="form-label" ><b>DNI:</b></label>
				<input type="number" class="form-control" id="dni" name="dni" value=<%=resultado.getDni()%> >
			</div>
			
			<div class="mb-3">
				<label for="apellido" class="form-label" ><b>Mail:</b></label>
				<input type="text" class="form-control" id="mail" name="mail" value=<%=resultado.getMail()%> >
			</div>
			
			<button type="submit" class="btn btn-primary" id="button2"><b>MODIFICAR</b></button>
			
			
			
		 </form>
		
		</div>	
		
	</div>

</body>
</html>