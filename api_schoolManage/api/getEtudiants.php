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
$liste = $etudiant->getAll();

http_response_code(200); // OK
echo json_encode($liste);
