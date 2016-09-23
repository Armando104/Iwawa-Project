
<%@page import="java.util.List"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.*"%>
<%@page import="pack.*"%>
<%
    User u = (User) session.getAttribute("admin");
    if (u == null) {
%>
<jsp:forward page="Staff_Login.jsp"/>
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
                        <h3>Participant Report</h3>


                        <center>    
                            <h3>${stx.msg}</h3>


                            <%


                                Participant px = Participant.getParticipant_From_ID(request.getParameter("id"));


                            %>
                            <h4>  <%="ID: " + px.getId() + " Names:" + px.getNames() + "'s Details"%>   </h4>        </h3>
                                
                            <table border="1" class="" style="width: auto">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th style="text-align: left">Requested By</th>
                                        <th>Father</th>
                                        <th>Mother</th>
                                        <th style="text-align: left">Father N.ID</th>
                                        <th style="text-align: left">Mother N.ID</th>
                                        <th style="text-align: left">Family Address</th>
                                        <th style="text-align: left">Education Level</th>
                                        <th style="text-align: left">Family Tel</th>
                                        <th>Sector</th>
                                        <th>Cell</th>
                                        <th>Village</th>
                                        <th>Reg,Date</th>
                                        <th style="text-align: left">Received,Date</th>
                                        <th style="text-align: left">Leaving,Date</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        int no = 1;
                                        List<Participant> l = Participant.getList();
                                        for (int i = 0; i < l.size(); i++) {
                                            if (l.get(i).getId() == px.getId()) {
                                    %>
                                    <tr>
                                        <td><%=no%></td>
                                        <td><%=l.get(i).getRequested_by()%></td>
                                        <td><%=l.get(i).getFather_names()%></td>
                                        <td><%=l.get(i).getMother_names()%></td>
                                        <td><%=l.get(i).getFather_nid()%></td>
                                        <td><%=l.get(i).getMother_nid()%></td>
                                        <td><%=l.get(i).getFamilly_address()%></td>
                                        <td><%=l.get(i).getEducation()%></td>
                                        <td><%=l.get(i).getFamily_tel()%></td>
                                        <td><%=l.get(i).getSector()%></td>
                                        <td><%=l.get(i).getCell()%></td>
                                        <td><%=l.get(i).getVillage()%></td>
                                        <td><%=l.get(i).getReg_date()%></td>

                                        <td><%=l.get(i).getReceived_date()%></td>
                                        <td><%=l.get(i).getLeavingdate()%></td>

                                    </tr>
                                    <%
                                                no++;
                                            }
                                        }

                                    %>
                                </tbody>
                            </table>
                            <hr style="border: 1px solid black"/>
                            <h3>Recorded Cases</h3>
                            <table border="1" class="" id='sample_1' style="width: 100%">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th style="text-align: left">Description</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        no = 1;
                                        l = null;
                                        List<Case> ll = Case.getList();;
                                        for (int i = 0; i < ll.size(); i++) {
                                            if (ll.get(i).getId() == px.getId()) {
                                    %>
                                    <tr>
                                        <td><%=no%></td>
                                        <td><%=ll.get(i).getDescription()%></td>



                                    </tr>
                                    <%
                                                no++;
                                            }
                                        }

                                    %>
                                </tbody>
                            </table>
                            <hr style="border: 1px solid black"/>
                            <h3>Recorded Skills</h3>
                            <table border="1" class="" id='sample_1' style="width: 100%">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th style="text-align: left">Description</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        no = 1;
                                        List<Skill> lx = Skill.getList();
                                        for (int i = 0; i < lx.size(); i++) {
                                            if (lx.get(i).getId() == px.getId()) {
                                    %>
                                    <tr>
                                        <td><%=no%></td>
                                        <td><%=lx.get(i).getDescription()%></td>



                                    </tr>
                                    <%
                                                no++;
                                            }
                                        }

                                    %>
                                </tbody>
                            </table>


                            <h5 style="margin-left: -830px"><%="Printed by: " + u.getNames()%></h5>
                            <br> 
                            <h5 style="margin-left: -830px"><%="________________"%></h5>
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
