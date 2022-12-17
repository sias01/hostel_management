<?php
include 'mysql_connect.php';
if(isset($_POST['save']))
{
    $valueToSearch = $_POST['valueToSearch'];
    // search in all table columns?>
    <font size="7" 
          color="purple" >
    <b>STUDENT DETAILS</b></font><br><br><br><br><br>
    
       <table class="styled-table">
    <thead>
        <tr>
            <th>STUDENT ID</th>
            <th>FIRST NAME</th>
            <th>LAST NAME</th>
            <th>MOBILE NO</th>
            <th>ROOM NUMBER</th>
            <th>DEPARTMENT</th>    
        </tr>
    </thead><?php
    $query ="SELECT student.student_id,student.fname,student.lname,student.phno,student.room_no,student.department FROM student JOIN hostel ON hostel.hostel_id=student.hostel_no WHERE hostel.hostel_name='$valueToSearch';";
    $result = $conn->query($query);
    if ($result->num_rows > 0) 
    {
        // OUTPUT DATA OF EACH ROW
        while($row = $result->fetch_assoc())
        {
         ?>
            <tbody>
            <style>
                body {
 background-image: url("4.png");
}
		table {
			margin: 0 auto;
			font-size: large;
			border: 1px solid black;
		}


		td {
			background-color:#c2affc;
			border: 1px solid black;
		}

		th{
            font-weight: bold;
            background-color:blueviolet;
			border: 4px solid black;
			padding: 10px;
            font-display: 'white';
			text-align: center;

        }
		td {
			font-weight: bold;
			border: 2px solid black;
			padding: 10px;
			text-align: center;
		}

		td {
			font-weight: lighter;
		}
	</style>
            <tr>
                <td> <?php echo $row["student_id"] ?> </td>
                <td><?php echo $row ["fname"] ?></td>
                <td><?php echo $row ["lname"] ?></td>
                <td><?php echo $row["phno"]?></td>      
                <td><?php echo $row["room_no"]?></td>
                <td><?php echo $row["department"]?></td>
            </tr>
            <?php
 }}}?>
 

</tbody>
</table>


