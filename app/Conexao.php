<?php

class Conexao{
    private $host = '';
    private $dbname = '';
    private $user = '';
    private $password = '';

    public function conectar(){
        try{
            $conexao = new PDO("mysql:host=$this->host;dbname=$this->dbname", "$this->user", "$this->password");
            $conexao->exec('set charset set utf8');
            return $conexao;
        }catch(PDOException $e){
            $conexao = null;
            echo 'Erro: ' . $e->getMessage();
        }

    }
}
