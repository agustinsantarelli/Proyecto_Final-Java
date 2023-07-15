<%@page import="clases.SociosDAO"%>
<%@page import="clases.Socios"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado de Alumnos</title>
<link href="css/style1.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
#body{
    background-color: rgb(139, 145, 145);
}
#título{
    color: black;
    font-size: 50px;
    margin-bottom: 30px;
    text-align: center;
    margin-top: 50px;
    font-family: Georgia, 'Times New Roman', Times, serif;
}
#imagen1{
    height: 100px;
    width: 120px;
    margin-left: 590px;
    margin-bottom: 15px;
}
#imagen2{
    height: 80px;
    width: 120px;
    border-radius: 15%;
    margin-left: 85px;
    margin-bottom: 15px;
}
#button1{
    background-color: rgb(255, 221, 0);
    border: 2px solid rgb(0, 0, 0);
    color: black ;
    width: 400px;
    margin-left: 450px;
    margin-top: 80px;
}
#button1:hover{
    background:rgb(198, 169, 5);
    border-color:rgb(0, 0, 0);

}

table{
    background-color: rgb(255, 255, 255);
    text-align: left;
    width: 100%;
}
thead{
    background-color: #246355;
    border-bottom: solid5px;
    color: white;
}
tr:nth-child(even){
    background-color: #ddd;
}

</style>

</head>
<body id="body">
     <h1 id="título">Listado de Alumnos</h1>
     <img src="./vistas/css/imagenes/codoacodo.png" id="imagen1">
     <img src="./vistas/css/imagenes/1.jpg" id="imagen2">

<div  class="container" >
		<div class="row" >
				
				<table id="tabla" >
				<thead>
					<th>Id</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>DNI</th>				
					<th>Mail</th>					
					<th class="text-center">Modificar</th>
					<th class="text-center">Eliminar</th>				
				</thead>
				<% 
				List<Socios> resultado=null;
				SociosDAO socio=new SociosDAO();
				resultado=socio.listarSocios();
				
				for(int i=0;i<resultado.size();i++)
				{
					String ruta="SociosController?accion=modificar&id="+resultado.get(i).getId_socio();
					String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getId_socio();
				
				%>
				<tr>
				<td><%=resultado.get(i).getId_socio()%></td>
				<td><%=resultado.get(i).getNombre()%></td>
				<td><%=resultado.get(i).getApellido()%></td>
				<td><%=resultado.get(i).getDni()%></td>
				<td><%=resultado.get(i).getMail()%></td>
				<td class="text-center"><a href=<%=ruta%>> <i class="fa-solid fa-arrow-right-arrow-left"></i></a></td>
				<td class="text-center"><a href=<%=rutaE%>><i class="fa-solid fa-arrow-down"></i></a></td>
				</tr>
				<%
				}
				%>					
				
				
				</table>
		
		        <a class="btn btn-primary" href="SociosController?accion=nuevo" id="button1"><b>AGREGAR SOCIO</b></a>
		</div>
</div>


</body>
</html>