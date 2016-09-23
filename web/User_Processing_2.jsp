 

<%@page import="pack.*"%>
<jsp:useBean id="p" scope="request" class="pack.User">
    
    <jsp:setProperty name="p" property="*"  />
</jsp:useBean>

<%
    User pp=User.getUser(p.getUsername());
    
    if(pp!=null){
       p.setMsg("<h3 style=color:red>Username Already Exist</h3>");
    
    }else{
    p.setRole("parent");
    if(p.insert()){
    p.setMsg("<h3 style=color:green>Account Successfully Created</h3>");
    
    }else{
    
    p.setMsg("<h3 style=color:red>User Not Created</h3>");
    
    }
    }
    
    
    %>
    <jsp:forward page="User_Form_2.jsp"/>