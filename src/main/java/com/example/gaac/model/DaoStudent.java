
package com.example.gaac.model;
//import com.example.gaac.model.BeanStuden;
import com.example.gaac.model.Utils.MySQLConnection;
import com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping;
import com.mysql.cj.jdbc.*;
import com.sun.mail.util.BEncoderStream;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DaoStudent {
    public boolean saveAdvisory(String emailTeacher, String emailStudent, String materia){
        boolean result=false;
        try(Connection connection= MySQLConnection.getConnection();
            PreparedStatement pstm= connection.prepareStatement(
                    "insert into sesion_asesoria (Correo_Docente,Correo_Estudiante,Id_materia) values (?,?,?);"
            )
        ){
            pstm.setString(1,emailTeacher);
            pstm.setString(2,emailStudent);
            pstm.setString(3,materia);
            result=pstm.executeUpdate()==1;
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }
    public  List<BeanMateria>listMaterias(String carrera) {
        List<BeanMateria> listMaterias = new ArrayList<>();
        try (
                Connection connection = MySQLConnection.getConnection();
                PreparedStatement pstm = connection.prepareStatement(
                        "select materia.Nombre,ID_materia from materia_carrera inner join materia on ID_materia=materia.id where ID_carrera=?;"
                )
        ) {
            pstm.setString(1, carrera);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                BeanMateria materia = new BeanMateria();
                materia.setId(rs.getString("ID_materia"));
                materia.setName(rs.getString("materia.Nombre"));
                listMaterias.add(materia);
            }
            rs.close();
            pstm.close();
            connection.close();

        } catch (SQLException e) {
            System.out.println("Error de SQL");
        }
        return listMaterias;
    }
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
                    "insert into estudiante (NombreCompleto,Correo,Telefono,Sexo,ID_carrera,contrasena,codigo) values (?,?,?,?,?,?,?);");
        ){
            pstm.setString(1,student.getName());
            pstm.setString(2,student.getEmail());
            pstm.setString(3,student.getTelefono());
            pstm.setString(4,String.valueOf(student.getSexo()));
            pstm.setString(5,student.getCarrera());
            pstm.setString(6,student.getPassword());
            pstm.setString(7,student.getCode());

            result=pstm.executeUpdate()==1;
        }catch (SQLException ex){
            System.out.println("Entró a la excepción");
        }
        return result;
    }
    public boolean updateStudent(BeanStudent student){
        boolean result=false;
        try(Connection connection =MySQLConnection.getConnection();
            PreparedStatement pstm= connection.prepareStatement(
                    "update estudiante set NombreCompleto=?,Telefono=?,Sexo=?,ID_carrera=? where Correo=?;"
            )
        ){
            pstm.setString(1,student.getName());
            pstm.setString(2,student.getTelefono());
            pstm.setString(3,String.valueOf(student.getSexo()));
            pstm.setString(4,student.getCarrera());
            System.out.println(student.getCarrera());
            pstm.setString(5,student.getEmail());
            System.out.println(student.getEmail());
            result=pstm.executeUpdate()==1;
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }
    public String getNameCarrera(String idCarrera){
        String nameCarrera="";
        try(
                Connection connection=MySQLConnection.getConnection();
                PreparedStatement pstm=connection.prepareStatement(
                        "select Nombre from carrera where ID=?;"
                )
        ){
            pstm.setString(1,idCarrera);
            ResultSet rs=pstm.executeQuery();
            while (rs.next()){
                nameCarrera=rs.getString("Nombre");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
                return nameCarrera;
    }
    public BeanStudent getStudent(String email){
        BeanStudent student= new BeanStudent();
        try(Connection connection=MySQLConnection.getConnection();
            PreparedStatement pstm= connection.prepareStatement("select * from Estudiante where Correo=?;");
        ){
            pstm.setString(1, email);
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
    public boolean statusStudent(String email, String estado){
        boolean result=false;
        try(Connection con = MySQLConnection.getConnection();
            PreparedStatement pstm=con.prepareStatement("update estudiante set estado=?,codigo=null where Correo=?;")
        ){
            pstm.setString(1,estado);
            pstm.setString(2,email);
            result=pstm.executeUpdate()==1;
        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }
    public boolean comfirmStudent(String code){
        boolean result=false;
        try(Connection con = MySQLConnection.getConnection();
            PreparedStatement pstm=con.prepareStatement("update estudiante set estado='Activo',codigo=null where codigo=?;");
        ){
            pstm.setString(1,code);
            result=pstm.executeUpdate()==1;
        }catch (SQLException e){
            System.out.println("Error de sql");
        }
        return result;
    }
}
