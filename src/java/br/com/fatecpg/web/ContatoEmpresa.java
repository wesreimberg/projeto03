/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

/**
 *
 * @author a
 */
public class ContatoEmpresa {
    private String nome;
    private String razao;
    private String cnpj;
    private String telefone;
    private String website;

    public void setDadosEmpresa(String nome, String razao, String cnpj,String telefone, String website){
        this.setNome(nome);
        this.setRazao(razao);
        this.setCNPJ(cnpj);
        this.setTelefone(telefone);
        this.setWebsite(website);
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazao() {
        return razao;
    }

    public void setRazao(String razao) {
        this.razao = razao;
    }
    public String getCNPJ() {
        return cnpj;
    }

    public void setCNPJ(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }
}
