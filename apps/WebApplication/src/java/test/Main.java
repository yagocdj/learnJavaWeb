package test;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import conexao.Conexao;
import java.sql.Connection;

/**
 *
 * @author yagoaguiar
 */
public class Main {
    public static void main(String[] args) {
        System.out.println("## Tentando abrir uma conexão com o banco ##");
        Connection con = Conexao.connect();
        if (con != null) {
            System.out.println("Conexão bem sucedida.");
        } else {
            System.out.println("Ops! A conexão não foi efetivada");
        }
        System.out.println("-- Fim --");
    }
}
