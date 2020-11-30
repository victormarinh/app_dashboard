$(document).ready(() => {

	$('#documentacao').on('click', () => {
		$.post('./includes/documentacao.html', data => {
			$('#pagina').html(data);
		})
	})

	$('#suporte').on('click', () => {
		$.post('./includes/suporte.html', data => {
			$('#pagina').html(data);
		})
	})

	$('#main').on('click', () => {
		window.location = '../../index.html';
	})

	$('#competencia').on('change', e => {
		let competencia = $(e.target).val();
		$.ajax({
			type: 'GET',
			url: './app/Controller.php',
			data: `competencia=${competencia}`, //x-www-form-unlencoded
			dataType: 'json',

			success: dados => {
				console.log('requisição realizada com sucesso!');
				console.log(dados);
				$('#numeroVendas').html(dados.numeroVendas);
				$('#totalVendas').html(dados.totalVendas);	
				$('#clientesAtivos').html(dados.clientesAtivos);
				$('#clientesInativos').html(dados.clientesInativos);
				$('#feedbackReclamacao').html(dados.feedbackReclamacao);
				$('#feedbackElogio').html(dados.feedbackElogio);
				$('#feedbackSugestao').html(dados.feedbackSugestao);
				$('#despesas').html(dados.despesas);
			},
			error: erro => {
				console.log('Error: ' + erro);
			}
		})
	})

})