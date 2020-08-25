<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ML4E</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
    />
</head>
<body>
<div class="row">
		<div class="col-md-5 col-md-offset-3">
			<h1 class="text-center">Welcome <?php echo $this->session->userdata('username'); ?></h1>

<h4 class="text-center"> Your Roll No. is<?php echo $this->session->userdata('roll'); ?></h4>
</div>
</div>
<div class="col-md-4 col-md-offset-5">
<a class="btn btn-default " href="<?php echo base_url(); ?>users/logout">Logout</a>   
</div>
</body>
</html>
