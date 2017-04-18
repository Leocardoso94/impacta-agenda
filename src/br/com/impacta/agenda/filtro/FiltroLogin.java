package br.com.impacta.agenda.filtro;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.impacta.agenda.servlet.Usuario;

@WebFilter("/*")
public class FiltroLogin implements Filter {
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {

		HttpSession session = ((HttpServletRequest) req).getSession();

		Usuario usuario = (Usuario) session.getAttribute("usuario");

		if (usuario == null) {

			session.setAttribute("msg", "Você não está logado no sistema!");

			((HttpServletResponse) res).sendRedirect("../index.jsp");

		} else {

			chain.doFilter(req, res);

		}

	}

}
