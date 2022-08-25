package com.example.gaac.model.Utils;

import com.example.gaac.model.Cuatrimestre;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class DaoCuatrimestre {
   public boolean contador(String sexo, String id_cuatrimestre, boolean found){
       System.out.println(sexo);
        boolean result= false;
        int contador;
        try(Connection connection = MySQLConnection.getConnection();
        PreparedStatement pstm= connection.prepareStatement(
                "select * from cuatrimestre where ID=?;"
        )
        ){
            int mujeres;
            int hombres;
            int otros;
            int tHombres;
            int tMujeres;
            int tOtros;
            pstm.setString(1,id_cuatrimestre);
            ResultSet rs= pstm.executeQuery();

            while (rs.next()){
                tHombres=rs.getInt("sesionesHTotal");
                tMujeres=rs.getInt("sesionesMTotal");
                tOtros=rs.getInt("sesionesOTotal");
                hombres=rs.getInt("Hombres_atendidos");
                mujeres=rs.getInt("Mujeres_atendidas");
                otros=rs.getInt("Otros_atendidos");
                switch (sexo){
                    case "H":
                        System.out.println("hombres");
                        tHombres=tHombres+1;
                        if(found==false){
                            hombres=hombres+1;
                        }
                        try(Connection connection1= MySQLConnection.getConnection();
                        PreparedStatement pstm1=connection1.prepareStatement("update cuatrimestre set sesionesHTotal=?,  Hombres_atendidos=? where ID=?;")){
                            pstm1.setInt(1,tHombres);
                            pstm1.setInt(2,hombres);
                            pstm1.setString(3,id_cuatrimestre);
                            boolean exito= pstm1.executeUpdate()==1;
                        }catch (Exception e){
                            e.printStackTrace();
                        }
                        break;
                    case "M":
                        tMujeres=tMujeres+1;
                        if(found==false){
                            mujeres=mujeres+1;
                        }
                        try(Connection connection1= MySQLConnection.getConnection();
                            PreparedStatement pstm1=connection1.prepareStatement("update cuatrimestre set sesionesMTotal=?, Mujeres_atendidas=? where ID=?;")){
                            pstm1.setInt(1,tMujeres);
                            pstm1.setInt(2,mujeres);
                            pstm1.setString(3,id_cuatrimestre);
                            boolean exito= pstm1.executeUpdate()==1;
                        }catch (Exception e){
                            e.printStackTrace();
                        }
                        break;
                    case "O":
                        tOtros=tOtros+1;
                        if(found==false){
                            otros=otros+1;
                        }
                        try(Connection connection1= MySQLConnection.getConnection();
                            PreparedStatement pstm1=connection1.prepareStatement("update cuatrimestre set sesionesOTotal=?, Otros_atendidos=? where ID=?;")){
                            pstm1.setInt(1,tOtros);
                            pstm1.setInt(2,otros);
                            pstm1.setString(3,id_cuatrimestre);
                            boolean exito= pstm1.executeUpdate()==1;
                        }catch (Exception e){
                            e.printStackTrace();
                        }
                        break;
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return  result;
    }
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
                PreparedStatement pstm = connection.prepareStatement("insert into cuatrimestre (ID,Periodo, yeear) values (?,?);");
                ){
            pstm.setString(3,cuatrimestre.getIdC());
            pstm.setString(2,cuatrimestre.getPeriodo());
            pstm.setInt(3,cuatrimestre.getYear());
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
