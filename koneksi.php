<?php 
$koneksi = mysqli_connect("localhost", "root", "", "smknasi3_bkk");

if(mysqli_connect_errno()){
	echo "koneksi database gagal : " . mysqli_connect_errno();
}
?>