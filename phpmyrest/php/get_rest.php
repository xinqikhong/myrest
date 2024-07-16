<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

header('Content-Type: application/json');

// Database connection
include_once 'dbconnect.php';

// Base URL for images
$baseImageUrl = 'https://xqksoft.com/myrest/images/';

// SQL query to fetch all restaurant details
$sql = "SELECT 
    CONCAT('$baseImageUrl', picture, '.jpg') AS picture, 
    locat, 
    latitude, 
    longitude, 
    food, 
    dessert, 
    drink, 
    pastries, 
    savory, 
    sweet, 
    sour, 
    spicy, 
    salty, 
    bitter, 
    seafood, 
    gluten_free, 
    others, 
    casual, 
    cafe, 
    fine_dining, 
    pubs_and_bars, 
    coffee_shop, 
    dessert_shop, 
    cuisine 
    FROM restaurants";

$result = $conn->query($sql);

$restaurants = [];

if ($result->num_rows > 0) {
    // Fetch data and store it in an array
    while ($row = $result->fetch_assoc()) {
        $restaurants[] = $row;
    }
}

// Output data as JSON
echo json_encode($restaurants);

$conn->close();
?>
