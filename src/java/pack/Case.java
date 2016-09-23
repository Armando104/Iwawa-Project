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

 
public class Case {
    private int case_id,Id;
    private String description,msg;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
    
    public int getCase_id() {
        return case_id;
    }

    public void setCase_id(int case_id) {
        this.case_id = case_id;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    

    

  
    public static List<Case> getList() {
        List<Case> l = new ArrayList<Case>();
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from cases");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Case pr = new Case();
                pr.setCase_id(rs.getInt(1));
                pr.setDescription(rs.getString(2));
                pr.setId(rs.getInt(3));
                
                 l.add(pr);
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return l;
    }
    public static  Case getCase_Name(String id) {
        Case pr =null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from cases where description='"+id+"'");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                  pr = new Case();
               pr.setCase_id(rs.getInt(1));
                pr.setDescription(rs.getString(2));
                pr.setId(rs.getInt(3));
                
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;
    }
     public static  Case getCase_ID(int id) {
        Case pr =null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from cases where Id="+id+"");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                  pr = new Case();
            pr.setCase_id(rs.getInt(1));
                pr.setDescription(rs.getString(2));
                pr.setId(rs.getInt(3));
                
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;
    }
     
      
    public static int getCount_From_ID(String iid) {
        int id = 0;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select count(case_id) from cases where Id="+iid+"");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return id;
    }
    public static int getMaxID() {
        int id = 0;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from cases");
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
            PreparedStatement pst = con.prepareStatement("insert into cases values(?,?,?)");
            pst.setInt(1, getMaxID());
            pst.setString(2, description);
            pst.setInt(3, Id);
            pst.execute();
             con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
 
}
