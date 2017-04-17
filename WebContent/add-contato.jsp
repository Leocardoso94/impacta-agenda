<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="cabecalho.jsp" />

<form action="mvc" class="center-block">
	<input value="${id}" name="id" type="hidden" readonly> <input
		value="AdicionaOuAlteraContatoLogic" name="logica" readonly
		type="hidden">
	<div class="form-group">
		<label for="nome">Nome:</label> <input type="text" id="nome"
			class="form-control" name="nome" value="${nome}" />
	</div>
	<div class="form-group">
		<label for="email">E-mail:</label> <input type="text" id="email"
			class="form-control" name="email" value="${email}" />
	</div>
	<div class="form-group">
		<label for="endereco">Endereço:</label> <input type="text"
			id="endereco" class="form-control" name="endereco"
			value="${endereco}" />
	</div>
	<div class="form-group">
	<label for="${id}">Data Nascimento:</label>
		 <input id="${id}" class="form-control"
			name="dataNascimento" value="${dataNascimento}" required />
		<script>
			$("#${id}").datepicker({
				dateFormat : 'dd/mm/yy'
			});
		</script>
	</div>
	<input class="btn btn-danger center-block" type="submit" value="Gravar" />
</form>

<c:import url="rodape.jsp" />