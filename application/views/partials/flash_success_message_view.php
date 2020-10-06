<?php if($this->session->flashdata('success')){ ?>
    <div class="alert alert-success">
        <p><?php echo $this->session->flashdata('success'); ?></p>
    </div>
<?php } ?>