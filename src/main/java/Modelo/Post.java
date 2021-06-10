/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.File;
import java.util.Collection;
import persistencia.Persistencia;

/**
 *
 * @author Gott Jagger
 */
public class Post {

    private String nombreUsuario;
    private String fechaCreacion;
    private String tema;
    private String conetidoPost;

    public Post() {
    }

    public Post(String nombreUsuario, String fechaCreacion, String tema, String conetidoPost) {
        this.nombreUsuario = nombreUsuario;
        this.fechaCreacion = fechaCreacion;
        this.tema = tema;
        this.conetidoPost = conetidoPost;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(String fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public String getTema() {
        return tema;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }

    public String getConetidoPost() {
        return conetidoPost;
    }

    public void setConetidoPost(String conetidoPost) {
        this.conetidoPost = conetidoPost;
    }

    public void agregarPost() {
        Persistencia.conectarArchivo(new File("Post.dat"), "grabar");
        Persistencia.grabarObjeto(this);

    }

    public Collection obtenerPost() {
        Persistencia.conectarArchivo(new File("Post.dat"), "leer");
        return Persistencia.leerObjeto();
    }

}
