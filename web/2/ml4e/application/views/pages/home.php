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
<?php echo validation_errors(); ?>
<?php echo form_open('users/register'); ?>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<h1 class="text-center">Welcome</h1>
			<div class="form-group">
				<label>Username</label>
				<input type="text" class="form-control" name="username" placeholder="UserName">
			</div>
            <div class="form-group">
				<label>Roll No.</label>
				<input type="text" class="form-control" name="roll" placeholder="Roll No.">
			</div>
			
			<button type="submit" class="btn btn-default btn-block">Submit</button>
		</div>
	</div>
<?php echo form_close(); ?>  
</body>
</html>
