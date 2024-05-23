<?php
$conn = new mysqli('localhost', 'root', '', 'dziennik');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$uczen = $_POST['uczen'];
$przedmiot = $_POST['przedmiot'];
$ocena = $_POST['ocena'];
$data = date("Y-m-d");

$sql = "INSERT INTO oceny (uczen, przedmiot, ocena, data) VALUES ('$uczen', '$przedmiot', '$ocena', '$data')";
if ($conn->query($sql) === TRUE) {
    header("Location: oceny.php"); // Przekierowanie do strony z ocenami
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
