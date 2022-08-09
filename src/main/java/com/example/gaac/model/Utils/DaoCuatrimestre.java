package com.example.gaac.model.Utils;

import com.example.gaac.model.Cuatrimestre;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class DaoCuatrimestre {
    public List <Cuatrimestre> listCuatrimestre(){
        List<Cuatrimestre> listCuatrimestres = new ArrayList<>();
        try{
            Connection connection = MySQLConnection.getConnection();
            Statement statement= connection.createStatement();
            ResultSet rs=statement.executeQuery
                    ("select * from cuatrimestre;");
            while (rs.next()){
                Cuatrimestre cuatrimestre= new Cuatrimestre();
                cuatrimestre.setIdC(rs.getString("ID"));
                cuatrimestre.setPeriodo(rs.getString("Periodo"));
                cuatrimestre.setEstado(rs.getString("Estado"));
                cuatrimestre.setYear(rs.getInt("yeear"));
                cuatrimestre.setMujeres(rs.getInt("Mujeres_atendidas"));
                cuatrimestre.setHombres(rs.getInt("Hombres_atendidos"));
                cuatrimestre.setOtros(rs.getInt("Otros_atendidos"));
                listCuatrimestres.add(cuatrimestre);
            }
            rs.close();
            statement.close();
            connection.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return listCuatrimestres;
    }
    public boolean newCuatrimestre(Cuatrimestre cuatrimestre){
        boolean result=false;
        try(
                Connection connection=MySQLConnection.getConnection();
                PreparedStatement pstm = connection.prepareStatement("insert into cuatrimestre (Periodo, yeear) values (?,?);");
                ){
            pstm.setString(1,cuatrimestre.getPeriodo());
            pstm.setInt(2,cuatrimestre.getYear());
            result=pstm.executeUpdate()==1;
        }catch (Exception e){
            e.printStackTrace();
        }

        return result;
    }
    public boolean statusCuatrimestre(String id, String estado){
        boolean result=false;
        try(
                Connection connection= MySQLConnection.getConnection();
                PreparedStatement pstm= connection.prepareStatement("update cuatrimestre set Estado=? where ID=?;")
                ){
            pstm.setString(1,estado);
            pstm.setString(2,id);
            result=pstm.executeUpdate()==1;
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }
}
