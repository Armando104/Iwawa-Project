<%@page import="pack.*"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>myct</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
        <link href='http://fonts.googleapis.com/css?family=Oswald|Open+Sans' rel='stylesheet' type='text/css'>
            <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
            <script type="text/javascript" src="js/jquery-ui.js"></script>
            <script type="text/javascript" src="js/carouselScript.js"></script>
            <link href="bootstrap.css" rel="stylesheet" type="text/css"/>
            
             <jsp:useBean id="dd" scope="request" class="pack.User"/>
            
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
                <div class="menu" style="width: auto;float: right;margin-left: 50px;">
                    <ul>
                        <li><a href="index_1.jsp" class="active">Home</a></li>
                           <li><a href="User_Form_2.jsp">Parent Sign Up</a></li>
                     
                        <li><a href="LoginForm.jsp">Login</a></li>
                    </ul>
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




            <div style="width: 970px;height: 420px;background:url(images/banner-bg.jpg) no-repeat center;">
                
                 <div style="width:100%;height: auto;float: right">
                    <center>
               <h3>Below Is The List</h3>
                ${p.msg}
                ${pz.msg}
                <br>
                <table border="1" class="table table-striped" id='sample_1' >
                    <thead>
                        <tr>
                            <th>No</th>
                             <th>ID</th>
                            <th>Names</th>
                            <th>Gender</th>
                            <th>DOB</th>
                            <th>N.ID</th>
                            <th>Marital Status</th>
                             <th>No Of Case(s)</th>
                            <th>Details</th>
                            <th>View</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int no = 1;
                            List<Participant> l = Participant.getList();
                            for (int i = 0; i < l.size(); i++) {
                           
                                if(l.get(i).getStatus().equalsIgnoreCase("graduated")){
                                
                                
                                %>
                                 <tr>
                                <%
                              
                        %>
                       
                        <td style="background-color: khaki"><%=no%></td>
                         <td style="background-color: khaki"><%=l.get(i).getNid()%></td>
                            <td style="background-color: khaki"><%=l.get(i).getNames()%></td>
                            <td style="background-color: khaki"><%=l.get(i).getGender()%></td>
                            <td style="background-color: khaki"><%=l.get(i).getDob()%></td>
                            <td style="background-color: khaki"><%=l.get(i).getNid()%></td>
                            <td style="background-color: khaki"><%=l.get(i).getMarital_status()%></td>
                            <td style="background-color: khaki"><%=Case.getCount_From_ID(l.get(i).getId()+"")  %></td>
                            <td style="background-color: khaki"><a href="Participant_Details_2.jsp?id=<%=l.get(i).getId()%>&color=khaki&st=graduated">View</a></td>
                            <td style="background-color: khaki;color: black"><a target="_blank" href="Personnal_Report_2.jsp?id=<%=l.get(i).getId()%>&color=khaki&st=graduated">Report</a></td>
                           
                        
                        <%
                                   
                                 
                                 
                                
                                
                                
                                  
                                 
                                 
                                  no++;
                                }
                                
                                  %>
                                 </tr>
                                  <%
                            }

                        %>
                    </tbody>
                </table>
                               
                            
          </center>
                </div>
            </div>
        </center>
            
       
        <!-- end of BANNER WRAPPER -->
         
        <!-- end of BOX WRAPPER -->
       
        <div class="footer-wrapper" style="margin-top: -0px;margin-bottom: -10px">
            <div class="footer">
                <center>
                <p> <p style="color: white">www.myict.rw <br>All rights reserved. </p></p></center>
            </div>
             
        </div>
        
        <!----footer-wrapper-------->
        <!-- end of WRAPPER -->
    </body> 
</html>
