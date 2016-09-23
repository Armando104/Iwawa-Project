 

<%@page import="pack.*"%>
<jsp:useBean id="pz" scope="request" class="pack.Case"/>
<jsp:useBean id="px" scope="request" class="pack.Skill">
    
    <jsp:setProperty name="px" property="*"  />
</jsp:useBean>

<%
    {
    
    if(px.insert()){
    pz.setMsg("<h3 style=color:green>Skill Successfully Saved</h3>");
    
    }else{
    
    pz.setMsg("<h3 style=color:red>Skill Not Saved</h3>");
    
    }
    }
    
    
    %>
    
    <jsp:forward page="Participant_List_Parent.jsp"/>