


<%@page import="pack.Participant"%>
<jsp:useBean id="p" scope="request" class="pack.Participant"/>

<%
    String op = request.getParameter("op");
    Participant px = Participant.getParticipant_From_ID(request.getParameter("id"));
    px.setStatus(op);
    if(px.updateFor_Status(op)){
    p.setMsg("<h3 style:color:green>Well Submitted</h3>");
    
    }else{
     p.setMsg("<h3 style:color:red>Not Submitted</h3>");
    
    }

%>
<jsp:forward page="Participant_List_Admin.jsp"/>

