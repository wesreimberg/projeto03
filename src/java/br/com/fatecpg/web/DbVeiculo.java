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
public class DbVeiculo {
    private static ArrayList<Veiculo> lsVeiculos;
    
      
    public static ArrayList<Veiculo> getVeiculo(){
        if(lsVeiculos == null){
            lsVeiculos = new ArrayList<>();
            Veiculo c1 = new Veiculo();
            c1.setDadosVeiculo("ABC1234", "MarcaVenerica", "ModeloGenerico", "CorGenerica");
            lsVeiculos.add(c1);
        }
        return lsVeiculos;
    }
}
