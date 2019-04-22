<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head></head>   
</script>
<body>
    <%
    try{        
    Class.forName("com.mysql.jdbc.Driver");  
    java.sql.Connection con=DriverManager.getConnection(  
    "jdbc:mysql://localhost:3306/MyDatabase","root","");  
    Statement stmt=con.createStatement();   
    String s1=request.getParameter("ClassX_Board");
    String s2=request.getParameter("School_Name1");
    float s3=Float.parseFloat(request.getParameter("ClassX_Percentage"));
    String s4=request.getParameter("ClassX_Year Of Passing");
    String s5=request.getParameter("ClassXII_Board");
    String s6=request.getParameter("School_Name2");
    float s7=Float.parseFloat(request.getParameter("ClassXII_Percentage"));
    String s8=request.getParameter("ClassXII_YrOfPassing");
    String s9=request.getParameter("course");
    String s10=request.getParameter("branch");
    String s11=(String)session.getAttribute("ScholarNo");     
    int rows=stmt.executeUpdate("insert into student1 values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"')");
    stmt.close();
    con.close();
    response.sendRedirect("Documents.jsp");
    }
    catch(Exception e){
    out.print(e.toString());
    }
    %>	

</body>   
</html>