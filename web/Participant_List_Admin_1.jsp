 <jsp:useBean id="p" scope="request" class="pack.Participant"/>
        <jsp:useBean id="pz" scope="request" class="pack.Case"/>
 

 

<%@page import="java.util.List"%>
<%@page import="pack.*"%>
 
  

<%@page import="java.util.Date"%>
 
<%@page import="java.util.List"%>
<%@page import="pack.*"%>
<%@page import="pack.*"%>
<%
    User u = (User) session.getAttribute("admin");     
    
   
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




            <div style="width: 970px;height: 450px;overflow-y: scroll;background:url(images/banner-bg.jpg) no-repeat center;">
                <div style="width: auto;border-right:  2px dotted #333;height: 470px;float: left">
                    <a href="Profile.jsp"><img src="staff/user.png" width="30" height="30" alt="user"/>                      <p style="color: #9cff00;margin-bottom: -10px;background-color: black"><%=u.getNames()%></p></a>

                    <jsp:include page="Admin_Menus.html"/>
                    <br>
                        <a href="Logout.jsp"><img src="staff/exit.png" width="32" height="32" alt="exit" style="margin-top: 15px;"/> </a>

                </div>
                <div style="width:83%;height: auto;float: right">
                    <center>
                        <%
                            if(request.getParameter("op").equalsIgnoreCase("myct")){
                             %>
                             <h3><a target="_blank" href="Report_Pending_List.jsp?op=myct"><%="PENDING REQUESTS LIST" %></a></h3>
                            <%
                            }
                            if(request.getParameter("op").equalsIgnoreCase("graduated")){
                            %>
                            <h3><a target="_blank" href="Report_Pending_List.jsp?op=graduated"><%=request.getParameter("op").toUpperCase()+" REQUESTS LIST" %></a></h3>
                            <%
                            }
                            if(request.getParameter("op").equalsIgnoreCase("rejected")){
                            %>
                            <h3><a target="_blank"  href="Report_Pending_List.jsp?op=rejected"><%=request.getParameter("op").toUpperCase()+" REQUESTS LIST" %></a></h3>
                            <%
                            }
                            if(request.getParameter("op").equalsIgnoreCase("center")){
                            %>
                            <h3><a target="_blank" href="Report_Pending_List.jsp?op=center"><%="ACCEPTED REQUESTS LIST"%></a></h3>
                            <%
                            }
                            %>
                       
                         <h6>Khaki:Graduated - Red:Rejected - Yellow:Pending At District - Green:Pending At Center - Skyblue:Accepted At Center</h6>
                
                ${p.msg}
                ${pz.msg}
                <br>
                    <table border="1" class="table table-striped" id='sample_1' style="width: 1200px">
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
                            <th>Accept</th>
                             <th>Reject</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int no = 1;
                            List<Participant> l = Participant.getList();
                            for (int i = 0; i < l.size(); i++) {
                                if(l.get(i).getStatus().equalsIgnoreCase(request.getParameter("op"))){
                                %>
                                 <tr>
                                <%
                                if(l.get(i).getStatus().equalsIgnoreCase("district")){
                        %>
                       
                        <td style="background-color: yellow"><%=no%></td>
                              <td style="background-color: yellow"><%=l.get(i).getId()%></td>
                            <td style="background-color: yellow"><%=l.get(i).getNames()%></td>
                            <td style="background-color: yellow"><%=l.get(i).getGender()%></td>
                            <td style="background-color: yellow"><%=l.get(i).getDob()%></td>
                            <td style="background-color: yellow"><%=l.get(i).getNid()%></td>
                            <td style="background-color: yellow"><%=l.get(i).getMarital_status()%></td>
                            <td style="background-color: yellow"><%=Case.getCount_From_ID(l.get(i).getId()+"")  %></td>
                            <td style="background-color: yellow"><a href="Participant_Details_Admin.jsp?id=<%=l.get(i).getId()%>&color=yellow&st=district">View</a></td>
                            <td><a href="Option_Status_1.jsp?id=<%=l.get(i).getId()%>&op=center">Send To Center</a></td>
                             <td><a href="Option_Status_1.jsp?id=<%=l.get(i).getId()%>&op=rejected">Reject</a></td>
                            
                        <%
                                   
                                }else{
                                if(l.get(i).getStatus().equalsIgnoreCase("myct")){
                        %>
                       
                            <td style="background-color: green;color: white"><%=no%></td>
                              <td style="background-color: green;color: white"><%=l.get(i).getId()%></td>
                            <td style="background-color: green;color: white"><%=l.get(i).getNames()%></td>
                            <td style="background-color: green;color: white"><%=l.get(i).getGender()%></td>
                            <td style="background-color: green;color: white"><%=l.get(i).getDob()%></td>
                            <td style="background-color: green;color: white"><%=l.get(i).getNid()%></td>
                            <td style="background-color: green;color: white"><%=l.get(i).getMarital_status()%></td>
                            <td style="background-color: green;color: white"><%=Case.getCount_From_ID(l.get(i).getId()+"")  %></td>
                           
                            <td ><a  style="background-color: white;color: green" href="Participant_Details_Admin.jsp?id=<%=l.get(i).getId()%>&color=green&st=myct&fcolor=white">View</a></td>
                           <td><a href="Option_Status_1.jsp?id=<%=l.get(i).getId()%>&op=center">Send To Center</a></td>
                             <td><a href="Option_Status_1.jsp?id=<%=l.get(i).getId()%>&op=rejected">Reject</a></td>
                        
                        <%
                                   
                                }else{
                                
                                 if(l.get(i).getStatus().equalsIgnoreCase("center")){
                        %>
                        <td style="background-color: skyblue;color: black"><%=no%></td>
                              <td style="background-color: skyblue;color: black"><%=l.get(i).getId()%></td>
                            <td style="background-color: skyblue;color: black"><%=l.get(i).getNames()%></td>
                            <td style="background-color: skyblue;color: black"><%=l.get(i).getGender()%></td>
                            <td style="background-color: skyblue;color: black"><%=l.get(i).getDob()%></td>
                            <td style="background-color: skyblue;color: black"><%=l.get(i).getNid()%></td>
                            <td style="background-color: skyblue;color: black"><%=l.get(i).getMarital_status()%></td>
                             <td style="background-color: skyblue;color: black"><%=Case.getCount_From_ID(l.get(i).getId()+"")  %></td>
                           
                             <td style="background-color: skyblue;color: black"><a href="Participant_Details_Admin.jsp?id=<%=l.get(i).getId()%>&color=skyblue&st=center">View</a></td>
                           <td><a href="Option_Status_1.jsp?id=<%=l.get(i).getId()%>&op=center">Send To Center</a></td>
                             <td><a href="Option_Status_1.jsp?id=<%=l.get(i).getId()%>&op=rejected">Reject</a></td>
                       
                        <%
                                   
                                }else{
                                  if(l.get(i).getStatus().equalsIgnoreCase("graduated")){
                        %>
                        
                            <td style="background-color: khaki;color: black"><%=no%></td>
                              <td style="background-color: khaki;color: black"><%=l.get(i).getId()%></td>
                            <td style="background-color: khaki;color: black"><%=l.get(i).getNames()%></td>
                            <td style="background-color: khaki;color: black"><%=l.get(i).getGender()%></td>
                            <td style="background-color: khaki;color: black"><%=l.get(i).getDob()%></td>
                            <td style="background-color: khaki;color: black"><%=l.get(i).getNid()%></td>
                            <td style="background-color: khaki;color: black"><%=l.get(i).getMarital_status()%></td>
                            <td style="background-color: khaki;color: black"><%=Case.getCount_From_ID(l.get(i).getId()+"")  %></td>
                           
                            <td style="background-color: khaki;color: black"><a href="Participant_Details_Admin.jsp?id=<%=l.get(i).getId()%>&color=khaki&st=graduated">View</a></td>
                           <td><a href="Option_Status_1.jsp?id=<%=l.get(i).getId()%>&op=center">Send To Center</a></td>
                             <td><a href="Option_Status_1.jsp?id=<%=l.get(i).getId()%>&op=rejected">Reject</a></td>
                       
                        <%
                                   
                                }else{
                                  %>
                        
                            <td style="background-color: red;color: white"><%=no%></td>
                              <td style="background-color: red;color: white"><%=l.get(i).getId()%></td>
                            <td style="background-color: red;color: white"><%=l.get(i).getNames()%></td>
                            <td style="background-color: red;color: white"><%=l.get(i).getGender()%></td>
                            <td style="background-color: red;color: white"><%=l.get(i).getDob()%></td>
                            <td style="background-color: red;color: white"><%=l.get(i).getNid()%></td>
                            <td style="background-color: red;color: white"><%=l.get(i).getMarital_status()%></td>
                            <td style="background-color: red;color: white"><%=Case.getCount_From_ID(l.get(i).getId()+"")  %></td>
                           
                            <td style="background-color: red;color: white"><a href="Participant_Details_Admin.jsp?id=<%=l.get(i).getId()%>&color=khaki&st=graduated">View</a></td>
                           <td><a href="Option_Status_1.jsp?id=<%=l.get(i).getId()%>&op=center">Send To Center</a></td>
                             <td><a href="Option_Status_1.jsp?id=<%=l.get(i).getId()%>&op=rejected">Reject</a></td>
                       
                        <%
                                  }
                                 
                                 }
                                }
                                
                                }
                                  
                                 
                                 
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
