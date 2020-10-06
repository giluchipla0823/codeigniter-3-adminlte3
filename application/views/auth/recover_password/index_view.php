<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Recover Password</title>
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

    <link rel="stylesheet" href="<?php echo PATH_CSS ?>validators.css" />
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        Cambiar contraseña
    </div>
    <!-- /.login-logo -->
    <div class="card">
        <div class="card-body login-card-body">
            <p class="login-box-msg">Estás a sólo un paso de tu nueva contraseña, recupera tu contraseña ahora.</p>

            <?php $this->load->view('partials/flash_error_message_view'); ?>

            <?php $this->load->view('partials/flash_success_message_view'); ?>

            <form id="recover-password-form" action="" method="post" novalidate data-parsley-validate>
                <div class="input-group mb-3">
                    <input
                        type="password"
                        id="password"
                        class="form-control"
                        name="password"
                        placeholder="Contraseña"
                        data-parsley-minlength="6"
                        data-parsley-maxlength="50"
                        required />
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input
                        type="password"
                        name="confirm_password"
                        class="form-control"
                        placeholder="Confirmar contraseña"
                        data-parsley-equalto="#password"
                        data-parsley-equalto-message="Las contraseñas no coinciden."
                        required />
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary btn-block">Enviar</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>

            <p class="mt-3 mb-1">
                <a href="login.html">Iniciar sesión</a>
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

<script src="<?php echo PATH_JS; ?>/parsley-validator/parsley.min.js"></script>
<script src="<?php echo PATH_JS; ?>/parsley-validator/i18n/es.js"></script>
<script src="<?php echo PATH_JS; ?>/custom.js"></script>

<script type="text/javascript">
    $(function () {
        instanceParsleyValidator('#recover-password-form');
    });
</script>

</body>
</html>
