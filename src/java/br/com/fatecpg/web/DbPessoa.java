/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

import java.util.ArrayList;

/**
 *
 * @author Thalisson
 */
public class DbPessoa {
     private static ArrayList<Pessoa> lsPessoas;
    
      
    public static ArrayList<Pessoa> getPessoas(){
        if(lsPessoas == null){
            lsPessoas = new ArrayList<>();
            Pessoa p1 = new Pessoa();
            p1.setDadosPessoa("Nome", "329.222.215-28", "jaoxxxa@gmail.com", "13981828384");
            lsPessoas.add(p1);
        }
        return lsPessoas;
    }
}
