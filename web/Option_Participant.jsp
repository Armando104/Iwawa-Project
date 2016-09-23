<%@page import="pack.*"%>
<%@page import="pack.User"%>
<jsp:useBean id="p" scope="request" class="pack.Participant"/>


<%
    String id = request.getParameter("id");
    String op = request.getParameter("op");
    Participant u = Participant.getParticipant_From_ID((id));
     
    p.setNames(u.getNames());
    p.setCell(u.getCell());
    p.setDob_v(u.getDob()+"");
    p.setEducation(u.getEducation());
    p.setFamilly_address(u.getFamilly_address());
    p.setFamily_tel(u.getFamily_tel());
    p.setFather_names(u.getFather_names());
    p.setFather_nid(u.getFather_nid());
    p.setGender(u.getGender());
    p.setId(u.getId());
    p.setMarital_status(u.getMarital_status());
    p.setMother_names(u.getMother_names());
    p.setMother_nid(u.getMother_nid());
    p.setNid(u.getNid());
    p.setSector(u.getSector());
    p.setTel(u.getTel());
    p.setVillage(u.getVillage());
    p.setOp(op);
    
   
%>


<jsp:forward page="Participant_Form.jsp"/>
