<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack2.DbManager2"%>
<%
    String ano=request.getParameter("ano");
    DbManager2 dm=new DbManager2();
    String query="select * from booking where aadharno='"+ano+"'";
    ResultSet rs=dm.select(query);
    if(rs.next())
    {
        out.print("<script>alert('Booking is already done');window.location.href='booking.jsp';</script>"); 
    }
    else
    {
        session.setAttribute("ano", ano);
        response.sendRedirect("book.jsp"); 
    }
%>
