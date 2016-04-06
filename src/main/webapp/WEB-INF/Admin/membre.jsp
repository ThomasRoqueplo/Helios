<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="fr">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Liste membres |</title>

<!-- Bootstrap core CSS -->

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="css/custom.css" rel="stylesheet">
<link href="css/icheck/flat/green.css" rel="stylesheet">
<link href="css/datatables/tools/css/dataTables.tableTools.css"
	rel="stylesheet">

<script src="js/jquery.min.js"></script>

<!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>
<body class="nav-md">

	<div class="container body">

		<!-- Header et Menu de navigation -->
		<c:import url="menu.jsp">
		</c:import>


		<!-- page content -->
		<div class="right_col" role="main">
			<div class="">
				<div class="clearfix"></div>

				<div class="row">

					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									Liste des membres <small></small>
								</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<div id="example_wrapper" class="dataTables_wrapper" role="grid">
									<div class="DTTT_container">
										<a class="DTTT_button DTTT_button_copy"
											id="ToolTables_example_0"><span>Copy</span>
											<div
												style="position: absolute; left: 0px; top: 0px; width: 44px; height: 28px; z-index: 99;">
												<embed id="ZeroClipboard_TableToolsMovie_1"
													src="&lt;?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?&gt;"
													loop="false" menu="false" quality="best" bgcolor="#ffffff"
													width="44" height="28"
													name="ZeroClipboard_TableToolsMovie_1" align="middle"
													allowscriptaccess="always" allowfullscreen="false"
													type="application/x-shockwave-flash"
													pluginspage="http://www.macromedia.com/go/getflashplayer"
													flashvars="id=1&amp;width=44&amp;height=28"
													wmode="transparent">
											</div></a><a class="DTTT_button DTTT_button_csv"
											id="ToolTables_example_1"><span>CSV</span>
											<div
												style="position: absolute; left: 0px; top: 0px; width: 42px; height: 28px; z-index: 99;">
												<embed id="ZeroClipboard_TableToolsMovie_2"
													src="&lt;?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?&gt;"
													loop="false" menu="false" quality="best" bgcolor="#ffffff"
													width="42" height="28"
													name="ZeroClipboard_TableToolsMovie_2" align="middle"
													allowscriptaccess="always" allowfullscreen="false"
													type="application/x-shockwave-flash"
													pluginspage="http://www.macromedia.com/go/getflashplayer"
													flashvars="id=2&amp;width=42&amp;height=28"
													wmode="transparent">
											</div></a><a class="DTTT_button DTTT_button_xls"
											id="ToolTables_example_2"><span>Excel</span>
											<div
												style="position: absolute; left: 0px; top: 0px; width: 47px; height: 28px; z-index: 99;">
												<embed id="ZeroClipboard_TableToolsMovie_3"
													src="&lt;?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?&gt;"
													loop="false" menu="false" quality="best" bgcolor="#ffffff"
													width="47" height="28"
													name="ZeroClipboard_TableToolsMovie_3" align="middle"
													allowscriptaccess="always" allowfullscreen="false"
													type="application/x-shockwave-flash"
													pluginspage="http://www.macromedia.com/go/getflashplayer"
													flashvars="id=3&amp;width=47&amp;height=28"
													wmode="transparent">
											</div></a><a class="DTTT_button DTTT_button_pdf"
											id="ToolTables_example_3"><span>PDF</span>
											<div
												style="position: absolute; left: 0px; top: 0px; width: 41px; height: 28px; z-index: 99;">
												<embed id="ZeroClipboard_TableToolsMovie_4"
													src="&lt;?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?&gt;"
													loop="false" menu="false" quality="best" bgcolor="#ffffff"
													width="41" height="28"
													name="ZeroClipboard_TableToolsMovie_4" align="middle"
													allowscriptaccess="always" allowfullscreen="false"
													type="application/x-shockwave-flash"
													pluginspage="http://www.macromedia.com/go/getflashplayer"
													flashvars="id=4&amp;width=41&amp;height=28"
													wmode="transparent">
											</div></a><a class="DTTT_button DTTT_button_print"
											id="ToolTables_example_4" title="View print view"><span>Print</span></a>
									</div>
									<div class="clear"></div>
									<div id="example_length" class="dataTables_length">
										<label>Show <select size="1"
											style="width: 56px; padding: 6px;" name="example_length"
											aria-controls="example"><option value="10">10</option>
												<option value="25">25</option>
												<option value="50">50</option>
												<option value="100">100</option></select> entries
										</label>
									</div>
									<div class="dataTables_filter" id="example_filter">
										<label>Recherche : <input type="text"
											aria-controls="example"></label>
									</div>
									<table id="example"
										class="table table-striped responsive-utilities jambo_table dataTable"
										aria-describedby="example_info">
										<thead>
											<tr class="headings" role="row">
												<th class="sorting" role="columnheader" tabindex="0"
													aria-controls="example" rowspan="1" colspan="1"
													aria-label="Nom : activate to sort column ascending"
													style="width: 104px;">Nom</th>
												<th class="sorting" role="columnheader" tabindex="0"
													aria-controls="example" rowspan="1" colspan="1"
													aria-label="Invoice Date : activate to sort column ascending"
													style="width: 104px;">Prénom</th>
												<th class="sorting" role="columnheader" tabindex="0"
													aria-controls="example" rowspan="1" colspan="1"
													aria-label="Order : activate to sort column ascending"
													style="width: 104px;">Job</th>
												<th class="sorting" role="columnheader" tabindex="0"
													aria-controls="example" rowspan="1" colspan="1"
													aria-label="Status : activate to sort column ascending"
													style="width: 69px;">Mail</th>
												<th class="sorting" role="columnheader" tabindex="0"
													aria-controls="example" rowspan="1" colspan="1"
													aria-label="Status : activate to sort column ascending"
													style="width: 69px;">Photo</th>
												<th class="no-link last sorting" role="columnheader"
													tabindex="0" aria-controls="example" rowspan="1"
													colspan="1"
													aria-label="Action
                                                : activate to sort column ascending"
													style="width: 71px;"><span class="nobr">Action</span>
												</th>
											</tr>
										</thead>



										<tbody role="alert" aria-live="polite" aria-relevant="all">
											<tr class="pointer odd">

												<c:forEach var="membres" items="${listeMembres}">
													<tr>
														<td class=" ">${membres.nomMembre}</td>
														<td>${membres.prenomMembre}</td>
														<td>${membres.jobMembre}</td>
														<td>${membres.mailMembre}</td>
														<td>${membres.photoMembre}</td>
														<td class=" last "><a
															href="modifier?id=${membres.idMembre}"><span
																class="glyphicon glyphicon-pencil"> Modifier</a> <br>
															<a href="supprimer?id=${membres.idMembre}"><span
																class="glyphicon glyphicon-remove"> Supprimer</a></td>

													</tr>
												</c:forEach>
											</tr>
										</tbody>
									</table>
									<div class="dataTables_paginate paging_full_numbers"
										id="example_paginate">
										<a tabindex="0"
											class="first paginate_button paginate_button_disabled"
											id="example_first">First</a><a tabindex="0"
											class="previous paginate_button paginate_button_disabled"
											id="example_previous">Previous</a><span><a
											tabindex="0" class="paginate_active">1</a><a tabindex="0"
											class="paginate_button">2</a><a tabindex="0"
											class="paginate_button">3</a><a tabindex="0"
											class="paginate_button">4</a></span><a tabindex="0"
											class="next paginate_button" id="example_next">Next</a><a
											tabindex="0" class="last paginate_button" id="example_last">Last</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<br> <br> <br>

				</div>
			</div>
			<!-- footer content -->
			<!-- /footer content -->

		</div>
		<!-- /page content -->
	</div>

	</div>

	<div id="custom_notifications" class="custom-notifications dsp_none">
		<ul class="list-unstyled notifications clearfix"
			data-tabbed_notifications="notif-group">
		</ul>
		<div class="clearfix"></div>
		<div id="notif-group" class="tabbed_notifications"></div>
	</div>

	<script src="js/bootstrap.min.js"></script>

	<!-- chart js -->
	<script src="js/chartjs/chart.min.js"></script>
	<!-- bootstrap progress js -->
	<script src="js/progressbar/bootstrap-progressbar.min.js"></script>
	<script src="js/nicescroll/jquery.nicescroll.min.js"></script>
	<!-- icheck -->
	<script src="js/icheck/icheck.min.js"></script>

	<script src="js/custom.js"></script>


	<!-- Datatables -->
	<script src="js/datatables/js/jquery.dataTables.js"></script>
	<script src="js/datatables/tools/js/dataTables.tableTools.js"></script>
	<script>
		$(document).ready(function() {
			$('input.tableflat').iCheck({
				checkboxClass : 'icheckbox_flat-green',
				radioClass : 'iradio_flat-green'
			});
		});

		var asInitVals = new Array();
		$(document)
				.ready(
						function() {
							var oTable = $('#example')
									.dataTable(
											{
												"oLanguage" : {
													"sSearch" : "Search all columns:"
												},
												"aoColumnDefs" : [ {
													'bSortable' : false,
													'aTargets' : [ 0 ]
												} //disables sorting for column one
												],
												'iDisplayLength' : 12,
												"sPaginationType" : "full_numbers",
												"dom" : 'T<"clear">lfrtip',
												"tableTools" : {
													"sSwfPath" : "<?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?>"
												}
											});
							$("tfoot input").keyup(
									function() {
										/* Filter on the column based on the index of this element's parent <th> */
										oTable.fnFilter(this.value, $(
												"tfoot th").index(
												$(this).parent()));
									});
							$("tfoot input").each(function(i) {
								asInitVals[i] = this.value;
							});
							$("tfoot input").focus(function() {
								if (this.className == "search_init") {
									this.className = "";
									this.value = "";
								}
							});
							$("tfoot input")
									.blur(
											function(i) {
												if (this.value == "") {
													this.className = "search_init";
													this.value = asInitVals[$(
															"tfoot input")
															.index(this)];
												}
											});
						});
	</script>


	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 5px; z-index: auto; cursor: -webkit-grab; position: absolute; top: 0px; left: 225px; height: 620px; opacity: 0; display: none;">
		<div
			style="position: relative; top: 0px; float: right; width: 5px; height: 20px; border: 0px solid rgb(255, 255, 255); border-radius: 5px; background-color: rgba(42, 63, 84, 0.34902); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 5px; z-index: auto; top: 615px; left: 0px; position: absolute; opacity: 0; display: none;">
		<div
			style="position: relative; top: 0px; height: 5px; width: 0px; border: 0px solid rgb(255, 255, 255); border-radius: 5px; left: 0px; background-color: rgba(42, 63, 84, 0.34902); background-clip: padding-box;"></div>
	</div>
</body>
<!--  <table id="membre" class="table table-striped table-bordered"
	cellspacing="0" width="100%">
	<thead>
		<tr>
			<th>Nom</th>
			<th>Prénom</th>
			<th>Job</th>
			<th>Description</th>
			<th>Mail</th>
			<th>Facebook</th>
			<th>LinkedIn</th>
			<th>Twitter</th>
			<th>Instagram</th>
			<th>Photo</th>

		</tr>
	</thead>
	<c:forEach var="membres" items="${listeMembres}">
		<tr>
			<th>${membres.nomMembre}</th>
			<th>${membres.prenomMembre}</th>
			<th>${membres.jobMembre}</th>
			<th>${membres.descpritonMembre}</th>
			<th>${membres.mailMembre}</th>
			<th>${membres.facebookMembre}</th>
			<th>${membres.linkMembre}</th>
			<th>${membres.twitterMembre}</th>
			<th>${membres.instaMembre}</th>
			<th>${membres.photoMembre}</th>
		</tr>
	</c:forEach>


</table> -->