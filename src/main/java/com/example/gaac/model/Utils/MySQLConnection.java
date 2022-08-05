package com.example.gaac.model.Utils;

import java.sql.Connection;
import java.sql.DriverManager;
public class MySQLConnection {
    public static Connection getConnection(){
        try{
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/Integradora","root","root");
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
    public static void main (String args[]){
        Connection conexion= MySQLConnection.getConnection();
        if(conexion!= null) {
            System.out.println("Conectado");
        }else{
            System.out.println("No conectado");
        }
    }

}
