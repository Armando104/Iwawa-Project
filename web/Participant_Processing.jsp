 

<%@page import="pack.*"%>

<%@page import="pack.*"%>
<%
    User u = (User) session.getAttribute("district");     
    
   
    if (u == null) {
%>
<jsp:forward page="index_1.jsp"/>
<%        }


%>
<jsp:useBean id="p" scope="request" class="pack.Participant">
    
    <jsp:setProperty name="p" property="*"  />
</jsp:useBean>

<%
    System.out.println("id:"+u.getRef_id());
    if(p.isValid()){
    if(p.getOp().equalsIgnoreCase("submit")){
    Participant pp=Participant.getParticipant_Names_Parent_ID(p.getNames(),p.getFather_nid(),p.getNid());
    p.setDistrict_id(u.getRef_id());
    p.setStatus("district");
    if(pp!=null){
       p.setMsg("<h3 style=color:red>Participant Already Saved</h3>");
    
    }else{
    
    if(p.insert()){
    p.setMsg("<h3 style=color:green>Participant Successfully Saved</h3>");
    
    }else{
    
    p.setMsg("<h3 style=color:red>Participant Not Saved</h3>");
    
    }
    }
    
    }
    if(p.getOp().equalsIgnoreCase("edit")){
    {
    
    if(p.update()){
    p.setMsg("<h3 style=color:green>Participant Successfully Edited</h3>");
    
    }else{
    
    p.setMsg("<h3 style=color:red>Participant Not Edited</h3>");
    
    }
    }
    
    }
     if(p.getOp().equalsIgnoreCase("delete")){
    {
    
    if(p.delete()){
    p.setMsg("<h3 style=color:green>Participant Successfully Deleted</h3>");
    
    }else{
    
    p.setMsg("<h3 style=color:red>Participant Not Deleted</h3>");
    
    }
    }
    
    }
     %>
     <jsp:forward page="Participant_List.jsp"/>
     <%
    }
    %>
    <jsp:forward page="Participant_Form.jsp"/>