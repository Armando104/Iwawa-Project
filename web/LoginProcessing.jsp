 
<%@page import="pack.*"%>
<jsp:useBean id="dd" scope="request" class="pack.User">
    <jsp:setProperty name="dd" property="*" />
</jsp:useBean>

<%
    User u = User.getUser(dd.getUsername());
    if (u == null) {
        dd.setMsg("<h3 style=color:red>Invalid Username</h3>");
    } else {
        if (u.getPassword().equals(dd.getPassword())) {

 
         if (u.getRole().equalsIgnoreCase("admin")) {
        {
                    session.setAttribute("admin", u);
                     

%>
<jsp:forward page="Admin_DashBoard.jsp"/>
<%
        }  

    }
           if (u.getRole().equalsIgnoreCase("district")) {
        {
                     session.setAttribute("district", u);
                     session.setAttribute("district", u);

%>
<jsp:forward page="Staff_DashBoard.jsp"/>
<%
        }  

    }
           
            if (u.getRole().equalsIgnoreCase("center")) {
        {
                     session.setAttribute("center", u);
                     session.setAttribute("center", u);

%>
<jsp:forward page="Staff_DashBoard_1.jsp"/>
<%
        }  

    }
     
 if (u.getRole().equalsIgnoreCase("parent")) {
        {
                     session.setAttribute("parent", u);
                     session.setAttribute("parent", u);

%>
<jsp:forward page="Participant_Form_Parent.jsp"/>
<%
        }  

    }
%>

<%

%>

<%
        } else {
            dd.setMsg("<h3 style=color:red>Invalid Password</h3>");
        }
    }


%>

<jsp:forward page="LoginForm.jsp"/>
