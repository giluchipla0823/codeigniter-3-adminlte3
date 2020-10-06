<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Registration Page</title>
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
<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">
        Registro de nuevo usuario
    </div>

    <div class="card">
        <div class="card-body register-card-body">

            <?php $this->load->view('partials/flash_error_message_view'); ?>

            <?php $this->load->view('partials/flash_success_message_view'); ?>

            <form id="register-form" action="" method="post" data-parsley-validate="" novalidate>
                <div class="input-group mb-3">
                    <input
                        type="text"
                        name="first_name"
                        class="form-control"
                        value="<?php echo set_value('first_name'); ?>"
                        placeholder="Nombres"
                        data-parsley-maxlength="50"
                        required />
                    <div class="input-group-append">
                        <div class="input-group-text"></div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input
                        type="text"
                        name="last_name"
                        class="form-control"
                        placeholder="Apellidos"
                        value="<?php echo set_value('last_name'); ?>"
                        data-parsley-maxlength="50"
                        required />
                    <div class="input-group-append">
                        <div class="input-group-text"></div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input
                        type="email"
                        class="form-control"
                        name="email"
                        placeholder="Correo electrónico"
                        value="<?php echo set_value('email'); ?>"
                        data-parsley-maxlength="150"
                        required />
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input
                        type="text"
                        name="username"
                        class="form-control"
                        placeholder="Usuario"
                        value="<?php echo set_value('username'); ?>"
                        data-parsley-minlength="6"
                        data-parsley-maxlength="50"
                        required />
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input
                        type="password"
                        id="password"
                        name="password"
                        class="form-control"
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
                    <div class="col-8">
                        <a href="<?php echo base_url('login') ?>">Ya tengo una cuenta</a>
                    </div>
                    <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-block">Register</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
        </div>
        <!-- /.form-box -->
    </div><!-- /.card -->
</div>
<!-- /.register-box -->

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
        instanceParsleyValidator('#register-form');
    });
</script>
</body>
</html>
