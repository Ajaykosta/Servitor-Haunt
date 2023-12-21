<%-- 
    Document   : PostRequirements
    Created on : Mar 31, 2019, 11:06:20 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <jsp:include page="customerHeader.jspf"/>
        <h3>Customer</h3>
        <h2>Welcome <%= session.getAttribute("username")%></h2>
       <h2>POST REQUIREMENTS</h2>
       
          <%
        try {
            if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
            }
        } catch (Exception ex) {

        }
    %>
       <table border="1">
           <thead>
               <tr>
                   <th>Reqirement Of?</th>
               </tr>
           </thead>
           <tbody>
               <tr>
                   <td><select name="t1" required>
                            <option>Electrician</option>
                                <option>Plumber</option>
                                <option>Painter</option>
                                <option>Carpenter</option>
                                <option>Medical</option>
                                <option>Other</option>
                       </select></td>
               </tr>
               <thead>
               <tr>
                   <th>DESCRIPTION</th>
               </tr>
           </thead>
               <tr>
                   <td><textarea name="t2" rows="4" cols="20"   >
                       </textarea></td>
               </tr>
                <thead>
               <tr>
                   <th>Required ON DATE</th>
               </tr>
           </thead>
            <tr>
                <td><input type="date" name="t3" ></td>
               </tr>
               <tr>
                   <td><input type="submit" value="SUBMIT" name="b1" /></td>
               </tr>
           </tbody>
       </table>

    </body>
</html>
