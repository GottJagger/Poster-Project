/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import java.io.File;
import java.io.Serializable;
import java.util.Collection;
import persistencia.Persistencia;

/**
 *
 * @author Gott Jagger
 */
public class Usuarios implements Serializable {

    private String id;
    private String nombre;
    private String nombreUsusario;
    private String Pass;

    public Usuarios() {
    }

    public Usuarios(String id, String nombre, String nombreUsusario, String Pass) {
        this.id = id;
        this.nombre = nombre;
        this.nombreUsusario = nombreUsusario;
        this.Pass = Pass;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombreUsusario() {
        return nombreUsusario;
    }

    public void setNombreUsusario(String nombreUsusario) {
        this.nombreUsusario = nombreUsusario;
    }

    public String getPass() {
        return Pass;
    }

    public void setPass(String Pass) {
        this.Pass = Pass;
    }

    public void agregarUsuario() {
        Persistencia.conectarArchivo(new File("usuario.dat"), "grabar");
        Persistencia.grabarObjeto(this);

    }

    public Collection obtenerUsuarios() {
        Persistencia.conectarArchivo(new File("usuario.dat"), "leer");
        return Persistencia.leerObjeto();
    }
    
}
