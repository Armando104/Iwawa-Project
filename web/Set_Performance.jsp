

<%@page import="pack.Participant_Training"%>
<jsp:useBean id="p" scope="request" class="pack.Training"/>
<%
    String op=request.getParameter("op");
     String id=request.getParameter("id");
    Participant_Training pt=Participant_Training.getParticipant_Training_ID(id);
    pt.setPerformance(op);
    if(pt.update_performance()){
   p.setMsg("well submitted");
    }else{
   p.setMsg("Not submitted");
    
    }
    
    %>
    <jsp:forward page="Training_List_1_1.jsp"/>