<?php
$errorsHtml = '';

if($this->session->flashdata('error')){
    $errorsHtml .= '<li>'. $this->session->flashdata('error') .'</li>';
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