<?php
header("Content-Type: application/json");
// Autoriser tous les domaines (pendant le dev, pas en prod)
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

// Autoriser les méthodes HTTP
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS");

// Autoriser certains headers
header("Access-Control-Allow-Headers: Content-Type, Authorization");
require_once __DIR__ . '/../models/Etudiants.php';

$etudiant = new Etudiants();

if (isset($_GET['id'])) {
    $data = $etudiant->getById($_GET['id']);
    if ($data) {
        http_response_code(200);
        echo json_encode($data);
    } else {
        http_response_code(404); // Not Found
        echo json_encode(["message" => "Étudiant non trouvé"]);
    }
} else {
    http_response_code(400); // Bad Request
    echo json_encode(["message" => "ID manquant"]);
}
