 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="s" scope="request" class="pack.User"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
	
    </head>
    <body style="background-image:url('a.imgs/10.jpg');background-repeat:repeat;">
         <center>
             <div style="box-shadow: rgba(0, 0, 0,  25) 0px 0px 20px;;width: 90.1%;height: auto">
                 
             
        <div style="width: 100%;height: auto;margin-top: -0px;">
            <img src="a.imgs/header.jpg" width="1360" height="111" alt="header" style="width: 100%;margin-left: -0px;margin-right: -0px;border-bottom: 2px solid black"/>
        </div>
   
         <div style="width: 100%;height: 40px;background-color: green;margin-top: -4px;">
             <jsp:include page="Home_Menus_Ok.html"/>
         </div>
         
          <div style="width:100%;height: 470px;background-color: white">
         
         
             <center>
                 <br><br>
            <br><br><h3 style="color: green">System Login Form</h3>
                  <p> ${s.msg}</p>
                  <form action="Staff_Login_Processing.jsp" method="POST">
                 
                  <table border="0">
                    
                      <tbody>
                          <tr>
                              <td>Username</td>
                              <td></td>
                          </tr>
                          <tr>
                              <td><input type="text" name="username" value="${s.username}" style="height: 30px;"/></td>
                              <td></td>
                          </tr>
                          <tr>
                              <td>Password</td>
                              <td></td>
                          </tr>
                          <tr>
                              <td><input type="password" name="password" value="${s.password}" style="height: 30px;" /></td>
                              <td></td>
                          </tr>
                          <tr>
                              <td><input type="submit" value="Login" class="btn btn-success"/></td>
                              <td></td>
                          </tr>
                      </tbody>
                  </table>
                  </form>
                              </center>
             </div>
             
             <div style="width: 100%;height: 50px;">
             <h3>copyright @reb 2015</h3>
         </div>
		   </div>
          </div>
        
        
    </center>
    </body>
</html>
