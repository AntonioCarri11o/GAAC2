package com.example.gaac.model.Utils;

import com.example.gaac.model.BeanLogin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DaoLogin {
    public BeanLogin login(String correo, String pass, int role) {
        BeanLogin beanlogin = new BeanLogin();
        if(role==1){
            String requiredStatus="Activo";
            try(
                    Connection con =MySQLConnection.getConnection();
                    PreparedStatement pstm=con.prepareStatement("select Correo, Matricula,NombreCompleto,Telefono,sexo,carrera.nombre,ID_carrera from estudiante inner join carrera on ID_carrera=carrera.ID where (Correo=? and Contrasena=? and estado=?);")
            ){
                pstm.setString(1,correo);
                pstm.setString(2,pass);
                pstm.setString(3,requiredStatus);
                ResultSet rs= pstm.executeQuery();
                while (rs.next()){
                    beanlogin.setCorreo(rs.getString("Correo"));
                    beanlogin.setMatricula(rs.getString("Matricula"));
                    beanlogin.setName(rs.getString("NombreCompleto"));
                    beanlogin.setTelefono(rs.getString("Telefono"));
                    char sexo=rs.getString("sexo".toString()).charAt(0);
                    beanlogin.setSexo(sexo);
                    beanlogin.setIdCarrera(rs.getString("ID_carrera"));
                    beanlogin.setCarrera(rs.getString("carrera.nombre"));
                }
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        if(role==2){
            try(
                    Connection con =MySQLConnection.getConnection();
                    PreparedStatement pstm=con.prepareStatement("select *from docente where (Correo=? and Contrasena=?);");
            ){
                pstm.setString(1,correo);
                pstm.setString(2,pass);
                ResultSet rs= pstm.executeQuery();
                while (rs.next()){
                    beanlogin.setCorreo(rs.getString("Correo"));
                    beanlogin.setName(rs.getString("Nombre"));
                    beanlogin.setAp1(rs.getString("Apellido1"));
                    beanlogin.setAp2(rs.getString("Apellido2"));
                }
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        if(role==3){
            try(
                    Connection con = MySQLConnection.getConnection();
                    PreparedStatement pstm=con.prepareStatement("select * from administrador where (Usuario=? and Codigo=?);");
                    ){
                pstm.setString(1,correo);
                pstm.setString(2,pass);
                ResultSet rs =pstm.executeQuery();
                while (rs.next()){
                    beanlogin.setCorreo(rs.getString("Usuario"));
                }
            }catch (Exception e){
                e.printStackTrace();
            }
        }

        return beanlogin;
    }
}