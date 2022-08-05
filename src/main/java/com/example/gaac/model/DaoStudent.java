
package com.example.gaac.model;
//import com.example.gaac.model.BeanStuden;
import com.example.gaac.model.Utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DaoStudent {

    public List<BeanStudent>listStudents(){
        List<BeanStudent>listStudents = new ArrayList<>();
        try{
            Connection connection = MySQLConnection.getConnection();
            Statement statement= connection.createStatement();
            ResultSet rs=statement.executeQuery
                    ("select Correo,Matricula,NombreCompleto,Telefono,Sexo,ID_carrera,ID_cuatrimestre,estado from estudiante");
            while (rs.next()){
                BeanStudent student = new BeanStudent();
                student.setEmail(rs.getString("Correo"));
                student.setMatricula(rs.getString("Matricula"));
                student.setName(rs.getString("NombreCompleto"));
                student.setTelefono(rs.getString("Telefono"));
                student.setSexo(rs.getString("Sexo").charAt(0));
                student.setCarrera(rs.getString("ID_carrera"));
                student.setCuatrimestre(rs.getString("ID_cuatrimestre"));
                student.setEstado(rs.getString("estado"));
                listStudents.add(student);
            }
            rs.close();
            statement.close();
            connection.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return listStudents;
    }
    public boolean newStudent(BeanStudent student){
        boolean result=false;
        try(Connection con = MySQLConnection.getConnection();
            PreparedStatement pstm=con.prepareStatement(
                    "insert into estudiante (NombreCompleto,Correo,Telefono,Sexo,ID_carrera,contrasena) values (?,?,?,?,?,?);");
        ){
            pstm.setString(1,student.getName());
            pstm.setString(2,student.getEmail());
            pstm.setString(3,student.getTelefono());
            pstm.setString(4,String.valueOf(student.getSexo()));
            pstm.setString(5,student.getCarrera());
            pstm.setString(6,student.getPassword());

            result=pstm.executeUpdate()==1;
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }
    public BeanStudent getStudent(String matricula){
        BeanStudent student= new BeanStudent();
        try(Connection connection=MySQLConnection.getConnection();
            PreparedStatement pstm= connection.prepareStatement("select * from Estudiante where Matricula=?;");
        ){
            pstm.setString(1, matricula);
            ResultSet rs=pstm.executeQuery();
            while (rs.next()){
                student.setEmail(rs.getString("Correo"));
                student.setMatricula(rs.getString("Matricula"));
                student.setName(rs.getString("NombreCompleto"));
                student.setTelefono(rs.getString("Telefono"));
                student.setSexo(rs.getString("Sexo").charAt(0));
                student.setCarrera(rs.getString("ID_carrera"));
                student.setCuatrimestre(rs.getString("ID_cuatrimestre"));
                student.setEstado(rs.getString("estado"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return student;
    }
    public boolean statusStudent(String matricula, String estado){
        boolean result=false;
        try(Connection con = MySQLConnection.getConnection();
            PreparedStatement pstm=con.prepareStatement("update estudiante set estado=? where Matricula=?;");
        ){
            pstm.setString(1,estado);
            pstm.setString(2,matricula);
            result=pstm.executeUpdate()==1;
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }
}
