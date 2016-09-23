 

<%@page import="pack.*"%>
<jsp:useBean id="p" scope="request" class="pack.Training">
    
    <jsp:setProperty name="p" property="*"  />
</jsp:useBean>

<%
    Training pp=Training.getCase_Name(p.getTitle());
    
    if(pp!=null){
       p.setMsg("<h3 style=color:red>Training Already Saved</h3>");
    
    }else{
    
    if(p.insert()){
    p.setMsg("<h3 style=color:green>Training Successfully Saved</h3>");
    
    }else{
    
    p.setMsg("<h3 style=color:red>Training Not Saved</h3>");
    
    }
    }
    
    
    %>
    <jsp:forward page="Training_List.jsp"/>