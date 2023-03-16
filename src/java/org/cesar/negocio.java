package org.cesar;


import org.cesar.Datos;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author cesaaaaar
 */
public class negocio implements Serializable{
    private List<Datos>lista;

    public negocio() {
    }
    public boolean loadLista()
    {
        Datos datos=null;
        lista= new ArrayList<>();
        for(int i=1;i<=5;i++)
        {
            datos= new Datos();
            datos.setCalf((float)(Math.random()*10));
           datos.setNombre(String.format("Abc %d", i) );
           lista.add(datos);
           
        }
        return lista!=null && !lista.isEmpty();
        
    }
    public List<Datos> getLista() {
        if(lista== null || lista.isEmpty())
        {
            if(!loadLista())
            {
                return null;
            }
        }
        return lista;
    }

    public void setLista(List<Datos> lista) {
        this.lista = lista;
    }
    
    
}
