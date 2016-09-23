<%-- 
    Document   : index
    Created on : Dec 16, 2015, 1:07:40 PM
    Author     : PREFERRED MICROF
--%>

<%@page import="java.util.List"%>
<%@page import="pack.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="a.css/a.css.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
        <link rel="stylesheet" href="a.css/bootstrap.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
        <link rel="stylesheet" href="a.css/fonts.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
        <jsp:useBean id="p" scope="request" class="pack.Participant"/>
        <jsp:useBean id="pz" scope="request" class="pack.Case"/>

    </head>
    <body style="background-color: #cccccc">
    <center>
        <div id="main_div">
            <div id="header">
                <div id="logo">
                    <img src="a.imgs/toplogo1.jpg" width="608" height="108" alt="toplogo1" style="margin-left: 200px;"/>

                </div>
                <div id="menus">
                    <h3>Welcome Admin</h3>   
                </div>

            </div>
            <div id="top">
                <img src="a.imgs/top.png" width="1360" height="66" alt="top" style="width: 100%"/>

            </div>
            <div id="">
                <jsp:include page="Center_Menus.html"/>
            </div>
            <div id="title_h">

                <p>Registered Participants</p>
                
            </div>
            <div style="width: auto;height: auto;overflow: scroll;">
                <img src="a.imgs/indicator.png" width="704" height="84" alt="indicator" style="margin-bottom: 3px;"/>

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
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int no = 1;
                            String op=request.getParameter("op");
                            List<Participant> l = Participant.getList();
                            for (int i = 0; i < l.size(); i++) {
                                 if (l.get(i).getStatus().equalsIgnoreCase(op)){
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
                            }

                        %>
                    </tbody>
                </table>
 </div>
                <div id="footer">
                    <img src="a.imgs/footer.jpg" width="1345" height="66" alt="footer" style="width: 100%"/>

                </div>
           

    </center>
</body>
<script src="Dyanmic-data-table/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="Dyanmic-data-table/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="Dyanmic-data-table/js/DT_bootstrap.js"></script>
<script src="Dyanmic-data-table/js/dynamic-table.js"></script>
</html>
