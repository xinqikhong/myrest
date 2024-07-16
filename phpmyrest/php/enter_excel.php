<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

require '../../vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\IOFactory;

// Database connection
include_once 'dbconnect.php';

// Load the Excel file
$inputFileName = '../Data Entry Example.xlsx'; // Path to your Excel file
$spreadsheet = IOFactory::load($inputFileName);
$sheet = $spreadsheet->getActiveSheet();

// Initialize a counter to track the row number
$rowCount = 0;

// Loop through each row and insert into the database
foreach ($sheet->getRowIterator() as $row) {
    // Skip the first row (column titles)
    if ($rowCount === 0) {
        $rowCount++;
        continue;
    }
    
    $data = [];
    $cellIterator = $row->getCellIterator();
    $cellIterator->setIterateOnlyExistingCells(false); // Include empty cells

    foreach ($cellIterator as $cell) {
        $data[] = $cell->getValue();
    }

    // Adjust the SQL as per your columns
    $sql = "INSERT INTO restaurants (
        picture, 
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
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    
    $stmt = $conn->prepare($sql);
    
    // Bind parameters (adjust types as needed)
    $stmt->bind_param("ssddiiiiiiiiiiiiiiiiiiis", 
        $data[0], // picture
        $data[1], // location
        $data[2], // latitude
        $data[3], // longitude
        $data[4], // food
        $data[5], // dessert
        $data[6], // drink
        $data[7], // pastries
        $data[8], // savory
        $data[9], // sweet
        $data[10], // sour
        $data[11], // spicy
        $data[12], // salty
        $data[13], // bitter
        $data[14], // seafood
        $data[15], // gluten_free
        $data[16], // others
        $data[17], // casual
        $data[18], // cafe
        $data[19], // fine_dining
        $data[20], // pubs_and_bars
        $data[21], // coffee_shop
        $data[22], // dessert_shop
        $data[23]  // cuisine
    );

    if (!$stmt->execute()) {
        echo "Error: " . $stmt->error;
    }
    
    $rowCount++;
}

$stmt->close();
$conn->close();
echo "Data imported successfully!";
?>
