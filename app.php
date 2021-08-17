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

// Fetch type id
$type = $_GET['type'];

$query = $db->prepare(
    "SELECT `type_id` 
    FROM `type` 
    WHERE `type` = ?"
);

$query->execute([$type]);
$typeId = $query->fetchAll(PDO::FETCH_ASSOC);
$typeId = array_column($typeId, 'type_id');

// Fetch genre id
$genres = $_GET['genres'];
$questionmarks = str_repeat("?,", count($genres)-1) . "?";

$query = $db->prepare(
    "SELECT `genre_id` 
    FROM `genre` 
    WHERE `genre` 
    IN ($questionmarks)"
);

$query->execute($genres);
$genreIds = $query->fetchAll(PDO::FETCH_ASSOC);
$genreIds = array_column($genreIds, 'genre_id');

// Fetch data from movies table.
$questionmarks = str_repeat("?,", count($genreIds)-1) . "?";

$query = $db->prepare(
    "SELECT * 
    FROM `moviedb` 
    WHERE `type_id` = ? 
    AND `genre_id` 
    IN ($questionmarks) 
    ORDER BY RAND() 
    LIMIT 5"
);

$query->execute([$typeId[0], ...$genreIds]);
$results = $query->fetchAll(PDO::FETCH_ASSOC);

http_response_code(200);
echo json_encode($results);

?>