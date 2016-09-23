/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
 
public class Province {
    private int  province_id;
    private String name,msg;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

   

    public int getProvince_id() {
        return province_id;
    }

    public void setProvince_id(int province_id) {
        this.province_id = province_id;
    }

     

    public static List<Province> getList() {
        List<Province> l = new ArrayList<Province>();
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from provinces");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Province pr = new Province();
                pr.setProvince_id(rs.getInt(1));
                pr.setName(rs.getString(2));
                
                 l.add(pr);
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return l;
    }
    public static  Province getProvince_Name(String id) {
        Province pr =null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from provinces where name='"+id+"'");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                  pr = new Province();
              pr.setProvince_id(rs.getInt(1));
                pr.setName(rs.getString(2));
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;
    }
     public static  Province getProvince_ID(int id) {
        Province pr =null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from provinces where province_id="+id+"");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                  pr = new Province();
             pr.setProvince_id(rs.getInt(1));
                pr.setName(rs.getString(2));
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;
    }
     
    public static int getMaxID() {
        int id = 0;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from provinces");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return id + 1;
    }
     public boolean insert() {
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("insert into provinces values(?,?)");
            pst.setInt(1, getMaxID());
            pst.setString(2, name);
             
            pst.execute();
             con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    
 
}
