<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo PATH_PLUGINS; ?>fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="<?php echo PATH_PLUGINS; ?>icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo PATH_DIST; ?>css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

    <style type="text/css">
        ul.validation-errors{
            margin: 0;
            padding-left: 10px;
        }
    </style>
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href=""><b>Admin</b>LTE</a>
    </div>
    <!-- /.login-logo -->
    <div class="card">
        <div class="card-body login-card-body">
            <p class="login-box-msg"></p>

            <?php
            $errorsHtml = '';

            if($this->session->flashdata('error_login')){
                $errorsHtml .= '<li>'. $this->session->flashdata('error_login') .'</li>';
            }

            if(validation_errors()){
                $errorsHtml .= validation_errors("<li>", "</li>");
            }
            ?>

            <?php if($errorsHtml){ ?>
            <div class="alert alert-danger">
                <ul class="validation-errors">
                    <?php echo $errorsHtml; ?>
                </ul>
            </div>
            <?php } ?>

            <form action="<?php echo PATH_MAIN ?>login/authenticate" method="post" novalidate>
                <div class="input-group mb-3">
                    <input
                        type="email"
                        name="email"
                        value="<?php echo set_value('email'); ?>"
                        class="form-control"
                        placeholder="Correo electrónico" />
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="password" name="password" class="form-control" placeholder="Contraseña">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-8">
                        <div class="icheck-primary">
                            <input type="checkbox" id="remember">
                            <label for="remember">
                                Recordar
                            </label>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-block">Ingresar</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>

            <p class="mb-1">
                <a href="">Recuperar contraseña</a>
            </p>
            <p class="mb-0">
                <a href="" class="text-center">Crear cuenta</a>
            </p>
        </div>
        <!-- /.login-card-body -->
    </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="<?php echo PATH_PLUGINS; ?>jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?php echo PATH_PLUGINS; ?>bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo PATH_DIST; ?>js/adminlte.min.js"></script>

</body>
</html>
