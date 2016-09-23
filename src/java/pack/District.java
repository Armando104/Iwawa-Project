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


public class District {
    private int district,province_id;
    private String name,province_idv,msg,op="Submit";

    public int getDistrict() {
        return district;
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setDistrict(int district) {
        this.district = district;
    }

    public int getProvince_id() {
        return province_id;
    }

    public void setProvince_id(int province_id) {
        this.province_id = province_id;
    }

    public String getProvince_idv() {
        return province_idv;
    }

    public void setProvince_idv(String province_idv) {
        this.province_idv = province_idv;
    }

    public static List<District> getList() {
        List<District> l = new ArrayList<District>();
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from districts");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                District pr = new District();
                pr.setDistrict(rs.getInt(1));
                pr.setName(rs.getString(2));
                pr.setProvince_id(rs.getInt(3));
                
                 l.add(pr);
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return l;
    }
    public static  District getDistrict_Name(String id) {
        District pr =null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from districts where name='"+id+"'");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                  pr = new District();
              pr.setDistrict(rs.getInt(1));
                pr.setName(rs.getString(2));
                pr.setProvince_id(rs.getInt(3));
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;
    }
     public static  District getDistrict_Distrinct_ID(int id) {
        District pr =null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from districts where district_id="+id+"");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                pr = new District();
                pr.setDistrict(rs.getInt(1));
                pr.setName(rs.getString(2));
                pr.setProvince_id(rs.getInt(3));
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;
    }
      public boolean delete_district() {
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("delete from districts where district_id=?");
            pst.setInt(1, district);
            
            {
                pst.execute();
            }

            pst.execute();
            return true;
        } catch (Exception e) {
            System.out.println(">>>>Error Hint>> " + e);
            e.printStackTrace();
            return false;
        }
    }
  public boolean update_district() {
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("update districts set name=?  where district_id=?");
            pst.setInt(2, district);
            pst.setString(1, name);
           
            {
                pst.execute();
            }

            pst.execute();
            return true;
        } catch (Exception e) {
            System.out.println(">>>>Error Hint>> " + e);
            e.printStackTrace();
            return false;
        }
    }
    public static int getMaxID() {
        int id = 0;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from districts");
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
            PreparedStatement pst = con.prepareStatement("insert into districts values(?,?,?)");
            pst.setInt(1, getMaxID());
            pst.setString(2, name);
            pst.setInt(3, province_id);
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
