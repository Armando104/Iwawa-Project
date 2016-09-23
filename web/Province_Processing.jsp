 

<%@page import="pack.Province"%>
<jsp:useBean id="p" scope="request" class="pack.Province">
    
    <jsp:setProperty name="p" property="*"  />
</jsp:useBean>

<%
    Province pp=Province.getProvince_Name(p.getName());
    
    if(pp!=null){
       p.setMsg("<h3 style=color:red>Province Already Saved</h3>");
    
    }else{
    
    if(p.insert()){
    p.setMsg("<h3 style=color:green>Province Successfully Saved</h3>");
    
    }else{
    
    p.setMsg("<h3 style=color:red>Province Not Saved</h3>");
    
    }
    }
    
    
    %>
    <jsp:forward page="Province_Form.jsp"/>