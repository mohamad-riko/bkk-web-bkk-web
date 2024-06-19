<?php
include 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = password_hash($_POST["password"], PASSWORD_DEFAULT); // Enkripsi kata sandi
    $role = $_POST["role"];

    $query = "INSERT INTO users (username, password, role) VALUES ('$username', '$password', '$role')";

    if (mysqli_query($koneksi, $query)) {
        // Redirect ke halaman login jika pendaftaran berhasil
        header("Location: login.php");
        exit();
    } else {
        echo "Error: " . $query . "<br>" . mysqli_error($koneksi);
    }
}
?>
