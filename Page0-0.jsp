<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head></head>
<body>
    <%
    try{
    String s1=request.getParameter("Username");
    String s2=request.getParameter("Password");
    String s3="",s4="";
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/MyDatabase","root","");  
    Statement stmt=con.createStatement();  
    ResultSet rs=stmt.executeQuery("select * from login where pwd='"+s2+"'");  
    while(rs.next()){
    s3=rs.getString(1);
    s4=rs.getString(2); 
    }
    if(s1!=""&&s2!=""){
    if(s1.equals(s3)&&s2.equals(s4)){
        session.setAttribute("uname",s1);
        response.sendRedirect("Page0-1.jsp");
    } 
    else{  
        %>
        <script>
            alert("Wrong username or password");
            location="Page0.jsp";
        </script>
       <%
    }          
    }
    stmt.close();
    con.close();
    }
    catch(Exception e){
    out.print(e.toString());
    }
    %>	
</body>   
</html>