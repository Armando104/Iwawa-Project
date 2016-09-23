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


public class Participant_Training {
    private int part_training_id,training_id,participant_id;
    private String performance,participant_idv,msg;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
 
    public int getPart_training_id() {
        return part_training_id;
    }

    public void setPart_training_id(int part_training_id) {
        this.part_training_id = part_training_id;
    }

    public int getTraining_id() {
        return training_id;
    }

    public void setTraining_id(int training_id) {
        this.training_id = training_id;
    }

    public int getParticipant_id() {
        return participant_id;
    }

    public void setParticipant_id(int participant_id) {
        this.participant_id = participant_id;
    }

    public String getPerformance() {
        return performance;
    }

    public void setPerformance(String performance) {
        this.performance = performance;
    }

    public String getParticipant_idv() {
        return participant_idv;
    }

    public void setParticipant_idv(String participant_idv) {
        this.participant_idv = participant_idv;
    }
     
    public static List<Participant_Training> getList() {
        List<Participant_Training> l = new ArrayList<Participant_Training>();
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from part_trainings");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Participant_Training pr = new Participant_Training();
                pr.setPart_training_id(rs.getInt(1));
                pr.setTraining_id(rs.getInt(2));
                pr.setPerformance(rs.getString(3));
                pr.setParticipant_id(rs.getInt(4));
                 l.add(pr);
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return l;
    }
     public boolean updateFor_Performance(String performance,String part_id) {
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("update part_trainings set performance=? where part_training_id=?");
            pst.setString(2, part_id);

            pst.setString(1, performance);
            pst.execute();
            
            con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
     public static  Participant_Training getParticipant_Training_ID(String id) {
        Participant_Training pr =null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from part_trainings where part_training_id="+id+"");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                  pr = new Participant_Training();
                  pr.setPart_training_id(rs.getInt(1));
                pr.setTraining_id(rs.getInt(2));
                pr.setPerformance(rs.getString(3));
                 pr.setParticipant_id(rs.getInt(4));
            }
             con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;
    }
      
    
    public static  Participant_Training getParticipant_Training_Name(String id) {
        Participant_Training pr =null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from part_trainings where name='"+id+"'");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                  pr = new Participant_Training();
                  pr.setPart_training_id(rs.getInt(1));
                pr.setTraining_id(rs.getInt(2));
                pr.setPerformance(rs.getString(3));
                 pr.setParticipant_id(rs.getInt(4));
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
            PreparedStatement pst = con.prepareStatement("select * from part_trainings");
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
    
    public boolean update_performance() {
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("update part_trainings set performance=? where part_training_id=?");
            pst.setInt(2,part_training_id);
            pst.setString(1, performance);
           
            pst.execute();
             con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
     public boolean insert() {
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("insert into part_trainings values(?,?,?,?)");
            pst.setInt(1, getMaxID());
            pst.setInt(2, training_id);
            pst.setString(3, "");
            pst.setInt(4,participant_id);
            pst.execute();
             con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

     
 
}
