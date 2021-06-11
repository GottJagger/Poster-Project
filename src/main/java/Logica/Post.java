/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import static Logica.Usuarios.URL;
import java.io.File;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;
import persistencia.Persistencia;

/**
 *
 * @author Gott Jagger
 */
public class Post implements Serializable {

    static final String URL = "jdbc:mysql://localhost:3306/posters";
    private final String usuario = "root";
    private final String password = "";
    Connection con = null;

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

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL, usuario, password);
            System.out.println("Conexión Exitosa");
            System.out.println("llega");
            PreparedStatement stmt = con.prepareStatement("INSERT INTO post(nombreUsuario,fechaCreacion,tema,conetidoPost)VALUES(?, ?, ?, ?)");
            System.out.println("ejecuta stmt");
            stmt.setString(1, getNombreUsuario());
            stmt.setString(2, getFechaCreacion());
            stmt.setString(3, getTema());
            stmt.setString(4, getConetidoPost());
            int count = stmt.executeUpdate();
            System.out.println("inserted count: " + count);

            stmt.close();
        } catch (SQLException ex) {
            Logger.getLogger(Usuarios.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Usuarios.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public ArrayList obtenerPost() {

        ArrayList<Post> listaObjetos = new ArrayList<>();
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL, usuario, password);
            //System.out.println("Conexión Exitosa");
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM post");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Post poster = new Post();
                poster.setNombreUsuario(rs.getString("nombreUsuario"));
                poster.setFechaCreacion(rs.getString("fechaCreacion"));
                poster.setTema(rs.getString("tema"));
                poster.setConetidoPost(rs.getString("conetidoPost"));
                System.out.println(poster.getNombreUsuario());
                listaObjetos.add(poster);

            }
            System.out.println(listaObjetos.get(0));
            System.out.println(listaObjetos.get(1));
            rs.close();
            con.close();
            return listaObjetos;
        } catch (SQLException ex) {
            Logger.getLogger(Usuarios.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Usuarios.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaObjetos;
    }

}
