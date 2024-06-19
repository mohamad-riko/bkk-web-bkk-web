<?php
session_start();
include 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Prepared statement untuk mencegah SQL injection
    $query = "SELECT * FROM users WHERE username=?";
    $stmt = mysqli_prepare($koneksi, $query);

    if ($stmt) {
        mysqli_stmt_bind_param($stmt, "s", $username);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        if ($result && $row = mysqli_fetch_assoc($result)) {
            if (password_verify($password, $row["password"])) {
                // Login berhasil
                $_SESSION["username"] = $username;
                $_SESSION["role"] = $row["role"];
                
                if ($_SESSION["role"] == "admin") {
                    $_SESSION["login_success"] = "Selamat datang, $username! Anda berhasil login sebagai admin.";
                    header("Location: admin/dashboard-index.php");
                } else {
                    $_SESSION["login_success"] = "Selamat datang, $username! Anda berhasil login sebagai user.";
                    header("Location: user/dashboard-index-user.php");
                }
                exit();
            } else {
                $_SESSION["login_error"] = "Password salah";
            }
        } else {
            $_SESSION["login_error"] = "Username tidak ditemukan";

        }

        mysqli_stmt_close($stmt);
    } else {
        $_SESSION["login_error"] = "Terjadi kesalahan pada server";
    }

    // Kembali ke halaman login jika login gagal
    header("Location: login.php");
    exit();
}
?>
