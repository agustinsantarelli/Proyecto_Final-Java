<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuevo Socio</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<style>
#body{
    background-color: rgb(139, 145, 145);
}
#título3{
    color: black;
    font-size: 50px;
    margin-bottom: 30px;
    text-align: center;
    margin-top: 50px;
    font-family: Georgia, 'Times New Roman', Times, serif;
}

#button3{
    background-color: rgb(255, 221, 0);
    border: 2px solid rgb(0, 0, 0);
    color: black ;
    width: 400px;
    margin-left: 450px;
    margin-top: 80px;
}

#button3:hover{
    background:rgb(198, 169, 5);
    border-color:rgb(0, 0, 0);

}

</style>
</head>

<body id="body">

	<div class="container">
		<h1 class="text-center" id="título3" >Añadir Socio</h1>

		<div class="row" >
			<form class="p-5" action="SociosController?accion=insert" method="post">
			
			<div class="mb-3">
				<label for="nombre" class="form-label" ><b>Nombre:</b></label>
				<input type="text" class="form-control" id="nombre" name="nombre" >
			</div>
			
			<div class="mb-3">
				<label for="apellido" class="form-label" > <b>Apellido:</b></label>
				<input type="text" class="form-control" id="apellido" name="apellido" >
			</div>
			
			<div class="mb-3">
				<label for="dni" class="form-label" ><b>DNI:</b></label>
				<input type="text" class="form-control" id="dni" name="dni" >
			</div>
			
			<div class="mb-3">
				<label for="mail" class="form-label" ><b>Mail:</b></label>
				<input type="text" class="form-control" id="mail" name="mail" >
			</div>			
			
			
			<button type="submit" class="btn btn-primary" id="button3"><b>INSERTAR</b></button>
			
			
			
			</form>
		</div>	
	
	
	</div>

</body>
</html>