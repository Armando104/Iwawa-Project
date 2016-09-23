 

<%@page import="pack.*"%>
<jsp:useBean id="pz" scope="request" class="pack.Case">
    
    <jsp:setProperty name="pz" property="*"  />
</jsp:useBean>

<%
    Case pp=Case.getCase_Name(pz.getDescription());
    
    if(pp!=null){
       pz.setMsg("<h3 style=color:red>Case Already Saved</h3>");
    
    }else{
    
    if(pz.insert()){
    pz.setMsg("<h3 style=color:green>Case Successfully Saved</h3>");
    
    }else{
    
    pz.setMsg("<h3 style=color:red>Case Not Saved</h3>");
    
    }
    }
    
    
    %>
    <jsp:forward page="Participant_List.jsp"/>