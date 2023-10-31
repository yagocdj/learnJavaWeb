/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author yagoaguiar
 */
public class JavaBeans {
    private String idContato;
    private String nome;
    private String fone;
    private String email;

    public JavaBeans() {
        super();
    }

    public JavaBeans(String idContato, String nome, String fone, String email) {
        super();
        this.idContato = idContato;
        this.nome = nome;
        this.fone = fone;
        this.email = email;
    }

    public String getIdContato() {
        return idContato;
    }

    public void setIdContato(String idContato) {
        this.idContato = idContato;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getFone() {
        return fone;
    }

    public void setFone(String fone) {
        this.fone = fone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
