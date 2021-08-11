
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Usuario;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class UsuarioDAO implements CRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Usuario u = new Usuario();
    
    @Override
    public List listar() {
        ArrayList <Usuario>list = new ArrayList<>();
        String sql = "select * from usuarios";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Usuario user = new Usuario();
                user.setId(rs.getInt("idusuarios"));
                user.setApNom(rs.getString("NomAp"));
                user.setEmail(rs.getString("email"));
                user.setEdad(rs.getInt("edad"));
                list.add(user);
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        finally{
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(con);
                    
        }
        return list;
    }

    @Override
    public Usuario list(int id) {
        String sql = "select * from usuarios where idusuarios="+id;
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                u.setId(rs.getInt("idusuarios"));
                u.setApNom(rs.getString("NomAp"));
                u.setEmail(rs.getString("email"));
                u.setEdad(rs.getInt("edad"));
            }
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        finally{
            Conexion.close(rs);
            Conexion.close(ps);
            Conexion.close(con);
                    
        }
        return u;
    }

    @Override
    public boolean add(Usuario user) {
        String sql="insert into usuarios(NomAp,email,edad)values('"+user.getApNom()+"','"+user.getEmail()+"','"+user.getEdad()+"')";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        return false;
    }

    @Override
    public boolean edit(Usuario user) {
        String sql="update usuarios set NomAp='"+user.getApNom()+"',email='"+user.getEmail()+"',edad='"+user.getEdad()+"'where idusuarios="+user.getId();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from usuarios where idusuarios="+id;
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
        return false;
    }
    
}
