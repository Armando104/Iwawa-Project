
<%@page import="java.util.List"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.*"%>
<%@page import="pack.*"%>
  <%@page import="pack.*"%>
<%
    User u = (User) session.getAttribute("admin");     
    
   
    if (u == null) {
%>
<jsp:forward page="index_1.jsp"/>
<%        }


%>
<html>
    <head>
        <title></title>
        <link href="styless/fonts.css" rel="stylesheet" />
        <link href="styless/bootstrap.css" rel="stylesheet" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>

        <script language="javascript" type="text/javascript">
            function printDiv(divID) {
                //Get the HTML of div
                var divElements = document.getElementById(divID).innerHTML;
                //Get the HTML of whole page
                var oldPage = document.body.innerHTML;

                //Reset the page's HTML with div's HTML only
                document.body.innerHTML =
                        "<html><head><title></title></head><body><center>" +
                        divElements + "</center></body>";

                //Print Page
                window.print();

                //Restore orignal HTML
                document.body.innerHTML = oldPage;


            }
        </script>

    </head>

    <body>
    <center>
        <div id="s">
            <%
                String date = new GregorianCalendar().get(Calendar.DAY_OF_MONTH) + "/" + (new GregorianCalendar().get(Calendar.MONDAY) + 1) + "/" + (new GregorianCalendar().get(Calendar.YEAR));

            %>
            <div id="ds" style="width: 95%;height: auto;background-color: white;color: black;border: 0px #000 solid">

                <div style="width: 100%;height: auto;margin-top: 0px;border:  3px black solid;border-radius: 0px;background-color: whitesmoke">
                    <div style="width: 100%;height: auto;border-bottom:   0px black solid;background-color: white">
                        <center>
                            <img src="a.imgs/toplogo.png" width="107" height="124" alt="toplogo"/>
                            <p>Ministry Of Youth & ICT</p>
                            <p>Kigali-Rwanda</p>
                        </center>
                    </div>



                    <div style="width: 100%;height: auto;border-bottom:   0px black solid;background-color: white;">
                            <center>    
                            <center>
                        <%
                            if(request.getParameter("op").equalsIgnoreCase("myct")){
                             %>
                             <h3><%="PENDING REQUESTS LIST" %></h3>
                            <%
                            }
                            if(request.getParameter("op").equalsIgnoreCase("graduated")){
                            %>
                             <h3><%=request.getParameter("op").toUpperCase()+" REQUESTS LIST" %></h3>
                            <%
                            }
                            if(request.getParameter("op").equalsIgnoreCase("rejected")){
                            %>
                             <h3><%=request.getParameter("op").toUpperCase()+" REQUESTS LIST" %></h3>
                            <%
                            }
                            if(request.getParameter("op").equalsIgnoreCase("center")){
                            %>
                             <h3><%="ACCEPTED REQUESTS LIST" %></h3>
                            <%
                            }
                            %>
                       
                         <h6>Khaki:Graduated - Red:Rejected - Yellow:Pending At District - Green:Pending At MYICT - Skyblue:Accepted At Center</h6>
                
                ${p.msg}
                ${pz.msg}
                <br>
                    <table border="1" class="" id='sample_1' style="width: 100%">
                    <thead>
                        <tr>
                            <th>No</th>
                             <th>ID</th>
                            <th>Names</th>
                            <th>Gender</th>
                            <th>DOB</th>
                            <th>N.ID</th>
                            <th>Marital Status</th>
                             <th>Father</th>
                            <th>Mother</th>
                            <th>Father NID</th>
                             <th>Mother NID</th>
                               <th>Address</th>
                                 <th>Education</th>
                                 <th>Tel</th>
                                <th>Sector</th> 
                                <th>Cell</th> 
                                <th>Village</th>
                                
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
                             <td style="background-color: yellow"><%=l.get(i).getFather_names()%></td>
                             <td style="background-color: yellow"><%=l.get(i).getMother_names()%></td>
                             <td style="background-color: yellow"><%=l.get(i).getFather_nid()%></td>
                             <td style="background-color: yellow"><%=l.get(i).getMother_nid()%></td>
                             <td style="background-color: yellow"><%=l.get(i).getFamilly_address()%></td>
                             <td style="background-color: yellow"><%=l.get(i).getEducation()%></td>
                             <td style="background-color: yellow"><%=l.get(i).getFamily_tel()%></td>
                             <td style="background-color: yellow"><%=l.get(i).getSector()%></td>
                             <td style="background-color: yellow"><%=l.get(i).getCell()%></td>
                             <td style="background-color: yellow"><%=l.get(i).getVillage()%></td>
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
                            <td style="background-color: green;color: white"><%=l.get(i).getFather_names()%></td>
                             <td style="background-color: green;color: white"><%=l.get(i).getMother_names()%></td>
                             <td style="background-color: green;color: white"><%=l.get(i).getFather_nid()%></td>
                             <td style="background-color: green;color: white"><%=l.get(i).getMother_nid()%></td>
                             <td style="background-color: green;color: white"><%=l.get(i).getFamilly_address()%></td>
                             <td style="background-color: green;color: white"><%=l.get(i).getEducation()%></td>
                             <td style="background-color: green;color: white"><%=l.get(i).getFamily_tel()%></td>
                             <td style="background-color: green;color: white"><%=l.get(i).getSector()%></td>
                             <td style="background-color: green;color: white"><%=l.get(i).getCell()%></td>
                             <td style="background-color: green;color: white"><%=l.get(i).getVillage()%></td>
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
                           <td style="background-color: skyblue;color: black"><%=l.get(i).getFather_names()%></td>
                             <td style="background-color: skyblue;color: black"><%=l.get(i).getMother_names()%></td>
                             <td style="background-color: skyblue;color: black"><%=l.get(i).getFather_nid()%></td>
                             <td style="background-color: skyblue;color: black"><%=l.get(i).getMother_nid()%></td>
                             <td style="background-color: skyblue;color: black"><%=l.get(i).getFamilly_address()%></td>
                             <td style="background-color: skyblue;color: black"><%=l.get(i).getEducation()%></td>
                             <td style="background-color: skyblue"><%=l.get(i).getFamily_tel()%></td>
                             <td style="background-color: skyblue"><%=l.get(i).getSector()%></td>
                             <td style="background-color: skyblue"><%=l.get(i).getCell()%></td>
                             <td style="background-color: skyblue"><%=l.get(i).getVillage()%></td>
                        
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
                            <td style="background-color: khaki;color: black"><%=l.get(i).getFather_names()%></td>
                             <td style="background-color: khaki;color: black"><%=l.get(i).getMother_names()%></td>
                             <td style="background-color: khaki;color: black"><%=l.get(i).getFather_nid()%></td>
                             <td style="background-color: khaki;color: black"><%=l.get(i).getMother_nid()%></td>
                             <td style="background-color: khaki;color: black"><%=l.get(i).getFamilly_address()%></td>
                             <td style="background-color: khaki;color: black"><%=l.get(i).getEducation()%></td>
                             <td style="background-color: khaki;color: black"><%=l.get(i).getFamily_tel()%></td>
                             <td style="background-color: khaki;color: black"><%=l.get(i).getSector()%></td>
                             <td style="background-color: khaki;color: black"><%=l.get(i).getCell()%></td>
                             <td style="background-color: khaki;color: black"><%=l.get(i).getVillage()%></td>
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
                         <td style="background-color: red;color: white"><%=l.get(i).getFather_names()%></td>
                             <td style="background-color: red;color: white"><%=l.get(i).getMother_names()%></td>
                             <td style="background-color: red;color: white"><%=l.get(i).getFather_nid()%></td>
                             <td style="background-color: red;color: white"><%=l.get(i).getMother_nid()%></td>
                             <td style="background-color: red;color: white"><%=l.get(i).getFamilly_address()%></td>
                             <td style="background-color: red;color: white"><%=l.get(i).getEducation()%></td>
                             <td style="background-color: red;color: white"><%=l.get(i).getFamily_tel()%></td>
                             <td style="background-color: red;color: white"><%=l.get(i).getSector()%></td>
                             <td style="background-color: red;color: white"><%=l.get(i).getCell()%></td>
                             <td style="background-color: red;color: white"><%=l.get(i).getVillage()%></td>
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

                            
                            <h5 style="margin-right: -830px"><%="Printed On " + date%></h5>
                            <br> 
                            </div>

                            </div>
                            </div>
                            </div>
                            <br>
                            <table border="0">

                                <tbody>
                                    <tr>

                                        <td><input type="button" value="Print The Above Report" onclick="javascript:printDiv('s')" class="btn btn-inverse" style="width: 1003px;"/></td>
                                    </tr>
                                </tbody>
                            </table>   
                        </center>
                        </body>
                        </html>
