<%--
    Document   : other_tb_info
    Created on : Sep 23, 2013, 3:45:17 PM
    Author     : Administrator
--%>

<%@page import="search.searchQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" href="all.css" rel="stylesheet">
    </head>
    <body>
        <% ResultSet rtb= null, rpt = null;
            searchQuery searchQ = new searchQuery();
            try {
        %>
    <center>
        <jsp:include page="header_links.jsp"/>
        <br>
        <h2 id="TBL">TB Types Listing</h2>
        <form method="post" action="">
            <table class="tbInfo">
                <thead>
                <th class="IDCol">type ID</th>
                <th>Type</th>
                <th>Case Scenario</th>
                <th class="timestampCol">Rec.Timestamp.ID</th>
                </thead>
                <tbody>
                    <%  if (rtb == null) {
                            rtb = searchQ.searchTable("tb_type", "idtb_type");
                        }
                        while (rtb.next()) {
                    %>
                    <tr>
                        <td><%= rtb.getInt("idtb_type")%></td>
                        <td><%= rtb.getString("type")%></td>
                        <td><%= rtb.getString("cause")%></td>
                        <td><%= rtb.getInt("timestamp_idtimestamp")%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>
        <h2 id="PT">Patient Types </h2>
        <form method="post" action="">
            <table class="tbInfo">
                <thead>
                <th class="IDCol">Patient type ID</th>
                <th>Type</th>
                <th>Case</th>
                <th class="timestampCol">Rec.Timestamp.ID</th>
                </thead>
                <tbody>
                    <%  if (rpt == null) {
                            rpt = searchQ.searchTable("patient_type", "idpatient_type");
                        }
                        while (rpt.next()) {
                    %>
                    <tr>
                        <td><%= rpt.getInt("idpatient_type")%></td>
                        <td><%= rpt.getString("type")%></td>
                        <td><%= rpt.getString("cause")%></td>
                        <td><%= rpt.getInt("timestamp_idtimestamp")%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>
    </center>
    <% rtb = null;
            rpt = null;
        } catch (Exception e) {
            System.out.println(e);
        }
    %>
     <jsp:include page="footer.jsp"/>
</body>
</html>
