<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="cabecalho.jsp" />
<h4 class="text-center">
	<a href="mvc?logica=CarregaContatoLogic"> + Novo Contato</a>
</h4>
<table class="table table-striped">

	<tr>
	<thead>
		<th>Nome</th>
		<th>Email</th>
		<th>Endereço</th>
		<th>Data de Nascimento</th>
		<th>Remover</th>
		<th>Alterar</th>
	</thead>
	</tr>

	<!-- percorre contatos montando as linhas da tabela -->
	<c:forEach var="contato" items="${contatos}">
		<tr>
			<td>${contato.nome}</td>
			<td><c:choose>
					<c:when test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:when>
					<c:otherwise>
E-mail não informado
</c:otherwise>
				</c:choose></td>
			<td>${contato.endereco}</td>
			<td><fmt:formatDate value="${contato.dataNascimento.time}"
					pattern="dd/MM/yyyy" /></td>
			<td><a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
			<td><a href="mvc?logica=CarregaContatoLogic&id=${contato.id}">Alterar</a></td>
		</tr>
	</c:forEach>
</table>
<c:import url="rodape.jsp" />