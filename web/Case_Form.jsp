 <jsp:useBean id="p" scope="request" class="pack.Case"/>
        <jsp:useBean id="pz" scope="request" class="pack.Case"/>
 

 

<%@page import="java.util.List"%>
<%@page import="pack.*"%>
 
  

<%@page import="java.util.Date"%>
 
<%@page import="java.util.List"%>
<%@page import="pack.*"%>
<%@page import="pack.*"%>
<%
    User u = (User) session.getAttribute("district");     
    
   
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




            <div style="width: 970px;height: 450px;background:url(images/banner-bg.jpg) no-repeat center;">
                <div style="width: auto;border-right:  2px dotted #333;height: 470px;float: left">
                    <a href="Profile.jsp"><img src="staff/user.png" width="30" height="30" alt="user"/>                      <p style="color: #9cff00;margin-bottom: -10px;background-color: black"><%=u.getNames()%></p></a>

                    <jsp:include page="Center_Menus_1.html"/>
                    <br>
                        <a href="Logout.jsp"><img src="staff/exit.png" width="32" height="32" alt="exit" style="margin-top: 15px;"/> </a>

                </div>
                <div style="width:83%;height: 450px;float: right;overflow-y: scroll;">
                    <center>
                        

                <h3>

                <p>New Case Recording Form</p>
             
               
                ${p.msg}
                <form action="Case_Processing.jsp">
                    <table border="0">


                        <tbody>
                            <tr>
                                <td>
                                    ID
                                </td>
                                
                                <td>
                                     <%
                                        String id = request.getParameter("id");
                                        Participant ppp=Participant.getParticipant_From_ID(id);
                                    %>
                                    <input type="text" name="" value="<%=id %>" readonly="readonly" />
                                    
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                  Names
                                </td>
                                
                                <td>
                                     
                                    <input type="text" name="" value="<%=ppp.getNames() %>" readonly="readonly" />
                                    
                                </td>
                                
                            </tr>
                            <tr>
                                <td>Case Description</td>

                                <td><textarea name="description" rows="4" cols="75" style="width: 500px;">
                                    </textarea></td>
                                   
                                <td><input type="hidden" name="id" value="<%=id%>" /></td>
                            </tr>
                            
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Save" class="btn btn-inverse"/></td>
                                <td></td>
                            </tr>

                        </tbody>
                    </table>

                </form>
                <hr style="border: 1px solid black"/>
                <p>Recorded Cases Of <%=" "+ppp.getNames() %></p>
                <table border="1" class="table table-bordered" id='sample_1'>
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Description</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int no = 1;
                            List<Case> l = Case.getList();;
                            for (int i = 0; i < l.size(); i++) {
                                if(l.get(i).getId()==ppp.getId()){
                        %>
                        <tr>
                            <td><%=no%></td>
                            <td><%=l.get(i).getDescription()%></td>
                           
                            <td></td>

                        </tr>
                        <%
                                no++;
                                }
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
