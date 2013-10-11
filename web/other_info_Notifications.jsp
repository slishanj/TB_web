<%--
    Document   : other_info_Notifications
    Created on : Oct 11, 2013, 4:09:41 PM
    Author     : Administrator
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="search.searchQuery"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <!--<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.js" ></script>-->
        <script type="text/javascript" src="jquery-1.10.2.js" ></script>
        <script type="text/javascript" src="jquery-ui-1.10.2.js" ></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link type="text/css" href="all.css" rel="stylesheet"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ResultSet rNotif = null;
            searchQuery searchQ = new searchQuery();
            try {
        %>
    <center>
        <jsp:include page="header_links.jsp"/>
        <hr>
        <h2 >Notifications</h2>
        <a href="javascript:void(0)" onclick="expandTable('NOTIF');return false;">Expand Table</a>
        : <a href="javascript:void(0)" onclick="contractTable('NOTIF');return false;">Retract Table</a>
        <form method="post" action="">
            <table class="otherInfoTable" id="NOTIF">
                <thead>
                <th class="IDCol" >notification ID</th>
                <th>Notification</th>
                <th>Description</th>
                <th>Date Added</th>
                <th>Date to Notify</th>
                <th>Time to Notify</th>
                <th>MainDataBank Patient ID</th>
                <th>MainDataBank Patient Reg.No</th>
                <th class="timestampCol">Rec.Timestamp.ID</th>
                </thead>
                <tbody>
                    <%  if (rNotif == null) {
                            rNotif = searchQ.searchTable("notification", "idnotification");
                        }
                        while (rNotif.next()) {
                    %>
                    <tr>
                        <td><%= rNotif.getInt("idnotification")%></td>
                        <td><%= rNotif.getString("description")%></td>
                        <td><%= rNotif.getString("date_added")%></td>
                        <td><%= rNotif.getString("date_to_notify")%></td>
                        <td><%= rNotif.getString("time_to_notify")%></td>
                        <td><%= rNotif.getInt("mainbank_patient_idmainbank_patient")%></td>
                        <td><%= rNotif.getString("mainbank_patient_tb_patient_no")%></td>
                        <td><%= rNotif.getInt("timestamp_idtimestamp")%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>
    </center>
    <%
            rNotif = null;
        } catch (Exception e) {
            System.out.println(e);
        }
    %>
     <jsp:include page="footer.jsp"/>
</body>
</html>
