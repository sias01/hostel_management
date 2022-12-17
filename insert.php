<?php


        if(isset($_POST['abc']))
         {
             $dbhost = 'localhost';
             $dbuser = 'root';
             $dbpass = 'Oggagaga1';
             $conn = mysql_connect($dbhost, $dbuser, $dbpass);

             mysql_select_db('Hostel_Management_System');

             if(! $conn )
             {
             die('Could not connect: ' . mysql_error());
             }

             $student_id= $_REQUEST['`student_id`'];
             $fname= $_REQUEST['`fname`'];
             $lname= $_REQUEST['`lname`'];
             $phno= $_REQUEST['`phno`'];
             $department= $_REQUEST['`department`'];
             $year_of_study= $_REQUEST['`year_of_study`'];
             $hostel_no= $_REQUEST['`hostel_no`'];
             $room_no= $_REQUEST['`room_no`'];

             //if(!empty($_POST['fname'])) {
               //     $status = 'IN PROCESS';
                //}      
                //else $status = 'null'; 
             //put it here
             $sql = "INSERT INTO `student`(`student_id`,`fname`,`lname`,`phno`,`department`,`year_of_study`,`hostel_no`,`room_no`)
             VALUES('$student_id','$fname','$lname','$phno','$department','$year_of_study','$hostel_no','$room_no');";

             $retval = mysql_query( $sql, $conn );

             if(! $retval )
             {
             die('Could not enter data: ' . mysql_error());
             }

             else
             {
                 ?>
                 <div class="alert alert-success">
                   <strong>Success!</strong> .
                 </div>
                 <?php
             }


             mysql_close($conn);
          }
     ?>
<!DOCTYPE html>

<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <title>HOSTEL_DETAILS</title>
	<style>
body {
 background-image: url("3.png")
 ;
}
</style>

	<!-- CSS FOR STYLING THE PAGE -->
	<style>
		table {
			margin-left: 0.3%;
			font-size: large;
			border: 5px solid black;
		}

		h1 {
			text-align: center;
			color: purple;
			font-size: xx-large;
			font-family: 'Gill Sans', 'Gill Sans MT',
			' Calibri', 'Trebuchet MS', 'sans-serif';
		}

		td {
			background-color: #c2affc;
			border: 1px solid black;
		}

		th{
			font-weight: bold;
			color: indigo;
			padding: 10px;
			text-align: center
		}
		td {
			font-weight: bold;
			border: 1px solid black;
			padding: 10px;
			text-align: center;
		}

		td {
			font-weight: lighter;
		}
	</style>

<form action="insert.php" method="post">
    <input type="text" name="student_id" class="form-control" placeholder="Student id">
	<br/>

    <input type="text" name="fname" class="form-control" placeholder="First Name">
	<br/>
	
    <input type="text" name="lname" class="form-control" placeholder="Last Name">
	<br/>
	
    <input type="text" name="phno" class="form-control" placeholder="Phone Number">
	<br/>
	
    <input type="text" name="department" class="form-control" placeholder="Department">
	<br/>
	
    <input type="text" name="year_of_study" class="form-control" placeholder="Year of Study">
	<br/>
	
    <input type="text" name="hostel_no" class="form-control" placeholder="Hostel Number">
	<br/>
	
    <input type="text" name="room_no" class="form-control" placeholder="Room Number">
	<br/>
	&nbsp;&nbsp;<button type="abc" name="insert" class="btn btn-primary">Insert new student</button>

  </form>