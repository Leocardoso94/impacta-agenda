<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<c:import url="cabecalho.jsp" />
	<div class="jumbotron">
		<h1 class="text-center">Adicionar Contato</h1>
		<br>
		<form action="mvc" class="">
			Nome: <input type="text" name="nome" required /><br /> E-mail: <input
				type="email" name="email" required /><br /> Endereço: <input
				type="text" name="endereco" required /><br /> Data Nascimento: <input
				type="text" name="dataNascimento" required /><br /> <br> <input
				type="submit" class="btn btn-primary center-block" value="Gravar" />
				<input
		type="hidden" name="logica" value="AdicionaContatoLogic" />
		</form>
	</div>
<c:import url="rodape.jsp" />