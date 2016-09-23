 

<%@page import="pack.*"%>

<%@page import="pack.*"%>
<%
    User u = (User) session.getAttribute("parent");     
    
   
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
    Participant pp=Participant.getParticipant_Names_Parent_ID(p.getNames(),p.getFather_nid(),p.getNid());
    p.setDistrict_id(u.getUser_id());
    p.setStatus("myct");
    if(pp!=null){
       p.setMsg("<h3 style=color:red>Participant Already Saved</h3>");
    
    }else{
    
    if(p.insert()){
    p.setMsg("<h3 style=color:green>Participant Successfully Saved</h3>");
    
    }else{
    
    p.setMsg("<h3 style=color:red>Participant Not Saved</h3>");
    
    }
    }
    
    
    %>
    <jsp:forward page="Participant_Form_Parent.jsp"/>