<%@page import="pack.*"%>
<%
    User u = (User) session.getAttribute("admin");     
    
   
    if (u == null) {
%>
<jsp:forward page="index_1.jsp"/>
<%        }


%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>css3menu.com</title>
		<!-- Start css3menu.com HEAD section -->
	<link rel="stylesheet" href="Admin_Menus_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
	<!-- End css3menu.com HEAD section -->

	
</head>
<body style="background-color:#EBEBEB">
<!-- Start css3menu.com BODY section -->
<ul id="css3menu1" class="topmenu" style="border: 0px;margin-top: 3px;">
    <%
    if(u.getRole().equalsIgnoreCase("admin")){
        %>
        <li class="topfirst"><a href="Admin_DashBoard.jsp" style="width:100px;">Dashboard</a></li>
        <li class="topfirst"><a href="Staff_Form.jsp" style="width:100px;">New Staff</a></li>
        <li class="topmenu"><a href="All_Staff.jsp" style="width:100px;">All Staffs<%=" ("+Participant.getList().size()+")" %></a></li>
    
        <%
    }else{
     %>
     <li class="topfirst"><a href="Staff_DashBoard.jsp" style="width:100px;">Dashboard</a></li>
        <%
    }
    %>
    
    <li class="topmenu"><a href="Post_Form.jsp" style="width:100px;">Publish A Post</a></li>
     <li class="topmenu"><a href="New_Message_Staff.jsp" style="width:100px;">New Msg No Att,</a></li>
    <li class="topmenu"><a href="New_Message_Staff_1.jsp" style="width:100px;">New Msg + Att,</a></li>
    
    
</ul> 
</body>
</html>
