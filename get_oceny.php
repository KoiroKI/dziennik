<?php
$conn = new mysqli('localhost', 'root', '', 'dziennik');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM oceny";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["uczen"]. "</td><td>" . $row["przedmiot"]. "</td><td>" . $row["ocena"] . "</td><td>" . $row["data"]. "</td></tr>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
