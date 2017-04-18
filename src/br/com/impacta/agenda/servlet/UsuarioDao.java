package br.com.impacta.agenda.servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDao {

	Connection con;

	public UsuarioDao() {
		this.con = new ConnectionFactory().getConnection();
	}

	public boolean isValido(Usuario usuario) {
		boolean login = false;
		try {

			PreparedStatement stmt = this.con.prepareStatement("SELECT * FROM `usuarios` where login=? and senha=?");
			stmt.setString(1, usuario.getLogin());
			stmt.setString(2, usuario.getSenha());
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				login = true;
			}
			rs.close();
			stmt.close();
			return login;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
