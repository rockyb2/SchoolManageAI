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

$data = json_decode(file_get_contents("php://input"), true);

if (!empty($data)) {
    if ($etudiant->create($data)) {
        http_response_code(201); // Created
        echo json_encode(["message" => "Étudiant créé avec succès"]);
    } else {
        http_response_code(500);
        echo json_encode(["message" => "Erreur lors de la création"]);
    }
} else {
    http_response_code(400); // Bad Request
    echo json_encode(["message" => "Données incomplètes"]);
}
