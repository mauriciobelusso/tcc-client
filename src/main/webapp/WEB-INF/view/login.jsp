<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>TCC - FAQ com Técnicas de RBC - Login</title>

  <!-- Custom fonts for this template-->
  <link href="<c:url value="/static/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<c:url value="/static/css/sb-admin-2.min.css"/>" rel="stylesheet">

</head>
<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Bem vindo de volta!</h1>
                  </div>
                  
                  <form id="frm" class="user" action="/auth/" method="post">
                    <div class="form-group">
                      <input type="email" class="form-control form-control-user" id="username" name="username" aria-describedby="emailHelp" placeholder="Informe seu endereço de e-mail...">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Senha">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Lembrar-me</label>
                      </div>
                    </div>
                    <button class="btn btn-primary btn-user btn-block" type="submit">
                      Login
                    </button>
                  </form>
                  
                  <hr>
                  <div class="text-center">
                    <a class="small" href="/login/forgot-password">Esqueceu a senha?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="/usuario/register">Criar uma conta!</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="<c:url value="/static/vendor/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/static/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>

  <!-- Core plugin JavaScript-->
  <script src="<c:url value="/static/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

  <!-- Custom scripts for all pages-->
  <script src="<c:url value="/static/js/sb-admin-2.min.js"/>"></script>
  
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
  <script src="<c:url value="/static/js/view/usuario/login.js"/>" type="text/javascript" ></script>

</body>
</html>