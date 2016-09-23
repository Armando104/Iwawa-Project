 

<%@page import="pack.*"%>
<jsp:useBean id="p" scope="request" class="pack.District">
    
    <jsp:setProperty name="p" property="*"  />
</jsp:useBean>

<%
      
        if(p.getOp().equalsIgnoreCase("Submit")){
         
      District pr=District.getDistrict_Name(p.getName());
            if(pr==null)
        {
       {
            
            
            if(p.insert()){
                 
               p.setMsg("<h5 style=color:green>District Successfully Registered</h5>");
            }else{
              p.setMsg("<h5 style=color:red>Registration Fails</h5>");
   
            }
            
        } 
       
        %>
        <jsp:forward page="District_List.jsp"/>
        <%
        }else{
             p.setMsg("<h5 style=color:red>District Name Already Exist Fails</h5>");
   
            }
            
        }
        if(p.getOp().equalsIgnoreCase("edit")){
         
      District pr=District.getDistrict_Name(p.getName());
      District dd=District.getDistrict_Distrinct_ID(Integer.parseInt(request.getParameter("district")));
            if(pr==null&&dd!=null)
        {
       {
            
            dd.setName(p.getName());
            if(dd.update_district()){
                 
               p.setMsg("<h5 style=color:green>District Successfully Edited</h5>");
            }else{
              p.setMsg("<h5 style=color:red>System Fails</h5>");
   
            }
            
        } 
       
        %>
        <jsp:forward page="District_List.jsp"/>
        <%
        }else{
             p.setMsg("<h5 style=color:red>District Name Already Exist Fails</h5>");
   
            }
            
        }
        if(p.getOp().equalsIgnoreCase("delete")){
         
       District dd=District.getDistrict_Distrinct_ID(Integer.parseInt(request.getParameter("district")));
            if(dd!=null)
        {
       {
            
            dd.setName(p.getName());
            if(dd.delete_district()){
                 
               p.setMsg("<h5 style=color:green>District Successfully Deleted</h5>");
            }else{
              p.setMsg("<h5 style=color:red>System Fails</h5>");
   
            }
            
        } 
       
        %>
        <jsp:forward page="District_List.jsp"/>
        <%
        }
            
        }
    %>
    <jsp:forward page="District_List.jsp"/>