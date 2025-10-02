<?php 
require_once '../config/Db.php';

class Etudiants {
    private $conn;
    private $table = 'etudiants';

    public function __construct() {
        $this->conn = Db::con();
    }

    // CREATE
    public function create($data) {
        $sql = "INSERT INTO $this->table 
            (classe_id, matricule, nom, prenoms, age, sexe, tel_etudiant, email, date_naissance, lieu_naissance, nationalite, nom_pere, nom_mere, nom_tuteur, tel_pere, tel_mere, tel_tuteur, photo, date_inscription, created_at, updated_at) 
            VALUES 
            (:classe_id, :matricule, :nom, :prenoms, :age, :sexe, :tel_etudiant, :email, :date_naissance, :lieu_naissance, :nationalite, :nom_pere, :nom_mere, :nom_tuteur, :tel_pere, :tel_mere, :tel_tuteur, :photo, :date_inscription, :created_at, :updated_at)";
        
        $stmt = $this->conn->prepare($sql);
        return $stmt->execute([
            ':classe_id' => $data['classe_id'],
            ':matricule' => $data['matricule'],
            ':nom' => $data['nom'],
            ':prenoms' => $data['prenoms'],
            ':age' => $data['age'],
            ':sexe' => $data['sexe'],
            ':tel_etudiant' => $data['tel_etudiant'],
            ':email' => $data['email'],
            ':date_naissance' => $data['date_naissance'],
            ':lieu_naissance' => $data['lieu_naissance'],
            ':nationalite' => $data['nationalite'],
            ':nom_pere' => $data['nom_pere'],
            ':nom_mere' => $data['nom_mere'],
            ':nom_tuteur' => $data['nom_tuteur'],
            ':tel_pere' => $data['tel_pere'],
            ':tel_mere' => $data['tel_mere'],
            ':tel_tuteur' => $data['tel_tuteur'],
            ':photo' => $data['photo'],
            ':date_inscription' => $data['date_inscription'],
            ':created_at' => $data['created_at'],
            ':updated_at' => $data['updated_at'],
        ]);
    }

    // READ ALL
    public function getAll() {
        $sql = "SELECT * FROM $this->table";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // READ ONE
    public function getById($id) {
        $sql = "SELECT * FROM $this->table WHERE id = :id";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute([':id' => $id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // UPDATE
    public function update($id, $data) {
        $sql = "UPDATE $this->table SET 
            classe_id=:classe_id, matricule=:matricule, nom=:nom, prenoms=:prenoms, age=:age, sexe=:sexe, 
            tel_etudiant=:tel_etudiant, email=:email, date_naissance=:date_naissance, lieu_naissance=:lieu_naissance, 
            nationalite=:nationalite, nom_pere=:nom_pere, nom_mere=:nom_mere, nom_tuteur=:nom_tuteur, 
            tel_pere=:tel_pere, tel_mere=:tel_mere, tel_tuteur=:tel_tuteur, photo=:photo, 
            date_inscription=:date_inscription, created_at=:created_at, updated_at=:updated_at 
            WHERE id=:id";
        
        $stmt = $this->conn->prepare($sql);
        return $stmt->execute([
            ':classe_id' => $data['classe_id'],
            ':matricule' => $data['matricule'],
            ':nom' => $data['nom'],
            ':prenoms' => $data['prenoms'],
            ':age' => $data['age'],
            ':sexe' => $data['sexe'],
            ':tel_etudiant' => $data['tel_etudiant'],
            ':email' => $data['email'],
            ':date_naissance' => $data['date_naissance'],
            ':lieu_naissance' => $data['lieu_naissance'],
            ':nationalite' => $data['nationalite'],
            ':nom_pere' => $data['nom_pere'],
            ':nom_mere' => $data['nom_mere'],
            ':nom_tuteur' => $data['nom_tuteur'],
            ':tel_pere' => $data['tel_pere'],
            ':tel_mere' => $data['tel_mere'],
            ':tel_tuteur' => $data['tel_tuteur'],
            ':photo' => $data['photo'],
            ':date_inscription' => $data['date_inscription'],
            ':created_at' => $data['created_at'],
            ':updated_at' => $data['updated_at'],
            ':id' => $id
        ]);
    }

    // DELETE
    public function delete($id) {
        $sql = "DELETE FROM $this->table WHERE id = :id";
        $stmt = $this->conn->prepare($sql);
        return $stmt->execute([':id' => $id]);
    }
}
