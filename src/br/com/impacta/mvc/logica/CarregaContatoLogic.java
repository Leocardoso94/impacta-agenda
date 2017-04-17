package br.com.impacta.mvc.logica;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.impacta.agenda.servlet.Contato;
import br.com.impacta.agenda.servlet.ContatoDao;

public class CarregaContatoLogic implements Logica {

	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		long id = 0;
		String email = "";
		String endereco = "";
		String dataNascimento = "";
		String nome = "";
		if (req.getParameter("id") != null) {
			ContatoDao dao = new ContatoDao();
			Contato contato = dao.pesquisa((Integer.parseInt(req.getParameter("id"))));
			id = contato.getId();
			email = contato.getEmail();
			nome = contato.getNome();
			endereco = contato.getEndereco();
			dataNascimento = new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime());
		}
		req.setAttribute("id", id);
		req.setAttribute("email", email);
		req.setAttribute("dataNascimento", dataNascimento);
		req.setAttribute("nome", nome);
		req.setAttribute("endereco", endereco);
		System.out.println("Carregando contato... " + nome);

		return "add-contato.jsp";
	}

}
