<%@page import="pack.*"%>
<%@page import="java.util.List"%>
<%@page import="pack.*"%>
<%
    User u = (User) session.getAttribute("admin");      
    
    if (u == null) 
      {
%>
<jsp:forward page="index.jsp"/>
<%        }


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>rdb</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
        <link href='http://fonts.googleapis.com/css?family=Oswald|Open+Sans' rel='stylesheet' type='text/css'>
            <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
            <script type="text/javascript" src="js/jquery-ui.js"></script>
            <script type="text/javascript" src="js/carouselScript.js"></script>
            <link href="bootstrap.css" rel="stylesheet" type="text/css"/>
            <link href="css/carousel.css" rel="stylesheet" type="text/css"/>



    </head>
    <body style="background-color: #bcbcbc">

        <div class="clear"></div>
        <!-- end of SOCIAL ICONS -->
        <div class="header">
            <div class="row">
                <div class="logo">
                    <img src="images/logo_left2.png" width="490" height="106" alt="logo_left2" style="margin-top: -25px;margin-left: 210px;"/>

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




            <div style="width: 970px;overflow-y: scroll;height: 500px;background:url(images/banner-bg.jpg) no-repeat center;box-shadow: rgba(0, 0, 0,  25) 0px 0px 20px;border-radius: 0px;">
                <div style="width: 12.5%;border-right:  2px dotted #333;height: 500px;float: left">

                    <a href="Profile.jsp"><img src="staff/user.png" width="30" height="30" alt="user"/>                      <p style="color: #9cff00;margin-bottom: -10px;background-color: black"><%=u.getNames()%></p></a>
                        <jsp:include page="Admin_Menus.jsp"/>
                    <br>
                        <a href="Logout.jsp"><img src="staff/exit.png" width="32" height="32" alt="exit" style="margin-top: 15px;"/> </a>
                
                </div>
                <div style="width:83%;height: auto;float: right">
                    <center>

                        <h3 style="color: white"><a target="_blank" href="Staff_Report.jsp">All Registered Staffs</a></h3>
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
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int no = 1;
                            List<Participant> l = Participant.getList();
                            for (int i = 0; i < l.size(); i++) {
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
                            <td style="background-color: yellow"><a href="Participant_Details.jsp?id=<%=l.get(i).getId()%>&color=yellow&st=district">View</a></td>
                           
                        
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
                           
                            <td ><a  style="background-color: white;color: green" href="Participant_Details.jsp?id=<%=l.get(i).getId()%>&color=green&st=myct&fcolor=white">View</a></td>
                           
                        
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
                           
                            <td style="background-color: skyblue;color: black"><a href="Participant_Details.jsp?id=<%=l.get(i).getId()%>&color=skyblue&st=center">View</a></td>
                           
                       
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
                           
                            <td style="background-color: khaki;color: black"><a href="Participant_Details.jsp?id=<%=l.get(i).getId()%>&color=khaki&st=graduated">View</a></td>
                           
                       
                        <%
                                   
                                }
                                 
                                 }
                                }
                                
                                }
                                  
                                 
                                 
                                  no++;
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
            <!--
            <div style="width: 970px;height:50px;color:#1c263c;border-top: 1px solid #000;background:url(images/banner-bg.jpg) no-repeat center;">
                <center>
                    <h1 style="color:#1c263c">ONLINE RDB STAFF FORUM</h1>
                    <br>
                    </center>
            </div>
            -->
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
