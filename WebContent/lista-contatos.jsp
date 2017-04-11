<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="cabecalho.jsp" />
<a href="mvc?logica=AdicionaContatoLogic&paramAdd=carrega">Adicionar contato</a>
<table>
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
			<td><a href="mvc?logica=AlteraContatoLogic&paramAltera=pesquisa&id=${contato.id}"> Alterar</a></td>
		</tr>
	</c:forEach>
</table>
<c:import url="rodape.jsp" />