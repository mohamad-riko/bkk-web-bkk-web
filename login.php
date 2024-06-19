<?php
session_start();

// Tampilkan pop-up login berhasil jika ada
if (isset($_SESSION['login_success'])) {
    echo '<script>alert("' . $_SESSION['login_success'] . '")</script>';
    unset($_SESSION['login_success']);
}

// Tampilkan pop-up login gagal jika ada
if (isset($_SESSION['login_error'])) {
    echo '<script>alert("' . $_SESSION['login_error'] . '")</script>';
    unset($_SESSION['login_error']);
}
?>
<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="login/https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

      <link href="admin/img/logo.png" rel="icon">
  <link href="admin/img/logo.png" rel="apple-touch-icon">

    <link rel="stylesheet" href="login/fonts/icomoon/style.css">

    <link rel="stylesheet" href="login/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="login/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="login/css/style.css">

    <title>Login</title>
</head>
<body style="background-image: ('../login/images/logo.png')">
	<br>
	<br>
	<br>
	<br>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img src="login/images/logo.png" alt="Image" class="img-fluid">
                </div>

                <div class="col-md-6 contents">
                    <div class="row justify-content-center">
                        <div class="col-md-8">
                            <div class="mb-4">
                                <center>
                                    <h3>Masuk Ke Akun Anda !</h3>
                                    <p class="mb-4">Masukan username dan password dengan benar!</p>
                                </center> 
                            </div>
                            <form method="post" action="login-proses.php">
                                <?php if (isset($pesan_keterangan)) { echo $pesan_keterangan; } ?>
                                <br>             
                                <div class="form-group first">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" id="username" name="username">
                                </div>
                                <div class="form-group last mb-4">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" id="password" name="password">
                                </div>
                                <div class="d-flex mb-5 align-items-center">
                                    <label class="control control--checkbox mb-0"><span class="caption">Remember me</span>
                                        <input type="checkbox" checked=""/>
                                        <div class="control__indicator"></div>
                                    </label>
                                    <span class="ml-auto"><a href="login.php" class="forgot-pass">Forgot Password</a></span> 
                                </div>
                                <input type="submit" value="Login" class="btn btn-block btn-primary">
                                <p>Belum Punya Akun? <a href="register.php"> Daftar Disini </a></p>
                                <p><a href="index.php">Kembali Kehalaman Utama</a></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <script src="login/js/jquery-3.3.1.min.js"></script>
    <script src="login/js/popper.min.js"></script>
    <script src="login/js/bootstrap.min.js"></script>
    <script src="login/js/main.js"></script>
</body>
</html>