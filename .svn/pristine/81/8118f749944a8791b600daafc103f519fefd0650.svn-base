<%--
    Document   : other_info_queuedDel
    Created on : Oct 11, 2013, 4:09:14 PM
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
        <link type="text/css" href="all.css" rel="stylesheet"/>
    </head>
    <body>
        <%
            ResultSet rDeliv = null;
            searchQuery searchQ = new searchQuery();
            try {
        %>
    <center>
        <jsp:include page="header_links.jsp"/>
        <hr>
        <h2 >Queued Deliveries</h2>
        <a href="javascript:void(0)" onclick="expandTable('Que');return false;">Expand Table</a>
        : <a href="javascript:void(0)" onclick="contractTable('Que');return false;">Retract Table</a>
        <form method="post" action="">
            <table class="otherInfoTable" id="Que">
                <thead>
                <th class="IDCol">Delivery ID</th>
                <th>Dose</th>
                <th>Proposed Date</th>
                <th>MainDataBank Patient ID</th>
                <th>MainDataBank Patient Reg.No</th>
                <th class="timestampCol">Rec.Timestamp.ID</th>
                </thead>
                <tbody>
                    <% if (rDeliv == null) {
                            rDeliv = searchQ.searchTable("delivery", "iddelivery");
                        }
                        while (rDeliv.next()) {
                    %>
                    <tr>
                        <td><%= rDeliv.getInt("iddelivery")%></td>
                        <td><%= rDeliv.getString("dose")%></td>
                        <td><%= rDeliv.getString("proposed_date")%></td>
                        <td><%= rDeliv.getInt("mainbank_patient_idmainbank_patient")%></td>
                        <td><%= rDeliv.getString("mainbank_patient_tb_patient_no")%></td>
                        <td><%= rDeliv.getInt("timestamp_idtimestamp")%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>

    </center>
    <%
            rDeliv = null;
        } catch (Exception e) {
            System.out.println(e);
        }
    %>
    <jsp:include page="footer.jsp"/>
</body>
</html>
