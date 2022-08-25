package com.example.gaac.control;


import com.example.gaac.model.BeanLogin;
import com.example.gaac.model.Utils.DaoCuatrimestre;
import com.example.gaac.model.Utils.DaoLogin;

public class ServiceLogin {
    public BeanLogin login(String correo, String password, int role){
        DaoLogin daoLogin= new DaoLogin();
        return daoLogin.login(correo, password, role);
    }
    public String getIDCuatrimestreActivo(){
        DaoLogin daoLogin= new DaoLogin();
        return daoLogin.getIDCuatrimestreActivo();
    }
}
