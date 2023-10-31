/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author yagoaguiar
 */
public class Conexao {
    /** Módulo de conexão **/
    // Parâmetros de conexão
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:postgresql://127.0.0.1:5432/db_agenda?useTimezone=true&serverTimezone=UTC";
    private static final String USER = "postgres";
    private static final String PASSWD = "postgres";

    // Método de conexão
    private Connection connect() {
        Connection con = null;
        try {
            Class.forName(DRIVER);
            // con -> estabelece uma sessao com o DB
            // getConnection -> obter os parametros de conexao
            con = DriverManager.getConnection(URL, USER, PASSWD);
            return con;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }
	
    // Teste de conexao
    public void testConnection() {
        try {
            Connection con = connect();
            System.out.println(con);
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }  
}
