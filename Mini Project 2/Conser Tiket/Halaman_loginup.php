<?php
// Koneksi ke database
$servername = "127.0.0.1";
$username = "root"; // Ganti dengan username database Anda
$password = ""; // Ganti dengan password database Anda
$dbname = "musico_website"; // Ganti dengan nama database Anda

// Membuat koneksi
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Memeriksa koneksi
if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}

// Proses login
if(isset($_POST['Submit'])) {
    $username = $_POST['Username'];
    $password = $_POST['Password'];

    // Melakukan query untuk memeriksa apakah username dan password cocok
    $sql = "SELECT * FROM data_login WHERE username='$username' AND password='$password'";
    $result = mysqli_query($conn, $sql);

    // Jika hasilnya satu baris, login berhasil
    if(mysqli_num_rows($result) == 1) {
        echo "Login berhasil!";
        // Lakukan redirect atau tindakan lainnya
    } else {
        echo "Login gagal. Username atau password salah.";
    }
}

// Proses sign up
if(isset($_POST['Submit']) && $_POST['Submit'] == 'Sign Up') {
    $email = $_POST['Email'];
    $username = $_POST['Username'];
    $password = $_POST['Password'];

    // Melakukan query untuk memasukkan data baru ke dalam tabel users
    $sql = "INSERT INTO data_signup (email, username, password) VALUES ('$email', '$username', '$password')";

    if(mysqli_query($conn, $sql)) {
        echo "Sign up berhasil!";
        // Lakukan redirect atau tindakan lainnya
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}

// Menutup koneksi
mysqli_close($conn);
?>
