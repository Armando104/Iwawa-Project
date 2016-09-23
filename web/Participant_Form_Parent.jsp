<%-- 
    Document   : index
    Created on : Dec 16, 2015, 1:07:40 PM
    Author     : PREFERRED MICROF
--%>

<jsp:useBean id="p" scope="request" class="pack.Participant"/>

<%@page import="java.util.List"%>
<%@page import="pack.*"%>
 
  

<%@page import="java.util.Date"%>
 
<%@page import="java.util.List"%>
<%@page import="pack.*"%>
<%@page import="pack.*"%>
<%
    User u = (User) session.getAttribute("parent");     
    
   
    if (u == null) {
%>
<jsp:forward page="index_1.jsp"/>
<%        }


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>myict</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
        <link href='http://fonts.googleapis.com/css?family=Oswald|Open+Sans' rel='stylesheet' type='text/css'>
            <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
            <script type="text/javascript" src="js/jquery-ui.js"></script>
            <script type="text/javascript" src="js/carouselScript.js"></script>
            <link href="bootstrap.css" rel="stylesheet" type="text/css"/>
 

    </head>
    <body style="background-color: #bcbcbc">

        <div class="clear"></div>
        <!-- end of SOCIAL ICONS -->
        <div class="header">
            <div class="row">
                <div class="logo" style="height: 130px;width: auto;float: left;margin-left: 200px;">
                    <img src="images/Flag-map_of_Rwanda.svg.png" width="200 " height="175" alt="Flag-map_of_Rwanda.svg" style="height: 80px;width:  100px;margin-top: -00px;"/>
                   
                </div>
                <div style="width: auto;float: left;">
                    <center>
                        <h3 style="color: chartreuse">Ministry Of ICT and Youth</h3>
                        <h5 style="color: chartreuse">IWAWA Rehabilitation Center</h5>
                     </center>
                </div>
                <div class="menu" style="width: auto;float: right;margin-left: 100px;">
                    
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <!-- end of MENU WRAPPER -->
        <div class="banner-wrapper">
            <div class="row">

            </div>


        </div>
        <center>




            <div style="width: 970px;height: 470px;background:url(images/banner-bg.jpg) no-repeat center;">
                <div style="width: auto;border-right:  2px dotted #333;height: 470px;float: left">
                    <a href="#"><img src="staff/user.png" width="30" height="30" alt="user"/>                      <p style="color: #9cff00;margin-bottom: -10px;background-color: black"><%=u.getNames()%></p></a>

                    <jsp:include page="Parent_Menu.html"/>
                    <br>
                        <a href="Logout.jsp"><img src="staff/exit.png" width="32" height="32" alt="exit" style="margin-top: 15px;"/> </a>

                </div>
                <div style="width:83%;height: auto;float: right">
                    <center>
                        
                <h3>Fill The Below Form to request Acceptance at Iwawa Center</h3>
           

                ${p.msg}
                <form action="Participant_Processing_1.jsp">
                    <table border="0">


                        <tbody>
                            <tr>
                                <td>Names</td>
                                <td><input style=" border: 2px solid black;" type="text" name="names" value="${p.names}" required=""/></td>
                                <td></td>
                                <td>Gender</td>
                                <td>
                                    <select name="gender">
                                        <option>Male</option>
                                        <option>Female</option>
                                    </select>  
                                </td>
                                <td></td>
                            </tr>
                            <tr>

                            </tr>
                            <tr>
                                <td>Date Of Birth</td>
                                <td><input type="text" name="dob_v" value="${p.dob_v}" required=""/></td>

                                <td></td>
                                <td>N.ID</td>
                                <td><input type="text" name="nid" value="${p.nid}" required=""/></td>

                                <td></td>
                            </tr>
                            <tr>

                            </tr>
                            <tr>
                                <td>Marital Status</td>
                                <td> <select name="marital_status">
                                        <option>Single</option>
                                        <option>Married</option>
                                        <option>Divorced</option>
                                    </select> <td></td>
                                <td>Educational Level</td>
                                <td><select name="education">
                                        <option>None</option>
                                        <option>Primary</option>
                                        <option>O Level</option>
                                        <option>A2</option>
                                        <option>A1</option>
                                        <option>A0</option>
                                        <option>Other</option>
                                    </select> </td>

                                <td></td>
                            </tr>
                            <tr>
                                <td>Father Names</td>
                                <td><input type="text" name="father_names" value="${p.father_names}" required=""/></td>

                                <td></td>
                                <td>Father N.ID</td>
                                <td><input type="text" name="mother_names" value="${p.mother_names}" required=""/></td>

                                <td></td>
                            </tr>
                            <tr>
                                <td>Mother Names</td>
                                <td><input type="text" name="mother_names" value="${p.mother_names}" required=""/></td>

                                <td></td>
                                <td>Mother N.ID</td>
                                <td><input type="text" name="mother_nid" value="${p.mother_nid}" required=""/></td>

                                <td></td>
                            </tr>

                            <tr>
                                <td>Family Address</td>
                                <td><input type="text" name="familly_address" value="${p.familly_address}" required=""/></td>

                                <td></td>
                                <td>Family Tel</td>
                                <td><input type="text" name="family_tel" value="${p.family_tel}" required=""/></td>

                                <td></td>
                            </tr>
                             <tr>
                                <td>Sector</td>
                                <td><input type="text" name="sector" value="${p.sector}" required=""/></td>

                                <td></td>
                                <td>Requested By</td>
                                <td><select name="requested_by">
                                        <option>Parents</option>
                                       </select></td>

                                <td></td>
                            </tr>
                             

                            <tr>
                                <td>Village</td>
                                <td><input type="text" name="village" value="${p.village}" required=""/></td>

                                <td></td>
                                 <td>Cell</td>
                                <td><input type="text" name="cell" value="${p.cell}" required=""/></td>

                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><input type="submit" value="Save" class="btn btn-inverse"/></td>
                                <td></td>
                            </tr>

                        </tbody>
                    </table>

                </form>
</center>
                                </div>
                                </div>
                                </center>


                                <!-- end of BANNER WRAPPER -->

                                <!-- end of BOX WRAPPER -->

                                <div class="footer-wrapper" style="margin-top: -0px;margin-bottom: -10px">
                                    <div class="footer">
                                        <center>
                                            <p> <p style="color: white">www.myict.rw All rights reserved. </p></p></center>
                                    </div>

                                </div>

                                <!----footer-wrapper-------->
                                <!-- end of WRAPPER -->
                                

</body>
<script src="Dyanmic-data-table/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="Dyanmic-data-table/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="Dyanmic-data-table/js/DT_bootstrap.js"></script>
<script src="Dyanmic-data-table/js/dynamic-table.js"></script>
 
 
</html>
