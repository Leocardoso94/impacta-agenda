<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="cabecalho.jsp" />

<form action="mvc" class="center-block">
	<input value="ValidaLoginLogic" name="logica" readonly type="hidden">
	<div class="form-group">
		<label for="login">Login:</label> <input type="text" id="login"
			class="form-control" name="login" />
	</div>
	<div class="form-group">
		<label for="senha">Senha:</label> <input type="password" id="senha"
			class="form-control" name="senha" />
	</div>
	<input class="btn btn-danger center-block" type="submit" value="Logar" />
</form>

<c:import url="rodape.jsp" />