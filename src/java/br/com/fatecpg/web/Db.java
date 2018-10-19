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
public class Db {
    private static ArrayList<Contato> contatos;
    
    public static ArrayList<Contato> getContatos(){
        if(contatos == null){
            contatos = new ArrayList<>();
            Contato c1 = new Contato();
            c1.setDados("João", "joao@site.com", "18991110001");
            contatos.add(c1);
            Contato c2 = new Contato();
            c2.setDados("Maria", "maria@site.com", "18991110002");
            contatos.add(c2);
            Contato c3 = new Contato();
            c3.setDados("José", "jose@site.com", "18991110003");
            contatos.add(c3);
        }
        return contatos;
    }
}
