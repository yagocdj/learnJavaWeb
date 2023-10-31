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
    private static final String DRIVER = "org.postgresql.Driver";
    private static final String USER = "postgres";
    private static final String PASSWD = "postgres";
    private static String url;
    private static Connection manager;

    // Método de conexão
    public static Connection connect() {
        manager = null;
        try {
            openPostgresConnection();
            return manager;
        } catch (Exception error) {
            error.printStackTrace();
        }
        return manager;
    }
    
    // Caso o SGBD seja postgresql
    public static void openPostgresConnection() {
        try {
            url = "jdbc:postgresql://127.0.0.1:5432/db_usuario";
            Class.forName(DRIVER);
            // manager -> estabelece uma sessao com o DB
            // getConnection -> obter os parametros de conexao
            manager = DriverManager.getConnection(url, USER, PASSWD);
        } catch (Exception error) {
            error.printStackTrace();
        }
    }
    
    public static void disconnect() {
        if (manager != null) {
            try {
                manager.close();
                manager = null;
            } catch (Exception error) {
                error.printStackTrace();
            }
        }
    }
}
