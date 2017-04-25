package br.com.impacta.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.impacta.agenda.servlet.Usuario;
import br.com.impacta.agenda.servlet.UsuarioDao;

public class ValidaLoginLogic implements Logica {

	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {


		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		Usuario usuario = new Usuario();
		usuario.setLogin(login);
		usuario.setSenha(senha);
		
		UsuarioDao dao = new UsuarioDao();
		
		if(dao.isValido(usuario)){

			req.getSession().setAttribute("usuario", usuario);
			return "mvc?logica=ListaContatosLogic";
		}
		
		System.out.println("Login inválido");
		
		req.getSession().setAttribute("msg", "Login ou senha incorretos!");
		
		return "login.jsp";
		

		
	}

}
