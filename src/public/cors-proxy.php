<?php
if (isset($_GET['url'])) {
    // Set the response headers to allow CORS
    header('Access-Control-Allow-Origin: *');
    //header('Content-Type: application/json');

    // Get the URL to fetch from the query parameter
    $url = $_GET['url'];

    // Fetch the data from the specified URL
    if (filter_var($url, FILTER_VALIDATE_URL)) {
        $data = @file_get_contents($url);
        // Output the data
       
        if ($data !== false) {
            // Output the data
            echo $data;
            // echo json_encode(['data' => $data]);
        } else {
            echo json_encode(['error' => 'Failed to fetch URL.']);
        }
    }else{
        echo json_encode(['error' => 'Invalid URL.']);
    }
}else {
    echo json_encode(['error' => 'No URL specified.']);
}