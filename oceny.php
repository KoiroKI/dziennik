<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Oceny</title>
    <link rel="stylesheet" href="styles.css"> <!-- Załóżmy, że używamy pliku CSS o nazwie "styles.css" -->
</head>
<body>
    <div class="container">
        <h1>Oceny</h1>
        <table>
            <thead>
                <tr>
                    <th>Uczeń</th>
                    <th>Przedmiot</th>
                    <th>Ocena</th>
                    <th>Data</th>
                </tr>
            </thead>
            <tbody>
                <?php include 'get_oceny.php'; ?> <!-- Pobranie i wyświetlenie danych ocen -->
            </tbody>
        </table>
        <a href="index.html" class="btn">Powrót</a> <!-- Przycisk powrotu -->
    </div>
</body>
</html>
