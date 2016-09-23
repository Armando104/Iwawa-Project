 

<%@page import="pack.*"%>
<jsp:useBean id="pz" scope="request" class="pack.Case"/>
<jsp:useBean id="pzx" scope="request" class="pack.Participant_Training">
    
    <jsp:setProperty name="pzx" property="*"  />
</jsp:useBean>

<%
   {
    
    if(pzx.insert()){
    pz.setMsg("<h3 style=color:green>Training  Successfully Assigned To "+pzx.getParticipant_id()+"</h3>");
    
    }else{
    
    pz.setMsg("<h3 style=color:red>Training Not Successfully Assigned</h3>");
    
    }
    }
    
    
    %>
    <jsp:forward page="Participant_List_3.jsp"/>