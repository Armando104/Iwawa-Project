
<%@page import="pack.District"%>
<%@page import="pack.Participant"%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page  import="java.awt.*" %>
<%@ page  import="java.io.*" %>
<%@page import="java.util.List"%>
<%@ page  import="org.jfree.chart.*" %>
<%@ page  import="org.jfree.chart.entity.*" %>
<%@ page  import ="org.jfree.data.general.*"%>
<%
             DefaultPieDataset data = new DefaultPieDataset();
             
          
            List<District> l=District.getList();
            for(int i=0;i<l.size();i++){
                System.out.println(Participant.get_Count_district("graduated", l.get(i).getDistrict()+""));
                data.setValue(l.get(i).getName()+"("+Participant.get_Count_district("graduated", l.get(i).getDistrict()+"")+")", Participant.get_Count_district("graduated", l.get(i).getDistrict()+""));
                //data.setValue(l.get(i).getName(), new Double(Visit.getCount(l.get(i).getInstutition_id()+""))); 
            }
            JFreeChart chart = ChartFactory.createPieChart("Graduates Statistics", data, true, true, false);
            try {
                final ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
                ///final File file1 = new File("../");
                 final File file1 = new File(config.getServletContext().getRealPath("/") + "chart\\1.png");
               
                ChartUtilities.saveChartAsPNG(file1, chart, 600, 400, info);
                data=null;
            } catch (Exception e) {
                out.println(e);
            }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>
    </head>
    <body>
        <center>
             <IMG SRC="chart/1.png" WIDTH="600" HEIGHT="400"
         BORDER="0" USEMAP="#chart">
        </center>
    </body>
</html> 