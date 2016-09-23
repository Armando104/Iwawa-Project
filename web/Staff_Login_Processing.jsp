


<%@page import="pack.*"%>
<%@page import="pack.User"%>

<jsp:useBean id="s" scope="request" class="pack.User">
    <jsp:setProperty name="s" property="*" />
</jsp:useBean>

<%
    {
        User u = User.getUser(s.getUsername());
        if (u == null) {


            s.setMsg("<h4 style=color:red >Invalid Username</h4>");

        } else {

            if (u.getPassword().equals(s.getPassword())) {
                System.out.println("ROLE:" + u.getRole() + " Status:" + u.getUser_status());

                if (u.getRole().equalsIgnoreCase("district") && u.getUser_status().equalsIgnoreCase("unlocked")) {

                    session.setAttribute("district", u);
                System.out.println("User ID:"+u.getUser_id());
%>
<jsp:forward  page="School_Form.jsp"/>
<%
    } else {
        s.setMsg("<h4 style=color:red >Sorry You have No Access! Account Locked</h4>");
    }


    if (u.getRole().equalsIgnoreCase("head master") && u.getUser_status().equalsIgnoreCase("unlocked")) {
        session.setAttribute("hd", u);

%>
<jsp:forward  page="Student_Form.jsp"/>
<%
    } else {
        s.setMsg("<h4 style=color:red >Sorry You have No Access! Account Locked</h4>");
    }
    if (u.getRole().equalsIgnoreCase("student") && u.getUser_status().equalsIgnoreCase("unlocked")) {
        session.setAttribute("student", u);

%>
<jsp:forward  page="#"/>
<%
    } else {
        s.setMsg("<h4 style=color:red >Sorry You have No Access! Account Locked</h4>");
    }

    if (u.getRole().equalsIgnoreCase("admin")) {
        session.setAttribute("admin", u);
%>
<jsp:forward  page="District_Form.jsp"/>
<%
                }
            } else {
                s.setMsg("<h4 style=color:red >Invalid Password!</h4>");
            }
        }
    }

%>
<jsp:forward page="Staff_Login.jsp"/>