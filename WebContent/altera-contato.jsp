<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="cabecalho.jsp" />
<br>
Formulario para alteração de contatos:
<br>

<form action="mvc" method="post">
 <input type="hidden" name="id" value="${param.id}" readonly
		style="border: none" /><br> nome: <input type="text" name="nome"
		value="${requestScope.nome}" /><br> endereco: <input type="text"
		name="endereco" value="${requestScope.endereco}" /><br> email: <input
		type="text" name="email" value="${requestScope.email}" /><br>
	Data Nascimento: <input type="text" name="dataNascimento"
		value="${requestScope.dataNascimento}" required /><br /> <input
		type="hidden" name="logica" value="AlteraContatoLogic" /> <input
		type="hidden" name="paramAltera" value="altera" /><br> <br>
	<input type="submit" value="Alterar" />
</form>
<c:import url="rodape.jsp" />
