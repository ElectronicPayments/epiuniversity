<% loop MostRecentVideoUploads %>
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
												<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/$VideoURL" allowfullscreen=""></iframe>
											</div>
										</div>
										<% if Description %><p>$Description</p><% else %><p>No Description Available.</p><% end_if %>
									</div> 
								</div>
							</div>
						</div>
					</div>
					<% end_loop %>