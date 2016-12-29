<!-- Main content -->
<div class="main-content">
	<h1 class="page-title">$Title</h1>
	<br>
	<!-- Breadcrumb -->
	<div class="row">
		<div class="col-md-12">
			<span class="marq-title">$LeaderboardTitle</span>
			<div class="marquee">
				<% loop $Leaders.Sort(SortOrder, ASC) %>$SortOrder. <strong>$Name - $Metric</strong><% if $Last %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<% else %>&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<% end_if %><% end_loop %>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-8">
			<div class="row">
				<% include alerts %>
			</div>

			<div class="row">	
				<% include videos %>
			</div>
		</div>
		
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-heading clearfix">
					<h4 class="panel-title">Schedule of Events</h4>
				</div>
				<div class="panel-body">
					$Content
				</div>
			</div>
		</div>
	</div>
		
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading clearfix">
					<h4 class="panel-title">Most Recent Uploads</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-hover">
							<thead> 
								<tr> 
									<th>File Name</th> 
									<th class="taglabels">Tags</th> 
									<th>Last Edited</th>
								</tr> 
							</thead> 
							<tbody> 
								<% loop MostRecentUploads %>
								<tr> 
									<td><a href="<% if $Document %>$Document.Link" download<% else %>http://youtube.com/watch?v=$YTLink" target="new"<% end_if %>>$Title</a></td> 
									<td class="taglabels"><% loop FilterTags %><span class="badge">$Title</span><% end_loop %></td> 
									<td><% if $LastEdited.format(d/m/y) == $Now.format(d/m/y) %>$LastEdited.ago<% else %>$LastEdited.format(M d), $LastEdited.format(Y), $LastEdited.Time<% end_if %></td>
								</tr>
								<% end_loop %>
							</tbody> 
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row">
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading clearfix"> 
							<h4 class="panel-title">EPI On The Record</h4>
						</div> 
						<!-- panel body --> 
						<div class="panel-body">
							<ul class="list-item message-list">
								<% loop $latestBlog %>
								<li>
									<!--i class="fa fa-envelope-o fa-2x text-primary icon-mail"></i-->
									<div class="message-body">
										<h5><a href="$Link" rel="external" target="new">$Title</a></h5>
										<p>$Content.Summary(8)</p>
										<p>$PublishDate.format(M j), $PublishDate.format(Y)</p>
									</div>
								</li>
								<% end_loop %>
								
							</ul>
							<div class="more">
								<a href="https://electronicpayments.com/newsfeed" class="link uppercase" target="new"><button class="btn btn-sm btn-primary">EPI On The Record</button></a>
							</div>
						</div>
					</div>
				</div>
				
				
				
				
				
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading clearfix"> 
							<h4 class="panel-title">Newsroom Posts</h4>
						</div>
						<div class="panel-body">
							<div class="carousel slide" id="carousel3">
								<div class="carousel-inner">
									<div class="item gallery active">
										<div class="row">
											<% loop $UniNewsroomEntries %>
											<div class="col-sm-6">
												<div class="product-view">
													<div class="product-thumb">
														<img class="img-responsive img-bordered" title="" alt="" src="$NewsImage.CroppedImage(120,110).URL">			
													</div>
													<div class="product-detail">
														<a href=<% if $IsPressRelease %>"$AbsoluteLink" <% else %><% if $Document %>"$Document.URL" download<% else %>"$LinkToStory"<% end_if %><% end_if %> target="new" rel="external"><h5>$Title.LimitWordCount(8)</h5></a>
														<p>$Content.Summary(8)</p>
													</div>
												</div>
											</div>
											<% end_loop %>
										</div>
									</div>
								</div>
								<div class="carousel-footer">
										<!--div class="carousel-controller">	
											<a data-slide="prev" href="#carousel3" class="btn-carousel"><i class="icon-left-open-big"></i></a>
											<a data-slide="next" href="#carousel3" class="btn-carousel"><i class="icon-right-open-big"></i></a>
										</div-->
										<a href="https://electronicpayments.com/newsroom" class="link uppercase" target="new"><button class="btn btn-sm btn-primary">See all posts</button></a>									
								   </div>
								</div>
							</div>
						</div>
					</div>
				</div>
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

<script src="//cdn.jsdelivr.net/jquery.marquee/1.4.0/jquery.marquee.min.js" type="text/javascript"></script>

<script>
	$(function(){
		$('.exp').each(function(key,value){
      			console.log(value);
        		var currentDate = new Date();
        		var date = new Date($(value).text().split(' - ')[0]);
        		if(date < currentDate){
         			$(value).parent().remove();
        		}
    		});
	});
</script>
<script>
	$('.marquee').marquee({
		duration: 25000,
		duplicated: true
	});
		
</script>