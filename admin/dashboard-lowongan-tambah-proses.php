<?php
include '../koneksi.php'; // Sertakan file koneksi.php untuk membuat koneksi dengan database

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $judul = $_POST["judul"];
    $perusahaan = $_POST["perusahaan"];
    $posisi = $_POST["posisi"];
    $persyaratan = $_POST["persyaratan"];
    $batas_waktu = $_POST["batas_waktu"];

    // File upload
    $upload_directory = "img/loker/";
    $gambar_name = $_FILES["gambar"]["name"];
    $gambar_temp = $_FILES["gambar"]["tmp_name"];
    $gambar_path = $upload_directory . $gambar_name;

    move_uploaded_file($gambar_temp, $gambar_path);

    // Query untuk menyimpan data ke database
    $query = "INSERT INTO lowongan (judul, perusahaan, posisi, persyaratan, gambar, batas_waktu) 
              VALUES ('$judul', '$perusahaan', '$posisi', '$persyaratan', '$gambar_name', '$batas_waktu')";

    if (mysqli_query($koneksi, $query)) {
        // Jika data berhasil disimpan, arahkan kembali ke halaman dashboard-lowongan.php
        header("Location: dashboard-lowongan.php");
        exit();
    } else {
        // Jika terjadi kesalahan dalam query
        echo "Error: " . $query . "<br>" . mysqli_error($koneksi);
    }
} else {
    // Jika formulir tidak disubmit melalui metode POST
    header("Location: dashboard-lowongan-tambah.php");
    exit();
}
?>
