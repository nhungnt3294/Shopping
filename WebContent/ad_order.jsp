<%@page import="model.Order_List"%>
<%@page import="DAO.Order_ListDAOImpl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DonHang"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <link rel="shortcut icon" href="ad_img/favicon.png">

        <title>Basic Table | Creative - Bootstrap 3 Responsive Admin Template</title>

        <!-- Bootstrap CSS -->
        <link href="ad_css/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="ad_css/bootstrap-theme.css" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="ad_css/elegant-icons-style.css" rel="stylesheet" />
        <link href="ad_css/font-awesome.min.css" rel="stylesheet" />
        <!-- Custom styles -->
        <link href="ad_css/style.css" rel="stylesheet">
        <link href="ad_css/style-responsive.css" rel="stylesheet" />

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
        <!--[if lt IE 9]>
            <script src="ad_js/html5shiv.js"></script>
            <script src="ad_js/respond.min.js"></script>
            <script src="ad_js/lte-ie7.js"></script>
          <![endif]-->

          <!-- =======================================================
            Theme Name: NiceAdmin
            Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
            Author: BootstrapMade
            Author URL: https://bootstrapmade.com
          ======================================================= -->
    </head>
    <body>
        <!-- container section start -->
        <section id="container" class=""> 
            <jsp:include page = "ad_header.jsp"></jsp:include>
            <jsp:include page = "ad_sidebar.jsp"></jsp:include>
            <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-table"></i> Table</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="ad_index.jsp">Home</a></li>
              <li><i class="fa fa-table"></i>Product</li>
              <li><i class="fa fa-th-list"></i>Product List</li>
            </ol>
          </div>
        </div>
        <!-- page start-->
        <div class="row">
          <div >
            <section class="panel">
              <header class="panel-heading">
                Order
              </header>
              <div text-align="center">
              <table border="1" width="100%" align="center">
              	<tr>
	              	<th>OrderID</th>
	              	<th>Information of Customer</th>
	              	<th>Product Code</th>
	              	<th>Check</th>
	             </tr>
              	<%
              		Order_ListDAOImpl o = new Order_ListDAOImpl();
              		List<DonHang> donhang = (List<DonHang>) request.getAttribute("donhang");
              		for(int i=0; i < donhang.size(); i++){
              			List<Order_List> list = o.getOrder_List(donhang.get(i).getOrder_id());
              			int n = list.size();
              			int sum = o.getTongSP(donhang.get(i).getOrder_id());
              	%>
              	<tr>
              		<td rowspan="<%=sum %>"><%=donhang.get(i).getOrder_id() %></td>
              		<td rowspan="<%=sum %>">Name: <%=donhang.get(i).getName() %>~~ Address: <%=donhang.get(i).getAddress() %>~~ Phone: <%=donhang.get(i).getPhone() %></td>
              		<td><%=list.get(0).getMaSP() %></td>
              		<td rowspan="<%=sum %>">
	              		<form method="post" action="<%=request.getContextPath()%>/AdOrder?orderid=<%=donhang.get(i).getOrder_id()%>">
	              			<button type="submit">Accept</button>
	              		</form>
              		</td>
              	</tr>
              	<%if(n>1){
              			for(int j=1; j<n;j++){
              	%>
              	<tr>
              		<td><%=list.get(j).getMaSP() %></td>
              	</tr>
              	<%}} %>
              	<%} %>
              </table>
              </div>
            </section>
          </div>
            <!-- page end-->
          </section>
        </section>
        <!--main content end-->
        <div class="text-right">
          <div class="credits">
              <!--
                All the links in the footer should remain intact.
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
              -->
            </div>
        </div>
        </section>
        <!-- container section end -->
        <!-- javascripts -->
        <script src="ad_js/jquery.js"></script>
        <script src="ad_js/bootstrap.min.js"></script>
        <!-- nicescroll -->
        <script src="ad_js/jquery.scrollTo.min.js"></script>
        <script src="ad_js/jquery.nicescroll.js" type="text/javascript"></script>
        <!--custome script for all page-->
        <script src="ad_js/scripts.js"></script>
    </body>
</html>
