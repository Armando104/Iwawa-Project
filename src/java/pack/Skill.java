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

/**
 *
 * @author The Brain Key
 */
public class Skill {
    private int skill_id,Id;
    private String description,msg;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getSkill_id() {
        return skill_id;
    }

    public void setSkill_id(int skill_id) {
        this.skill_id = skill_id;
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

    

    public static List<Skill> getList() {
        List<Skill> l = new ArrayList<Skill>();
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from skills");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Skill pr = new Skill();
                pr.setSkill_id(rs.getInt(1));
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
    public static  Skill getSkill_Id(String id) {
        Skill pr =null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from skills where skill_id="+id+"");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                  pr = new Skill();
                  pr.setSkill_id(rs.getInt(1));
                  pr.setDescription(rs.getString(2));
                   pr.setId(rs.getInt(3));
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
            PreparedStatement pst = con.prepareStatement("select * from skills");
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
            PreparedStatement pst = con.prepareStatement("insert into skills values(?,?,?)");
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
