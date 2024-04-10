<?php
if (isset($_GET['url'])) {
    // Set the response headers to allow CORS
    header('Access-Control-Allow-Origin: *');
    $url = $_GET['url'];
        

    // Fetch the data from the specified URL
    if (filter_var($url, FILTER_VALIDATE_URL)) {
        $data = @file_get_contents($url);
       
        if ($data !== false) {
            // Output the data
            echo $data;
            exit();
        } else {
            echo json_encode(['error' => 'Failed to fetch URL.']);
        }
    }else{
        echo json_encode(['error' => 'Invalid URL.']);
    }
}else {
    echo json_encode(['error' => 'No URL specified.']);
}