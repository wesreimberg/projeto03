/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

import java.util.ArrayList;

/**
 *
 * @author a
 */
public class DbEmpresa {
    private static ArrayList<ContatoEmpresa> contatosEmpresa;
    
    public static ArrayList<ContatoEmpresa> getContatoEmpresa(){
        if(contatosEmpresa == null){
            contatosEmpresa = new ArrayList<>();
            ContatoEmpresa c1 = new ContatoEmpresa();
            c1.setDadosEmpresa("João", "Bar do João", "0001564856951", "13958475652", "joaobar.com.br");
            contatosEmpresa.add(c1);
        }
        return contatosEmpresa;
    }
}
