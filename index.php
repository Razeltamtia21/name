<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="index.php" method="post">
        <input type="text" name="name" placeholder="Your Name">
        <br><br>
        <button name="submit">Submit</button>
    </form>
</body>
</html>

<?php 

$connect = mysqli_connect("localhost", "root", "", "kelas11");

if($connect->connect_error){
    die("connection failed" . $connect->connect_error);
}

if(isset($_POST["submit"])){
    $name = $_POST["name"];

    $query = "SELECT * FROM hari5 WHERE name = ?";
    $stmt = $connect->prepare($query);
    $stmt->bind_param("s", $name);
    $stmt->execute();
    $result = $stmt->get_result();

    if($result->num_rows > 0){
        echo "Name already exits!";
    }else {
        $insertQuery = "INSERT INTO hari5 (name) VALUES (?)";
        $insertStmt = $connect->prepare($insertQuery);
        $insertStmt->bind_param("s", $name);
        $insertStmt->execute();

        echo "user successfully added";
    }
}

?>