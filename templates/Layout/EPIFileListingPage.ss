<!-- Main content -->
<div class="main-content">
	<h1 class="page-title">$Title</h1>
	<!-- Breadcrumb -->
	$Breadcrumbs

	<div class="row">
		<% if Title == Agent/ISO Forms %>
		<% include agentisoforms %>
		<% else_if Title == American Express %>
		<% include amexforms %>
		<% else_if Title == IC Matrix %>
		<% include icmatrixforms %>
		<% else_if Title == Spanish Language Materials %>
		<% include spanishforms %>
		
		<% else_if Title == Merchant Forms %>
		<% include merchantforms %>
		<% else_if Title == New Account Setups %>
		<% include newaccountsetups %>
		
		<% else_if Title == Underwriting %>
		<% include underwritingforms %>
		
		<% else_if Title == Welcome Kit Contents %>
		<% include welcomekitcontents %>
		<% else %>
		No Files Present. Sorry.
		<% end_if %>
	</div>
	<br><br><br><br><br>
		
	<!-- Footer -->
	<footer class="footer-main"> 
		&copy; 2016 <strong>Electronic Payments</strong> EPI University
	</footer>	
	<!-- /footer -->
</div>
<!-- /main content -->
</div>
<!-- /main container -->
</div>
<!-- /page container -->
<!--Load JQuery-->
<script src="$ThemeDir/js/jquery.min.js"></script>
<script src="$ThemeDir/js/bootstrap.min.js"></script>
<script src="$ThemeDir/plugins/metismenu/js/jquery.metisMenu.js"></script>
<script src="$ThemeDir/plugins/blockui-master/js/jquery-ui.js"></script>
<script src="$ThemeDir/plugins/blockui-master/js/jquery.blockUI.js"></script>
<script src="$ThemeDir/js/functions.js"></script>
<script src="$ThemeDir/js/loader.js"></script>
