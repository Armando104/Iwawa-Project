<%@page import="pack.*"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>myct</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
        <link href='http://fonts.googleapis.com/css?family=Oswald|Open+Sans' rel='stylesheet' type='text/css'>
            <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
            <script type="text/javascript" src="js/jquery-ui.js"></script>
            <script type="text/javascript" src="js/carouselScript.js"></script>
            <link href="bootstrap.css" rel="stylesheet" type="text/css"/>
            
             <jsp:useBean id="p" scope="request" class="pack.User"/>
            
    </head>
    <body style="background-color: #bcbcbc">

        <div class="clear"></div>
        <!-- end of SOCIAL ICONS -->
         <div class="header">
            <div class="row">
                <div class="logo" style="height: 130px;width: auto;float: left;margin-left: 200px;">
                    <img src="images/Flag-map_of_Rwanda.svg.png" width="200 " height="175" alt="Flag-map_of_Rwanda.svg" style="height: 80px;width:  100px;margin-top: -00px;"/>
                   
                </div>
                <div style="width: auto;float: left;">
                    <center>
                        <h3 style="color: chartreuse">Ministry Of ICT and Youth</h3>
                        <h5 style="color: chartreuse">IWAWA Rehabilitation Center</h5>
                     </center>
                </div>
                <div class="menu" style="width: auto;float: right;margin-left: 50px;">
                    <ul>
                        <li><a href="index_1.jsp" class="active">Home</a></li>
                           <li><a href="User_Form_2.jsp">Parent Sign Up</a></li>
                     
                        <li><a href="LoginForm.jsp">Login</a></li>
                    </ul>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <!-- end of MENU WRAPPER -->
        <div class="banner-wrapper">
            <div class="row">

            </div>


        </div>
        <center>




            <div style="width: 970px;height: 420px;background:url(images/banner-bg.jpg) no-repeat center;">
                
                 <div style="width:100%;height: auto;float: right">
                    <center>
               
              <br> <br>
                    
                    <br>
                      <h3>Parent Sign Up Form</h3>
            
                <br><br>
                ${p.msg}
                <form action="User_Processing_2.jsp">
                    <table border="0">
                        
                     
                        <tbody>
                            <tr>
                                <td>Names</td>
                                <td><input type="text" name="names" value="${p.names}" required=""/></td>
                                <td></td>
                            </tr>
                             <tr>
                                <td>Username</td>
                                <td><input type="text" name="username" value="${p.username}" required=""/></td>
                                <td><input type="hidden" name="role" value="center" readonly=""/></td>
                            </tr>
                              <tr>
                                <td>Password</td>
                                <td><input type="password" name="password" value="${p.password}" required=""/></td>
                                <td></td>
                            </tr>
                             <tr>
                                <td></td>
                                
                                <td><input type="hidden" name="role"  value="parent" readonly=""/></td>
                                   <td><input type="hidden" name="ref_id" placeholder="" value="0" hidden=""/></td>
                                
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Sign Up" class="btn btn-inverse"/></td>
                                <td></td>
                            </tr>
                             
                        </tbody>
                    </table>

                </form>
                               
                            
          </center>
                </div>
            </div>
        </center>
            
       
        <!-- end of BANNER WRAPPER -->
         
        <!-- end of BOX WRAPPER -->
       
        <div class="footer-wrapper" style="margin-top: -0px;margin-bottom: -10px">
            <div class="footer">
                <center>
                <p> <p style="color: white">www.myict.rw <br>All rights reserved. </p></p></center>
            </div>
             
        </div>
        
        <!----footer-wrapper-------->
        <!-- end of WRAPPER -->
    </body> 
</html>
