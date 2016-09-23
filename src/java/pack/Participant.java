/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Scanner;

public class Participant {

    private int id = getMaxID(), district_id;
    private String names, names_msg, dob_v_msg, dob_v, msg, tel, gender, requested_by, nid_msg, nid, marital_status, father_names_msg, father_names, mother_names, mother_names_msg, father_nid_msg, father_nid,
            mother_nid, mother_nid_msg, education, familly_address, family_tel, family_tel_msg, sector, cell, village, status, reg_date, acct, op = "submit";
    private Date dob, received_date, leavingdate;
    private boolean valid=true;

    public String getRequested_by() {
        return requested_by;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }

    public String getNames_msg() {
        return names_msg;
    }

    public void setNames_msg(String names_msg) {
        this.names_msg = names_msg;
    }

    public String getDob_v_msg() {
        return dob_v_msg;
    }

    public void setDob_v_msg(String dob_v_msg) {
        this.dob_v_msg = dob_v_msg;
    }

    public String getNid_msg() {
        return nid_msg;
    }

    public void setNid_msg(String nid_msg) {
        this.nid_msg = nid_msg;
    }

    public String getFather_names_msg() {
        return father_names_msg;
    }

    public void setFather_names_msg(String father_names_msg) {
        this.father_names_msg = father_names_msg;
    }

    public String getMother_names_msg() {
        return mother_names_msg;
    }

    public void setMother_names_msg(String mother_names_msg) {
        this.mother_names_msg = mother_names_msg;
    }

    public String getFather_nid_msg() {
        return father_nid_msg;
    }

    public void setFather_nid_msg(String father_nid_msg) {
        this.father_nid_msg = father_nid_msg;
    }

    public String getMother_nid_msg() {
        return mother_nid_msg;
    }

    public void setMother_nid_msg(String mother_nid_msg) {
        this.mother_nid_msg = mother_nid_msg;
    }

    public String getFamily_tel_msg() {
        return family_tel_msg;
    }

    public void setFamily_tel_msg(String family_tel_msg) {
        this.family_tel_msg = family_tel_msg;
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op;
    }

    public void setRequested_by(String requested_by) {
        this.requested_by = requested_by;
    }

    public int getId() {
        return id;
    }

    @Override
    public String toString() {
        return "Participant{" + "id=" + id + ", district_id=" + district_id + ", names=" + names + ", dob_v=" + dob_v + ", msg=" + msg + ", tel=" + tel + ", gender=" + gender + ", requested_by=" + requested_by + ", nid=" + nid + ", marital_status=" + marital_status + ", father_names=" + father_names + ", mother_names=" + mother_names + ", father_nid=" + father_nid + ", mother_nid=" + mother_nid + ", education=" + education + ", familly_address=" + familly_address + ", family_tel=" + family_tel + ", sector=" + sector + ", cell=" + cell + ", village=" + village + ", status=" + status + ", reg_date=" + reg_date + ", acct=" + acct + ", op=" + op + ", dob=" + dob + ", received_date=" + received_date + ", leavingdate=" + leavingdate + '}';
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getDistrict_id() {
        return district_id;
    }

    public void setDistrict_id(int district_id) {
        this.district_id = district_id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public static Participant getParticipant_Nid(String id) {
        Participant pr = null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from participants where nid like '" + id + "'");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                pr = new Participant();
                pr.setId(rs.getInt(1));
                pr.setNames(rs.getString(2));
                pr.setGender(rs.getString(3));
                pr.setDob(rs.getDate(4));
                pr.setNid(rs.getString(5));
                pr.setMarital_status(rs.getString(6));
                pr.setFather_names(rs.getString(7));
                pr.setMother_names(rs.getString(8));
                pr.setFather_nid(rs.getString(9));
                pr.setMother_nid(rs.getString(10));
                pr.setFamilly_address(rs.getString(11));
                pr.setEducation(rs.getString(12));
                pr.setFamily_tel(rs.getString(13));
                pr.setSector(rs.getString(14));
                pr.setCell(rs.getString(15));
                pr.setVillage(rs.getString(16));
                pr.setStatus(rs.getString(17));
                pr.setReg_date(rs.getString(18));
                pr.setDistrict_id(rs.getInt(19));
                pr.setReceived_date(rs.getDate(20));
                pr.setLeavingdate(rs.getDate(21));
                pr.setRequested_by(rs.getString(22));
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;
    }

    public static Participant getParticipant_Names_Parent_ID(String names, String father_id, String idx) {
        Participant pr = null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from participants where names like '" + names + "' and father_nid like '" + father_id + "' or nid=" + idx + "");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                pr = new Participant();

                {
                    pr.setId(rs.getInt(1));
                    pr.setNames(rs.getString(2));
                    pr.setGender(rs.getString(3));
                    pr.setDob(rs.getDate(4));
                    pr.setNid(rs.getString(5));
                    pr.setMarital_status(rs.getString(6));
                    pr.setFather_names(rs.getString(7));
                    pr.setMother_names(rs.getString(8));
                    pr.setFather_nid(rs.getString(9));
                    pr.setMother_nid(rs.getString(10));
                    pr.setFamilly_address(rs.getString(11));
                    pr.setEducation(rs.getString(12));
                    pr.setFamily_tel(rs.getString(13));
                    pr.setSector(rs.getString(14));
                    pr.setCell(rs.getString(15));
                    pr.setVillage(rs.getString(16));
                    pr.setStatus(rs.getString(17));
                    pr.setReg_date(rs.getString(18));
                    pr.setDistrict_id(rs.getInt(19));
                    pr.setReceived_date(rs.getDate(20));
                    pr.setLeavingdate(rs.getDate(21));
                    pr.setRequested_by(rs.getString(22));
                }
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;
    }

    public static Participant getParticipant_From_ID(String id) {
        Participant pr = null;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from participants where Id =" + id + "");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                pr = new Participant();

                {
                    pr.setId(rs.getInt(1));
                    pr.setNames(rs.getString(2));
                    pr.setGender(rs.getString(3));
                    pr.setDob(rs.getDate(4));
                    pr.setNid(rs.getString(5));
                    pr.setMarital_status(rs.getString(6));
                    pr.setFather_names(rs.getString(7));
                    pr.setMother_names(rs.getString(8));
                    pr.setFather_nid(rs.getString(9));
                    pr.setMother_nid(rs.getString(10));
                    pr.setFamilly_address(rs.getString(11));
                    pr.setEducation(rs.getString(12));
                    pr.setFamily_tel(rs.getString(13));
                    pr.setSector(rs.getString(14));
                    pr.setCell(rs.getString(15));
                    pr.setVillage(rs.getString(16));
                    pr.setStatus(rs.getString(17));
                    pr.setReg_date(rs.getString(18));
                    pr.setDistrict_id(rs.getInt(19));
                    pr.setReceived_date(rs.getDate(20));
                    pr.setLeavingdate(rs.getDate(21));
                    pr.setRequested_by(rs.getString(22));
                }
                //l.add(pr);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pr;
    }

    public static List<Participant> getList() {
        List<Participant> l = new ArrayList<Participant>();
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from participants ");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Participant pr = new Participant();

                {
                    pr.setId(rs.getInt(1));
                    pr.setNames(rs.getString(2));
                    pr.setGender(rs.getString(3));
                    pr.setDob(rs.getDate(4));
                    pr.setNid(rs.getString(5));
                    pr.setMarital_status(rs.getString(6));
                    pr.setFather_names(rs.getString(7));
                    pr.setMother_names(rs.getString(8));
                    pr.setFather_nid(rs.getString(9));
                    pr.setMother_nid(rs.getString(10));
                    pr.setFamilly_address(rs.getString(11));
                    pr.setEducation(rs.getString(12));
                    pr.setFamily_tel(rs.getString(13));
                    pr.setSector(rs.getString(14));
                    pr.setCell(rs.getString(15));
                    pr.setVillage(rs.getString(16));
                    pr.setStatus(rs.getString(17));
                    pr.setReg_date(rs.getString(18));
                    pr.setDistrict_id(rs.getInt(19));
                    pr.setReceived_date(rs.getDate(20));
                    pr.setLeavingdate(rs.getDate(21));
                    pr.setRequested_by(rs.getString(22));
                }
                l.add(pr);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return l;
    }

    public boolean update() {
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("update participants set names=?,gender=?,dob=?,nid=?,marital_status=?"
                    + ",father_names=?, mother_names=?,mother_nid=?,family_address=?,ed_level=?,family_tel=?,sector=?,cell=?,"
                    + "village=?  where id=?");
            pst.setInt(15, id);
            pst.setString(1, names);
            pst.setString(2, gender);
            pst.setString(3, dob_v);
            pst.setString(4, nid);
            pst.setString(5, marital_status);
            pst.setString(6, father_names);
            pst.setString(7, mother_names);

            pst.setString(8, mother_nid);
            pst.setString(9, familly_address);
            pst.setString(10, education);
            pst.setString(11, family_tel);
            pst.setString(12, sector);
            pst.setString(13, cell);
            pst.setString(14, village);


            pst.execute();
            con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateFor_Status(String op) {
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("update participants set status=? where id=?");
            pst.setInt(2, id);

            pst.setString(1, op);
            pst.execute();
            System.out.println("ID:" + id + " OP:" + op);
            con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateForGuardLeaving() {
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("update participants set leaving_date=? where id=?");
            pst.setInt(2, id);

            pst.setDate(1, new java.sql.Date(new Date().getTime()));

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
            PreparedStatement pst = con.prepareStatement("insert into participants values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            pst.setInt(1, id);
            pst.setString(2, names);
            pst.setString(3, gender);
            pst.setString(4, dob_v);
            pst.setString(5, nid);
            pst.setString(6, marital_status);
            pst.setString(7, father_names);
            pst.setString(8, mother_names);
            pst.setString(9, father_nid);
            pst.setString(10, mother_nid);
            pst.setString(11, familly_address);
            pst.setString(12, education);
            pst.setString(13, family_tel);
            pst.setString(14, sector);
            pst.setString(15, cell);
            pst.setString(16, village);
            pst.setString(17, status);
            pst.setString(18, null);
            pst.setInt(19, district_id);
            pst.setDate(20, null);
            pst.setDate(21, null);
            pst.setString(22, requested_by);
            pst.execute();
            con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean delete() {
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("delete from participants where id=?");
            pst.setInt(1, id);

            pst.execute();
            con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public String getAcct() {
        return acct;
    }

    public void setAcct(String acct) {
        this.acct = acct;
    }

    public static int get_Count_center(String op, String dis) {
        int id = 0;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select count(Id) from participants where status='" + op + "' ");
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

    public static int get_Count_district(String op, String dis) {
        int id = 0;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select count(Id) from participants where status='" + op + "' and district_id=" + dis + "");
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
        int id = 1000;
        try {
            Connection con = DBClassConnector.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from participants");
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

    public String getNames() {
        return names;
    }

    public void setNames(String names) {
        this.names = names;
         try {
            String p[]={"0","1","2","3","4","5","6","7","8","9"};
            for(int i=0;i<p.length;i++){
                if(names.contains(p[i])){
                valid=false;
                names_msg="Remove Numbers";
                break;
                }
            }
        } catch (Exception ex) {
         
        } 
    }

    public String getDob_v() {
        return dob_v;
    }

    public void setDob_v(String dob_v) {
        this.dob_v = dob_v;
        try {
            Calendar cal1=new GregorianCalendar();
             Calendar cal2=new GregorianCalendar();
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
            Date dx=sdf.parse(dob_v);
            cal2.setTime(dx);
            if(cal1.get(Calendar.YEAR)-cal2.get(Calendar.YEAR)<16){
             valid=false;
             dob_v_msg="Under 16 Years Old are Not Allowed";
            }
            
        } catch (Exception e) {
            valid=false;
            dob_v_msg="Please Use yyyy-MM-dd Date Format";
        }
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getNid() {
        return nid;
    }

    public void setNid(String nid) {
        this.nid = nid;
        try {
            if(nid.length()!=16){
             valid=false;
            nid_msg="A valid N.ID is 16 Digits";
            }
        } catch (Exception ex) {
            valid=false;
            nid_msg="Please Use Only Numbers";
        }
    }

    public String getMarital_status() {
        return marital_status;
    }

    public void setMarital_status(String marital_status) {
        this.marital_status = marital_status;
    }

    public String getFather_names() {
        return father_names;
    }

    public void setFather_names(String father_names) {
        this.father_names = father_names;
        try {
            String p[]={"0","1","2","3","4","5","6","7","8","9"};
            for(int i=0;i<p.length;i++){
                if(father_names.contains(p[i])){
                valid=false;
                father_names_msg="Remove Numbers";
                break;
                }
            }
        } catch (Exception ex) {
         
        } 
    }

    public String getMother_names() {
        return mother_names;
    }

    public void setMother_names(String mother_names) {
        this.mother_names = mother_names;
        try {
            String p[]={"0","1","2","3","4","5","6","7","8","9"};
            for(int i=0;i<p.length;i++){
                if(mother_names.contains(p[i])){
                valid=false;
                mother_names_msg="Remove Numbers";
                break;
                }
            }
        } catch (Exception ex) {
         
        } 
    }

    public String getFather_nid() {
        return father_nid;
    }

    public void setFather_nid(String father_nid) {
        this.father_nid = father_nid;
          try {
            if(father_nid.length()!=16){
             valid=false;
            father_nid_msg="A valid N.ID is 16 Digits";
            }
        } catch (Exception ex) {
            valid=false;
            father_nid_msg="Please Use Only Numbers";
        }
    }

    public String getMother_nid() {
        return mother_nid;
    }

    public void setMother_nid(String mother_nid) {
        this.mother_nid = mother_nid;
         try {
            if(mother_nid.length()!=16){
             valid=false;
            mother_nid_msg="A valid N.ID is 16 Digits";
            }
        } catch (Exception ex) {
            valid=false;
            mother_nid_msg="Please Use Only Numbers";
        }
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getFamilly_address() {
        return familly_address;
    }

    public void setFamilly_address(String familly_address) {
        this.familly_address = familly_address;
    }

    public String getFamily_tel() {
        return family_tel;
    }

    public void setFamily_tel(String family_tel) {
        this.family_tel = family_tel;
       try {
            if(family_tel.length()!=10){
             valid=false;
            family_tel_msg="A valid Telephone is 16 Digits";
            }
        } catch (Exception ex) {
            valid=false;
            family_tel_msg="Please Use Only Numbers";
        } 
    }

    public String getSector() {
        return sector;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

    public String getCell() {
        return cell;
    }

    public void setCell(String cell) {
        this.cell = cell;
    }

    public String getVillage() {
        return village;
    }

    public void setVillage(String village) {
        this.village = village;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getReg_date() {
        return reg_date;
    }

    public void setReg_date(String reg_date) {
        this.reg_date = reg_date;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public Date getReceived_date() {
        return received_date;
    }

    public void setReceived_date(Date received_date) {
        this.received_date = received_date;
    }

    public Date getLeavingdate() {
        return leavingdate;
    }

    public void setLeavingdate(Date leavingdate) {
        this.leavingdate = leavingdate;
    }
}
