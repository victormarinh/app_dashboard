<?php

require_once './Model.php';

$dashboard = new Dashboard();
$conexao = new Conexao();

$competencia = explode('-', $_GET['competencia']);
$ano = $competencia[0];
$mes = $competencia[1];

$dias_do_mes = cal_days_in_month(CAL_GREGORIAN, $mes, $ano);

$dashboard->__set('data_inicio', $ano . '-' . $mes . '-01');
$dashboard->__set('data_fim', $ano . '-' . $mes . '-' . $dias_do_mes);

$model = new Model($conexao, $dashboard);

$dashboard->__set('numeroVendas', $model->getNumeroVendas());
$dashboard->__set('totalVendas', $model->getTotalVendas());
$dashboard->__set('clientesAtivos', $model->getClientesAtivos());
$dashboard->__set('clientesInativos', $model->getClientesInativos());
$dashboard->__set('feedbackReclamacao', $model->getFeedbackReclamacao());
$dashboard->__set('feedbackSugestao', $model->getFeedbackSugestoes());
$dashboard->__set('feedbackElogio', $model->getFeedbackElogios());
$dashboard->__set('despesas', $model->getDespesas());

// echo '<pre>';
// print_r($dashboard);
// echo '</pre>';

// echo '<br><br>';

echo json_encode($dashboard);

?>  