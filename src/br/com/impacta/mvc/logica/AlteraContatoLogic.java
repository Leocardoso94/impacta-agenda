package br.com.impacta.mvc.logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.impacta.agenda.servlet.Contato;
import br.com.impacta.agenda.servlet.ContatoDao;

public class AlteraContatoLogic implements Logica {

	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {

		String tipo = req.getParameter("paramAltera");
		if (tipo.equals("altera")) {
			return this.alterar(req, res);

		} else {

			return this.carregar(req, res);
		}
	}

	private String carregar(HttpServletRequest req, HttpServletResponse res) {
		Contato contato = new Contato();
		int id = Integer.parseInt(req.getParameter("id"));

		ContatoDao dao = new ContatoDao();
		contato = dao.pesquisa(id);

		req.setAttribute("nome", contato.getNome());
		req.setAttribute("endereco", contato.getEndereco());
		req.setAttribute("email", contato.getEmail());

		String dataFormatada = new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime());

		req.setAttribute("dataNascimento", dataFormatada);

		return "altera-contato.jsp";

	}

	private String alterar(HttpServletRequest req, HttpServletResponse res) throws ParseException {
		// TODO Auto-generated method stub
		Contato contato = new Contato();
		long id = Long.parseLong(req.getParameter("id"));
		contato.setId(id);
		contato.setNome(req.getParameter("nome"));
		contato.setEndereco(req.getParameter("endereco"));
		contato.setEmail(req.getParameter("email"));

		String dataEmTexto = req.getParameter("dataNascimento");
		Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
		Calendar dataNascimento = Calendar.getInstance();
		dataNascimento.setTime(date);

		contato.setDataNascimento(dataNascimento);
		

		
		ContatoDao dao = new ContatoDao();
		dao.altera(contato);

		return "mvc?logica=ListaContatosLogic";

	}

}