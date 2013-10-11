<%--
    Document   : header_links
    Created on : Sep 23, 2013, 11:45:19 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<br>
<br>
<style type="text/css">
    .header{padding:5px 10px 5px 10px;
            font-weight: bold;
            border: 1px solid silver;
            margin:0em 5em;
            border-spacing: 5pt
    }
    .header:hover{background-color: skyblue}
    h2{color: dimgrey}
</style>

<table>
    <tbody>
        <tr>
            <td class="header"><a href="other_tb_info.jsp#TBL">TB Types Listing</a></td>
            <td class="header"><a href="other_tb_info.jsp#PT">Patient Types</a></td>
        </tr>
    </tbody>
</table>
<table>
    <tbody>
        <tr>
            <td class="header"><a href="other_info.jsp#DDL">Drug Delivery Locations</a></td>
            <td class="header"><a href="other_info.jsp#ETHN">Ethnicities</a></td>
            <td class="header"><a href="other_info.jsp#GS">Grama Sevaka Divisions</a></td>
            <td class="header"><a href="other_info.jsp#MOH">MOH Divisions</a></td>
            <td class="header"><a href="other_info.jsp#DOTS">DOTS Centers</a></td>
        </tr>
    </tbody>
</table>
<table>
    <tbody>
        <tr>
            <td class="header"><a href="registered.jsp">Registered Patients</a></td>
            <td class="header"><a href="other_info_queuedDel.jsp">Queued Deliveries</a></td>
            <td class="header"><a href="other_info_Notifications.jsp">Notifications</a></td>
            <td class="header"><a href="other_info_delConfirms.jsp">Delivery Confirmations</a></td>
        </tr>
    </tbody>
</table>
