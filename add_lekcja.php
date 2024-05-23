<?php
$conn = new mysqli('localhost', 'root', '', 'dziennik');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$dzien = $_POST['dzien'];
$godzina = $_POST['godzina'];
$przedmiot = $_POST['przedmiot'];
$nauczyciel = $_POST['nauczyciel'];

$sql = "INSERT INTO plan (dzien, godzina, przedmiot, nauczyciel) VALUES ('$dzien', '$godzina', '$przedmiot', '$nauczyciel')";
if ($conn->query($sql) === TRUE) {
    header("Location: plan.php"); // Przekierowanie do strony z planem lekcji
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
