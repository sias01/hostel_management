<?php

$conn = mysqli_connect('127.0.0.1', 'root','', 'hostel_management_system','3307');

if (!$conn) {
    echo "Connection Failed";
}