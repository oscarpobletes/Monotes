package com.mycompany.monotes;

import java.sql.*; // sql s
import java.sql.Connection; // database connection
import java.sql.DriverManager; // driver
import java.sql.Statement; //instruction execution
public class Database {
    Connection c=null;
    public boolean Connect(){
        boolean resp=true;
        //every database needs a try catch
        try{
            //connection requires driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            //parameters:
            //1: database name
            //2:user
            //3:password
            //localhost:5432 because I have a tunnel in putty 
// the common thing is to have the ip of the server where the base is
            //data and its port for example 189.187.246.19:3306
            c=DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/Monotes",
                    "root","root"
            );
           
        }catch(Exception e){
            System.out.println("Error:"+e.toString());
            resp=false;
        }
        return resp;
    }
    public boolean Disconnect(){
        boolean resp=true;
        try{
            //close all transactions
            c.commit();
            //close connection
            c.close();
        }catch(Exception e){
            resp=false;
        }
        return resp;
    }
    public ResultSet resultset(String sql){
        ResultSet resp=null;
        try{
            Statement s=null;
            c.setAutoCommit(false);
            s=c.createStatement();
            resp=s.executeQuery(sql);
         
        }catch(Exception e){
            System.out.println("Error:"+e.toString());
        }
        return resp;
    }
    public boolean query(String sql){
        boolean resp=false;
        try{
            Statement s=null;
            //use connection
            //Manually update transactions through a commit
            c.setAutoCommit(false);
            s=c.createStatement();
            s.executeLargeUpdate(sql);
            s.close();
            resp=true;
         
        }catch(Exception e){
            System.out.println("Error:"+e.toString());
        }
        return resp;
    }
}