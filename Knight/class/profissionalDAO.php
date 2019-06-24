<?php

require_once('Database.php');
require_once ('profissional.php');

class profissionalDAO {

    private $conn;

    public function __construct() {
        $this->conn = Database::getConnection();
    }

    public function store(profissional $profissional) {
        try {
            $query = $this->conn->prepare(
                    "INSERT into profissional ( nome, email, senha)
                     VALUES(:nome,:email, :senha);");

            $query->bindValue(':nome', $profissional->nome);
            $query->bindValue(':email', $profissional->email);
            $query->bindValue(':senha', password_hash($profissional->senha, PASSWORD_DEFAULT));
            $query->execute();
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }

}

?>