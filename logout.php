<?php
session_start();

// Set pesan logout
$_SESSION['logout_message'] = "Anda telah berhasil keluar.";

// Tampilkan pop-up logout berhasil
echo '<script>alert("' . $_SESSION['logout_message'] . '")</script>';
unset($_SESSION['logout_message']);

// Hapus semua data sesi
session_unset();

// Hancurkan sesi
session_destroy();

// Redirect ke halaman login setelah logout
header("Location: login.php");
exit();
?>
