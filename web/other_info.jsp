<%--
    Document   : other_info
    Created on : Sep 23, 2013, 2:29:19 PM
    Author     : Administrator
--%>


<%@page import="search.searchQuery"%>
<%@page import="z.connect.jdbc"%>
<%@page import="java.sql.ResultSet"%>
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
        <!--<meta http-equiv="refresh" content="600" id="myMeta">-->
        <link type="text/css" href="all.css" rel="stylesheet"/>
        <title>JSP Page</title>
        <script type="text/javascript">
            //            $("body").ready(function(){
            //                alert("refreshed");
            //            });

            $("tr").click(function(){
                $(this).addClass("selected").siblings().removeClass("selected");
            });
        </script>
    </head>
    <body>
        <%
            ResultSet rddl = null,
                    rethnnicities = null,
                    rGSDiv = null,
                    rMOH = null,
                    rDOTS = null;
            searchQuery searchQ = new searchQuery();
            try {
        %>


        <div style="float: left;border: 1px solid gray">Refresh Interval :
            <a href="" onclick="test1min();">Never</a>
            <a href="" onclick="test30sec();">60Min</a>
            <a href="">30Min</a>
            <a href="">10Min</a>
        </div>
    <center>
        <jsp:include page="header_links.jsp"/>
        <br>
        <h2 >Drug Delivery Locations</h2>
        <a href="javascript:void(0)" onclick="expandTable('DDL');return false;">Expand Table</a>
        : <a href="javascript:void(0)" onclick="contractTable('DDL');return false;">Retract Table</a>
        <form method="post" action="">
            <table class="otherInfoTable" id="DDL">
                <thead>
                <th class="IDCol">D.D.L ID</th>
                <th>Address</th>
                <th>Responsible Person</th>
                <th>contact no</th>
                <th class="timestampCol" align="center">Rec.Timestamp.ID</th>
                </thead>
                <tbody>
                    <%  if (rddl == null) {
                            rddl = searchQ.searchTable("drug_delivery_location", "iddrug_delivery_location");
                        }
                        while (rddl.next()) {
                    %>
                    <tr>
                        <td><%= rddl.getInt("iddrug_delivery_location")%></td>
                        <td><%= rddl.getString("address")%></td>
                        <td><%= rddl.getString("liable_person_name")%></td>
                        <td><%= rddl.getString("Contact")%></td>
                        <td><%= rddl.getInt("timestamp_idtimestamp")%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>
        <hr>
        <h2>Ethnicities</h2>
        <a href="javascript:void(0)" onclick="expandTable('ETHN');return false;">Expand Table</a>
        : <a href="javascript:void(0)" onclick="contractTable('ETHN');return false;">Retract Table</a>
        <form method="post" action="">
            <table class="otherInfoTable" id="ETHN">
                <thead>
                <th class="IDCol">ethnicity ID</th>
                <th>Ethnicity</th>
                <th>Origin</th>
                <th class="timestampCol">Rec.Timestamp.ID</th>
                </thead>
                <tbody>
                    <% if (rethnnicities == null) {
                            rethnnicities = searchQ.searchTable("ethnicity", "idethnicity");
                        }
                        while (rethnnicities.next()) {
                    %>
                    <tr>
                        <td><%= rethnnicities.getInt("idethnicity")%></td>
                        <td><%= rethnnicities.getString("ethnicity")%></td>
                        <td><%= rethnnicities.getString("origin")%></td>
                        <td><%= rethnnicities.getInt("timestamp_idtimestamp")%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>
        <hr>
        <h2>Grama Sevaka Divisions</h2>
        <a href="javascript:void(0)" onclick="equalizeTable('GS');return false;">Expand Table</a>
        : <a href="javascript:void(0)" onclick="DeequalizeTable('GS');return false;">Retract Table</a>
        <form method="post" action="">
            <table class="otherInfoTable" id="GS">
                <thead>
                <th class="IDCol">division ID</th>
                <th>Division</th>
                <th>Contact</th>
                <th class="timestampCol">Rec.Timestamp.ID</th>
                </thead>
                <tbody>
                    <% if (rGSDiv == null) {
                            rGSDiv = searchQ.searchTable("gs_div", "idgs_div");
                        }
                        while (rGSDiv.next()) {
                    %>
                    <tr>
                        <td><%= rGSDiv.getInt("idgs_div")%></td>
                        <td><%= rGSDiv.getString("division")%></td>
                        <td>--<pre>proposed to be added--</pre></td>
                        <td><%= rGSDiv.getInt("timestamp_idtimestamp")%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>
        <hr>
        <h2>MOH Divisions</h2>
        <!--        <a href="javascript:void(0)" onclick="expandTable('MOH');return false;">Expand Table</a>
                : <a href="javascript:void(0)" onclick="contractTable('MOH');return false;">Retract Table</a>-->
        <form method="post" action="">
            <table class="otherInfoTable" id="MOH">
                <thead>
                <th class="IDCol">division ID</th>
                <th>Area</th>
                <th>MOH Office Contact</th>
                <th class="timestampCol">Rec.Timestamp.ID</th>
                </thead>
                <tbody>
                    <% if (rMOH == null) {
                            rMOH = searchQ.searchTable("moh_area", "idmoh_area");
                        }
                        while (rMOH.next()) {
                    %>
                    <tr>
                        <td><%= rMOH.getInt("idmoh_area")%></td>
                        <td><%= rMOH.getString("area")%></td>
                        <td>--<pre>proposed to be added--</pre></td>
                        <td><%= rMOH.getInt("timestamp_idtimestamp")%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>
        <hr>
        <h2 >DOTS centers</h2>
        <a href="javascript:void(0)" onclick="expandTable('DOTS');return false;">Expand Table</a>
        : <a href="javascript:void(0)" onclick="contractTable('DOTS');return false;">Retract Table</a>
        <form method="post" action="">
            <table class="otherInfoTable" id="DOTS">
                <thead>
                <th class="IDCol">center ID</th>
                <th>Center</th>
                <th>Contact</th>
                <th class="timestampCol">Rec.Timestamp.ID</th>
                </thead>
                <tbody>
                    <%  if (rDOTS == null) {
                            rDOTS = searchQ.searchTable("dots_center", "iddots_center");
                        }
                        while (rDOTS.next()) {
                    %>
                    <tr>
                        <td><%= rDOTS.getInt("iddots_center")%></td>
                        <td><%= rDOTS.getString("center")%></td>
                        <td><%= rDOTS.getString("contact_no")%></td>
                        <td><%= rDOTS.getInt("timestamp_idtimestamp")%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>

        <jsp:include page="footer.jsp"/>
    </center>
    <%      rddl = null;
            rethnnicities = null;
            rGSDiv = null;
            rMOH = null;
            rDOTS = null;
        } catch (Exception e) {
            System.out.println(e);
        }
    %>
</body>
</html>