<%@page import="dbpack2.DbManager2"%>
<%
    String id=request.getParameter("id");
    DbManager2 dm=new DbManager2();
    String query="delete from enquiry where id='"+id+"'";
    if(dm.insertUpdateDelete(query)==true)
    {
      out.print("<script>alert('Enquiry is deleted');window.location.href='enquiry.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Enquiry is not deleted');window.location.href='enquiry.jsp';</script>");
    }
%>  