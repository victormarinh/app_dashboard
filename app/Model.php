<?php

 require_once './Conexao.php';
 require_once './Dashboard.php';

class Model{ // Model
    private $conexao;
    private $dashboard;

    public function __construct(Conexao $conexao, Dashboard $dashboard){
        $this->conexao = $conexao->conectar();
        $this->dashboard = $dashboard;
    }

    /*
        Retorna o número de vendas
    */
    public function getNumeroVendas(){
        $query = "SELECT COUNT(*) AS numero_vendas FROM tb_vendas WHERE data_venda BETWEEN ? AND ?";
        $stmt = $this->conexao->prepare($query);
        $stmt->bindValue(1, $this->dashboard->__get('data_inicio'));
        $stmt->bindValue(2, $this->dashboard->__get('data_fim'));
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_OBJ)[0]->numero_vendas;
    }

    /*
        Retorna o total de vendas
    */

    public function getTotalVendas(){
        $query = "SELECT SUM(total) AS total_vendas FROM tb_vendas WHERE data_venda BETWEEN ? AND ?";
        $stmt = $this->conexao->prepare($query);
        $stmt->bindValue(1, $this->dashboard->__get('data_inicio'));
        $stmt->bindValue(2, $this->dashboard->__get('data_fim'));
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_OBJ)[0]->total_vendas;
    }

    /*
        Retorna clientes ativos
    */

    public function getClientesAtivos(){
        $query = 'SELECT COUNT(*) AS clientes_ativos FROM tb_clientes WHERE cliente_ativo = ? AND data_cliente BETWEEN ? AND ?';
        $stmt = $this->conexao->prepare($query);
        $stmt->bindValue(1, '1');
        $stmt->bindValue(2, $this->dashboard->__get('data_inicio'));
        $stmt->bindValue(3, $this->dashboard->__get('data_fim'));
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ)[0]->clientes_ativos;
    }

    /*
        Retorna o número de clientes inativos
    */

    public function getClientesInativos(){
        $query = 'SELECT COUNT(*) AS clientes_inativos FROM tb_clientes WHERE cliente_ativo = ? AND data_cliente BETWEEN ? AND ?';
        $stmt = $this->conexao->prepare($query);
        $stmt->bindValue(1, '0');
        $stmt->bindValue(2, $this->dashboard->__get('data_inicio'));
        $stmt->bindValue(3, $this->dashboard->__get('data_fim'));
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ)[0]->clientes_inativos;
    }

    /*
        Retorna o número de reclamacoes
    */

    public function getFeedbackReclamacao(){
        $query = 'SELECT COUNT(*) AS reclamacoes FROM tb_feedback WHERE reclamacoes = 1 AND data_venda BETWEEN ? AND ?';
        $stmt = $this->conexao->prepare($query);
        $stmt->bindValue(1, $this->dashboard->__get('data_inicio'));
        $stmt->bindValue(2, $this->dashboard->__get('data_fim'));
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ)[0]->reclamacoes;
    }

    /*
        Retorna o número de sugestoes
    */

    public function getFeedbackSugestoes(){
        $query = 'SELECT COUNT(*) AS sugestoes FROM tb_feedback WHERE sugestoes = 1 AND data_venda BETWEEN ? AND ?';
        $stmt = $this->conexao->prepare($query);
        $stmt->bindValue(1, $this->dashboard->__get('data_inicio'));
        $stmt->bindValue(2, $this->dashboard->__get('data_fim'));
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ)[0]->sugestoes;
    }

    /*
        Retorna o número de elogios
    */
    public function getFeedbackElogios(){
        $query = 'SELECT COUNT(*) AS elogios FROM tb_feedback WHERE elogios = 1 AND data_venda BETWEEN ? AND ?';
        $stmt = $this->conexao->prepare($query);
        $stmt->bindValue(1, $this->dashboard->__get('data_inicio'));
        $stmt->bindValue(2, $this->dashboard->__get('data_fim'));
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ)[0]->elogios;
    }

    /** 
     * Retorna o número de despesas
    */
    public function getDespesas(){
        $query = 'SELECT SUM(total) AS despesas FROM tb_despesas WHERE data_despesa BETWEEN ? AND ?';
        $stmt = $this->conexao->prepare($query);
        $stmt->bindValue(1, $this->dashboard->__get('data_inicio'));
        $stmt->bindValue(2, $this->dashboard->__get('data_fim'));
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_OBJ)[0]->despesas;
    }


}