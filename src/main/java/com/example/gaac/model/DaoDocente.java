package com.example.gaac.model;

import com.example.gaac.model.Utils.MySQLConnection;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DaoDocente {
    public boolean saveDocente(BeanDocente docente){
        boolean result=false;
        try(
                Connection connection= MySQLConnection.getConnection();
                PreparedStatement pstm= connection.prepareStatement(
                        "insert into docente (Correo,Nombre, Apellido1, Apellido2,Contrasena) values(?,?,?,?,?);")
                ){
            pstm.setString(1, docente.getEmail());
            pstm.setString(2,docente.getName());
            pstm.setString(3, docente.getApellido1());
            pstm.setString(4, docente.getApellido2());
            pstm.setString(5, docente.getContrasena());
            result=pstm.executeUpdate()==1;

        }catch (Exception e){
            e.printStackTrace();
        }
        return result;

    }
    public List <BeanMateria> listMateriasD(String correo){
        List listMateriasD= new ArrayList<>();
        try(
                Connection connection = MySQLConnection.getConnection();
                PreparedStatement pstm= connection.prepareStatement(
                        "select ID_Materia, Nombre, Estado from docente_has_materia inner join materia where ID=ID_Materia and Correo_Docente=?;"
                )

                ){
            pstm.setString(1,correo);
            ResultSet rs=pstm.executeQuery();
            while (rs.next()){
                BeanMateria materia= new BeanMateria();
                materia.setId(rs.getString("ID_Materia"));
                materia.setName(rs.getString("Nombre"));
                materia.setEstado(rs.getString("Estado"));
                listMateriasD.add(materia);
            }
            rs.close();
            pstm.close();
            connection.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return listMateriasD;
    }
    public List<BeanMateria> listMateriasC(String idCarrera){
        List <BeanMateria> listMateriasC= new ArrayList<>();
        try (
                Connection connection = MySQLConnection.getConnection();
                PreparedStatement pstm= connection.prepareStatement(
                        "select Nombre, ID_materia from materia_carrera inner join materia where ID_materia=ID and ID_carrera=?;"
                )

                ){
            pstm.setString(1,idCarrera);
            ResultSet rs=pstm.executeQuery();
            while (rs.next()){
                BeanMateria materia= new BeanMateria();
                materia.setName(rs.getString("Nombre"));
                materia.setId(rs.getString("ID_materia"));
                listMateriasC.add(materia);
            }
            rs.close();
            pstm.close();
            connection.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return listMateriasC;
    }
}
