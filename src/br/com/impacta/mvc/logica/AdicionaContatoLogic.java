package br.com.impacta.mvc.logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.impacta.agenda.servlet.Contato;
import br.com.impacta.agenda.servlet.ContatoDao;

public class AdicionaContatoLogic implements Logica {

	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {

		String tipo = req.getParameter("paramAdd");
		if (tipo != null) {

			return this.carregar(req, res);

		} else {
			return this.adicionar(req, res);
		}
	}

	private String carregar(HttpServletRequest req, HttpServletResponse res) {

		return "adiciona-contato.jsp";

	}

	private String adicionar(HttpServletRequest req, HttpServletResponse res) throws ParseException {
		Contato contato = new Contato();
		contato.setNome(req.getParameter("nome"));
		contato.setEndereco(req.getParameter("endereco"));
		contato.setEmail(req.getParameter("email"));

		String dataEmTexto = req.getParameter("dataNascimento");
		Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
		Calendar dataNascimento = Calendar.getInstance();
		dataNascimento.setTime(date);
		contato.setDataNascimento(dataNascimento);

		ContatoDao dao = new ContatoDao();

		dao.adiciona(contato);

		System.out.println("contato foi adicionado!");

		return "mvc?logica=ListaContatosLogic";

	}

}