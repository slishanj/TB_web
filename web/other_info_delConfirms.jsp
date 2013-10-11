<%--
    Document   : other_info_delConfirms
    Created on : Oct 11, 2013, 4:10:08 PM
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
            ResultSet rddlHasDel = null;
            searchQuery searchQ = new searchQuery();
            try {
        %>
    <center>
        <jsp:include page="header_links.jsp"/>
        <hr>
        <h2>Delivery Confirmations</h2>
        <a href="javascript:void(0)" onclick="expandTable('DConf');return false;">Expand Table</a>
        : <a href="javascript:void(0)" onclick="contractTable('DConf');return false;">Retract Table</a>
        <form method="post" action="">
            <table class="otherInfoTable" id="DConf">
                <thead>
                <th class="IDCol">D.D.L. Has Delivery ID</th>
                <th>Delivery ID</th>
                <th>Confirmation (y/n)</th>
                <th>Date & Time Delivered</th>
                <th class="timestampCol">Rec.Timestamp.ID</th>
                </thead>
                <tbody>
                    <% if (rddlHasDel == null) {
                            rddlHasDel =
                                    searchQ.
                                    searchTable("drug_delivery_location_has_delivery", "delivery_iddelivery");
                        }
                        while (rddlHasDel.next()) {
                    %>
                    <tr>
                        <td><%= rddlHasDel.getInt("drug_delivery_location_iddrug_delivery_location")%></td>
                        <td><%= rddlHasDel.getInt("delivery_iddelivery")%></td>
                        <td><%= rddlHasDel.getString("confirmation_y_n")%></td>
                        <td><%= rddlHasDel.getString("date_time")%></td>
                        <td><%= rddlHasDel.getInt("timestamp_idtimestamp")%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>

    </center>
    <%
            rddlHasDel = null;

        } catch (Exception e) {
            System.out.println(e);
        }
    %>
    <jsp:include page="footer.jsp"/>
</body>
</html>
