<%-- 
    Document   : index
    Created on : Dec 16, 2015, 1:07:40 PM
    Author     : PREFERRED MICROF
--%>

<%@page import="java.util.List"%>
<%@page import="pack.Province"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="a.css/a.css.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
        <link rel="stylesheet" href="a.css/bootstrap.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
        <link rel="stylesheet" href="a.css/fonts.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
<jsp:useBean id="p" scope="request" class="pack.Province"/>
 
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
                 <jsp:include page="Admin_Menus.html"/>
            </div>
             <div id="title_h">
                
                 <p>New Province Form</p>
            </div>
            <div >
                <br><br>
                ${p.msg}
                <form action="Province_Processing.jsp">
                    <table border="0">
                        
                     
                        <tbody>
                            <tr>
                                <td>Province Name</td>
                                <td><input type="text" name="name" value="${p.name}" required=""/></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Save" class="btn btn-inverse"/></td>
                                <td></td>
                            </tr>
                             
                        </tbody>
                    </table>

                </form>
                                
                                <div id="title_h">
                
                <p>Registered Provinces</p>
            </div>
               
                <table border="1" class="table table-bordered" id='sample_1'>
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Province Name</th>
                            <th>View Districts</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            int no=1;
                            List<Province>l=Province.getList();;
                            for(int i=0;i<l.size();i++){
                            %>
                        <tr>
                            <td><%=no %></td>
                            <td><%=l.get(i).getName() %></td>
                            <td><a href="District_List.jsp?id=<%=l.get(i).getProvince_id()%>">View</a></td>
                        </tr>
                        <%
                            no++;
                            }
                                
                                %>
                    </tbody>
                </table>

            <div id="footer">
                <img src="a.imgs/footer.jpg" width="1345" height="66" alt="footer" style="width: 100%"/>

            </div>
        </div>

    </center>
</body>
<script src="Dyanmic-data-table/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="Dyanmic-data-table/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="Dyanmic-data-table/js/DT_bootstrap.js"></script>
<script src="Dyanmic-data-table/js/dynamic-table.js"></script>
</html>
