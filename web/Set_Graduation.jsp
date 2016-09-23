


 <%@page import="pack.Participant"%>
<jsp:useBean id="p" scope="request" class="pack.Participant"/>
<%@page import="pack.Participant_Training"%>
<%
    
    String id=request.getParameter("id");
    
     
     Participant tr=Participant.getParticipant_From_ID(id);
     System.out.println(tr.updateForGuardLeaving());
     System.out.println(tr.updateFor_Status("graduated"));
     p.setMsg("<h3>Information Succcessfully Submitted</h3>");
    
    %>
    
    <jsp:forward page="Participant_List_3.jsp"/>