<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="cabecalho.jsp" />
<div class="jumbotron">
	<form action="mvc">
		<input value="${id}" name="id" type="hidden" readonly> <input
			value="AdicionaOuAlteraContatoLogic" name="logica" readonly
			type="hidden"> Nome: <input type="text" name="nome"
			value="${nome}" /> <br /> E-mail: <input type="text" name="email"
			value="${email}" /><br /> Endereço: <input type="text"
			name="endereco" value="${endereco}" /><br /> Data Nascimento: <input
			type="text" value="${dataNascimento}"name="dataNascimento" required /> <br /> <input
			type="submit" value="Gravar" />
	</form>
</div>
<c:import url="rodape.jsp" />