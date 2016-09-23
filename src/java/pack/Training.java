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

 
public class Training {
    private int training_id,Id,year;
    private String title,reward,msg;

    public String getReward() {
        return reward;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setReward(String reward) {
        this.reward = reward;
    }

    
    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public int getTraining_id() {
        return training_id;
    }

    public void setTraining_id(int training_id) {
        this.training_id = training_id;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    

  
    public static List<Training> getList() {
        List<Training> l = new ArrayList<Training>();
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from training");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Training pr = new Training();
                pr.setTraining_id(rs.getInt(1));
                pr.setTitle(rs.getString(2));
                pr.setReward(rs.getString(3));
                pr.setYear(rs.getInt(4));
                
                 l.add(pr);
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return l;
    }
    public static  Training getCase_Name(String id) {
        Training pr =null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from training where title='"+id+"'");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                  pr = new Training();
                pr.setTraining_id(rs.getInt(1));
                pr.setTitle(rs.getString(2));
                pr.setReward(rs.getString(3));
                pr.setYear(rs.getInt(3));
                
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;
    }
     public static  Training getCase_ID(int id) {
        Training pr =null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from training where training_id="+id+"");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                  pr = new Training();
                 pr.setTraining_id(rs.getInt(1));
                pr.setTitle(rs.getString(2));
                pr.setReward(rs.getString(3));
                pr.setYear(rs.getInt(4));
                
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
            PreparedStatement pst = con.prepareStatement("select * from training");
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
            PreparedStatement pst = con.prepareStatement("insert into training values(?,?,?,?)");
            pst.setInt(1, getMaxID());
            pst.setString(2, title);
            pst.setString(3, reward);
            pst.setInt(4, year);
            pst.execute();
             con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
 
}
