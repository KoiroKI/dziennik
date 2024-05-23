<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Plan Lekcji</title>
    <link rel="stylesheet" href="styles.css"> 
</head>
<body>
    <div class="container">
        <h1>Plan Lekcji</h1>
        <table>
            <thead>
                <tr>
                    <th>Dzień</th>
                    <th>Godzina</th>
                    <th>Przedmiot</th>
                    <th>Nauczyciel</th>
                </tr>
            </thead>
            <tbody>
                <?php include 'get_plan.php'; ?> <!-- Pobranie i wyświetlenie danych planu lekcji -->
            </tbody>
        </table>
        <a href="index.html" class="btn">Powrót</a> <!-- Przycisk powrotu -->
    </div>
</body>
</html>
