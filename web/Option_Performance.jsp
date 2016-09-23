


 <jsp:useBean id="p" scope="request" class="pack.Participant"/>
<%@page import="pack.Participant_Training"%>
<%
    
    String id=request.getParameter("id");
    
     String op=request.getParameter("op");
     
     Participant_Training tr=Participant_Training.getParticipant_Training_ID(id);
     tr.updateFor_Performance(op, id);
     p.setMsg("<h3>Information Succcessfully Submitted</h3>");
    
    %>
    
    <jsp:forward page="Participant_List_3.jsp"/>