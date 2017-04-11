package br.com.impacta.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.impacta.agenda.servlet.Contato;
import br.com.impacta.agenda.servlet.ContatoDao;

public class ListaContatosLogic implements Logica {

	  public String executa(HttpServletRequest req, HttpServletResponse res)
	      throws Exception {
	    
	    List<Contato> contatos = new ContatoDao().getContatos();
	    
	    req.setAttribute("contatos", contatos);
	    
	    return "lista-contatos.jsp";
	  }
	}

