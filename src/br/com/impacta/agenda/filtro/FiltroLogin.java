package br.com.impacta.agenda.filtro;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import br.com.impacta.agenda.servlet.Usuario;

@WebFilter("/*")
public class FiltroLogin implements Filter {


	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest) req).getSession();

		Usuario usuario = (Usuario) session.getAttribute("usuario");
		if ("ValidaLoginLogic".equals(req.getParameter("logica")) || usuario != null) {
			chain.doFilter(req, res);
		} else {
			RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			rd.forward(req, res);
		}
	}

}
