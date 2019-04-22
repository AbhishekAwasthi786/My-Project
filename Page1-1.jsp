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
    String s1=request.getParameter("First Name");
    String s2=request.getParameter("Last Name");
    String s3=request.getParameter("date");
    String s4=request.getParameter("E-Mail");
    String s5=request.getParameter("Mobile Number");
    String s6=request.getParameter("Gender");
    String s7=request.getParameter("Address");
    String s8=request.getParameter("State");
    String s9=request.getParameter("City");
    String s10=request.getParameter("Pincode");
    String s11=request.getParameter("Country");
    String s12=request.getParameter("SN");
    String s13=request.getParameter("Af");
    int rows=stmt.executeUpdate("insert into student values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"')");
    session.setAttribute("ScholarNo",s12);
    if(s13.equals("Under Graduation"))
        response.sendRedirect("Page2.jsp");
    else
        response.sendRedirect("Page2-3.jsp");
    stmt.close();    
    con.close();
    }
    catch(Exception e){
    out.print(e.toString());
    }
    %>	

</body>   
</html>