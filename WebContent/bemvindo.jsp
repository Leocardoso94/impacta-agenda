<html>
<body>
<%-- comentário em JSP aqui: nossa primeira página JSP --%>
<% String mensagem = "Bem vindo ao sistema da impacta!"; %>
<% out.println(mensagem); %><br />
<% String desenvolvido = "Desenvolvido por Leonardo"; %>
<%= desenvolvido %> <br />
<% System.out.println("Tudo foi executado!"); %>
</body>
</html>