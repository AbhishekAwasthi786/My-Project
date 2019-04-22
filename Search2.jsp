<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head>
    <style>
        table {
          font-family: arial, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }
        
        td, th {
          border: 1px solid #dddddd;
          text-align: left;
          padding: 8px;
        }

        h1 {
            font-family: Arial;
            font-size: 40pt;
            color: black;
            font-weight: bold;
            text-align: center;
            margin-top: 40px;
            text-decoration: underline;
            
        }

        h2 {
            font-family: Arial;
            font-size: 15pt;
            color: black;
            font-weight: bold;
            text-decoration: underline;
            
        }

        body{
            background-color: lightsalmon;
        }
    </style>  
</head>
<body>
    <%
        try{   
        String str[]=new String[34];  
        String s1=(String)session.getAttribute("Scholar_NO");
        Class.forName("com.mysql.jdbc.Driver");  
        java.sql.Connection con=DriverManager.getConnection(  
        "jdbc:mysql://localhost:3306/MyDatabase","root","");  
        Statement stmt=con.createStatement();  
        ResultSet rs=stmt.executeQuery("select ApplyingFor from student where Scholar_NO='"+s1+"'");
            ResultSet rs1=stmt.executeQuery("select* from student inner join student3 on student.Scholar_NO=student3.Scholar_NO inner join student4 on student.Scholar_NO=student4.Scholar_NO where student.Scholar_NO='"+s1+"'");
            while(rs1.next()){
                for(int i=0;i<=33;i++){
                    str[i]=rs1.getString(i+1);
                }
            }
            %>
        <h1>Student Details</h1>
        <br>
        <h2>General information</h2>
        <table>
            <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>DOB</th>
            <th>E-Mail</th>
            <th>Mobile No</th>
            <th>Gender</th>
            <th>Address</th>
            <th>State</th>
            <th>City</th>
            <th>Pincode</th>
            <th>Country</th>
            <th>Scholar No</th>
            <th>Applying For</th>
            </tr>
            <tr>
            <td><%=str[0]%></td>
            <td><%=str[1]%></td>
            <td><%=str[2]%></td>
            <td><%=str[3]%></td>
            <td><%=str[4]%></td>
            <td><%=str[5]%></td>
            <td><%=str[6]%></td>
            <td><%=str[7]%></td>
            <td><%=str[8]%></td>
            <td><%=str[9]%></td>
            <td><%=str[10]%></td>
            <td><%=str[11]%></td>
            <td><%=str[12]%></td>
            <tr>    
        </table> 
        <br><br>
        <h2>Academic Details</h2>
        <table>
            <tr>
            <th>Tenth Board</th>
            <th>Passing Institute</th> 
            <th>Tenth Percentage</th>
            <th>Year of Passing</th>
            <th>Twelth Board</th>
            <th>Passing institute</th>
            <th>Twelth Percentage</th>
            <th>Year of Passing</th>
            <th>Graduation Institute</th>
            <th>Graduation Percentage</th>            
            <th>Year of Passing</th>
            <th>Course</th>
            <th>Branch</th>         
            </tr>
            <tr>
            <td><%=str[13]%></td>
            <td><%=str[14]%></td>
            <td><%=str[15]%></td>
            <td><%=str[16]%></td>
            <td><%=str[17]%></td>
            <td><%=str[18]%></td>
            <td><%=str[19]%></td>
            <td><%=str[20]%></td>
            <td><%=str[21]%></td>
            <td><%=str[22]%></td>
            <td><%=str[23]%></td>
            <td><%=str[24]%></td>
            <td><%=str[25]%></td>  
            </tr>    
        </table>
        <br><br>
        <h2>Documents</h2>
        <table>
            <tr>
            <th>TFW</th> 
            <th>Tenth Marksheet</th>
            <th>Twelth Marksheet</th>
            <th>College Transfer Certificate</th>
            <th>Domicile Certificate</th>
            <th>College Degree</th>   
            </tr>    
            <tr>
            <td><%=str[27]%></td>
            <td><%=str[28]%></td>
            <td><%=str[29]%></td>
            <td><%=str[30]%></td>
            <td><%=str[31]%></td>
            <td><%=str[32]%></td>      
            </tr>
        </table>
        <%    
        stmt.close();
        con.close();
        }
        catch(Exception e){
            out.print(e.toString());
        }
        %>  
</body>    
</html>        