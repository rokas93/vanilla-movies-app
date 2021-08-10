<?php

header("Content-Type: application/json; charset=UTF-8");

require_once 'config.php';

try {
    $db = new PDO("mysql:host=" . $mysql_config['host'] . ";dbname=" . $mysql_config['db_name'], $mysql_config['user'], $mysql_config['password']);
    $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Can't connect: <br>";
    echo $e->getMessage();
}

$query = $db->prepare("SELECT `Name`, `Type_ID`, `Genre_ID`, `Years`, `Time`, `Rating`, `Description`, `Background` FROM `moviedb`");
$query->execute();
$results = $query->fetchAll(PDO::FETCH_ASSOC);

http_response_code(200);

echo json_encode($results);