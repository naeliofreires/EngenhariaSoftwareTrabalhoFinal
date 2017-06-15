package br.com.gimovel.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

	public Connection getConnection() {
		try {
			Class.forName("org.postgresql.Driver");
			return DriverManager.getConnection("jdbc:postgresql://localhost/imovel","postgres", "postgres");
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
