<html lang="es"><head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conf Bs As</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
    <link rel="stylesheet" href="./stiles.css">
  </head>
  <body>
    <header>
      <nav class="navbar fixed-top navbar-expand-lg navbar-dark" style="background-color: #454647">
        <div class="container">
          <a class="navbar-brand" href="index.html">
            <img src="./Img/codo.png" alt="" width="100" height="" style="vertical-align: middle">
            Conf Bs As
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse flex-row-reverse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="#">La Conferencia</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Los Oradores</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">El Lugar y La Fecha</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Convi�rtete en Orador</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="#">Comprar Tickets</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    <main>
      <div class="container" style="margin-top: 100px; margin-bottom: 10px">
        <div class="row mb-3" style="display: flex; justify-content: space-evenly">
          <div class="card text-center border-primary" style="width: 18rem">
            <div class="card-body">
              <h5 class="card-title">Estudiante</h5>
              <p class="card-text">Tiene un descuento</p>
              <p>
                <strong>80%</strong>
              </p>
              <h6 class="card-subtitle mb-2 text-muted">
                * presentar documentaci�n
              </h6>
            </div>
          </div>
          <div class="card text-center border-success" style="width: 18rem">
            <div class="card-body">
              <h5 class="card-title">Trainee</h5>
              <p class="card-text">Tiene un descuento</p>
              <p>
                <strong>50%</strong>
              </p>
              <h6 class="card-subtitle mb-2 text-muted">
                * presentar documentaci�n
              </h6>
            </div>
          </div>
          <div class="card text-center border-warning" style="width: 18rem">
            <div class="card-body">
              <h5 class="card-title">Junior</h5>
              <p class="card-text">Tiene un descuento</p>
              <p>
                <strong>15%</strong>
              </p>
              <h6 class="card-subtitle mb-2 text-muted">
                * presentar documentaci�n
              </h6>
            </div>
          </div>
        </div>
        <div style="text-align: center">
          <span>VENTA</span>
          <h1>VALOR DE TICKET $<span id="precio">200</span></h1>
        </div>
         <!-- inicio de formulario -->
	    <section>
	     	<form class="contain-fluid" style="width: 63%; text-aling: center" action="cargaForm.jsp">
	    		<div class="row">
	    		<div class="col">
	    			<input type="text" name="nombre" value="<%= request.getParameter("nombre") %>" class="form-control" placeholder="First name" arial-label="First name" id="nombre">
	     		</div>
	     		<div class="col">
	     			<input type="text" name="apellido" value="<%= request.getParameter("apellido") %>" class="form-control" placeholder="Last name" arial-label="Last name" id="apellido">
	     		</div>
	    		</div>
	    		<br>
	    		<div class="mb-3">
	    			<input type="email" name="mail" value="<%= request.getParameter("mail") %>" class="form-control" placeholder="name@example.com" id="mail">
	    		</div>
	    		<br>
	    		<div class="row">
	    			<div class="col">
	    				<label for="cantidad">Cantidad de entradas</label>
	    				<input id="cantidad" name="cantidad" value="<%= request.getParameter("cantidad") %>" type="number" min="1" max="10" class="form-control" placeholder="cantidad">
	    			</div>
	    			<div class="col">
	    			<label for="categoria">categoria</label>
	    			<input class="form-select" name="categoria" value="<%= request.getParameter("categoria") %>" arial-label="default select example" id="categoria">
	    			</div>
	    		</div>
	    		<br>
	    		<span id="error" style="color:red"></span>
	    		<div class="alert alert-primary" role="alert">
	    			Total a pagar: <span id="Total_a_pagar"></span>
	    		</div>
	    		<br>
	    		<div class="row">
	    			<div class="d-grid col-4 mx-auto;">
	    				<button class="btn btn-success" type="button" id="btnDelete" onclick="location.href='Delete.jsp">Borrar</button>
	    			</div>
	    			<div class="d-grid col-4 mx-auto;">
	    				<button class="btn btn-success" type="button" id="btnUpdate" onclick="location.href='Update.jsp">Modificar</button>
	    			</div>
					<div class="d-grid col-4 mx-auto;">
	    				<button class="btn btn-success" type="button" id="btnConfirmar" onclick="location.href='ComprarTicket.html">Confirmar</button>
	    			</div>
	    		</div>
	    		<br>
	    		<br>
	    	</form>   
	    </section>
        
      </div>
    </main>
    <footer>
      <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #454647">
        <div class="container">
          <ul class="navbar-nav" style="justify-content: space-between; width: 100%">
            <li class="nav-item">
              <a class="nav-link" href="#">Preguntas Frecuentes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Cont�ctanos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Prensa</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Conferencias</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">T�rminos y Condiciones</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Privacidad</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Estudiantes</a>
            </li>
          </ul>
        </div>
      </nav>
    </footer>
    <script src="./JS/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js" integrity="sha384-PsUw7Xwds7x08Ew3exXhqzbhuEYmA2xnwc8BuD6SEr+UmEHlX8/MCltYEodzWA4u" crossorigin="anonymous"></script>
  

</body></html>