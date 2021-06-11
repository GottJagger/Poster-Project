/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Persistencia.DBconection;
import java.io.File;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import persistencia.Persistencia;

/**
 *
 * @author Gott Jagger
 */
public class Usuarios implements Serializable {

    static final String URL = "jdbc:mysql://localhost:3306/posters";
    private final String usuario = "root";
    private final String password = "";
    Connection con = null;

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

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL, usuario, password);
            System.out.println("Conexión Exitosa");
            System.out.println("llega");
            PreparedStatement stmt = con.prepareStatement("INSERT INTO usuarios(id,nombre,nombreUsuario,password)VALUES(?, ?, ?, ?)");
            System.out.println("ejecuta stmt");
            stmt.setString(1, getId());
            stmt.setString(2, getNombre());
            stmt.setString(3, getNombreUsusario());
            stmt.setString(4, getPass());
            int count = stmt.executeUpdate();
            System.out.println("inserted count: " + count);

            stmt.close();
        } catch (SQLException ex) {
            Logger.getLogger(Usuarios.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Usuarios.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public ArrayList obtenerUsuarios() {

        ArrayList<Usuarios> listaObjetos = new ArrayList();
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(URL, usuario, password);
            //System.out.println("Conexión Exitosa");
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM usuarios");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Usuarios usr = new Usuarios();
                usr.setId(rs.getString("id"));
                usr.setNombre(rs.getString("nombre"));
                usr.setNombreUsusario(rs.getString("nombreUsuario"));
                usr.setPass(rs.getString("password"));
                listaObjetos.add(usr);

            }
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
