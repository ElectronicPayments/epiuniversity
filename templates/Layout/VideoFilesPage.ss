<!-- Main content -->
<div class="main-content">
	<h1 class="page-title">$Title</h1>
	<!-- Breadcrumb -->
	$Breadcrumbs

	<div class="row">
		<% loop VideoFiles.Sort(Title, ASC) %>
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="media"> 
						<div class="media-body"> 
							<h4 class="media-heading">$Title</h4>
							<% loop $FilterTags %><span class="badge">$Title</span><% end_loop %> 
							<p><% if $LastEdited.format(d/m/y) == $Now.format(d/m/y) %>$LastEdited.ago<% else %>$LastEdited.format(M d), $LastEdited.format(Y), $LastEdited.Time<% end_if %></p>
							<div class="embed-section">
								<div class="embed-responsive embed-responsive-16by9">
									<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/$YTLink" allowfullscreen=""></iframe>
								</div>
							</div>
							<% if Description %><p>$Description</p><% else %><p>No Description Available.</p><% end_if %>
						</div> 
					</div>
				</div>
			</div>
		</div>
	<% if $MultipleOf(2) %>
	</div>
	<div class="row">
	<% end_if %>
	<% end_loop %>
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
