<%@page import="pack.District"%>
<%@page import="pack.User"%>
<jsp:useBean id="p" scope="request" class="pack.District"/>


<%
    String id = request.getParameter("id");
    String op = request.getParameter("op");
    District u = District.getDistrict_Distrinct_ID(Integer.parseInt(id));
    p.setName(u.getName());
   
    p.setDistrict(u.getDistrict());
    p.setProvince_id(u.getProvince_id());
     
    p.setOp(op);
    
   
%>


<jsp:forward page="District_Form.jsp"/>
