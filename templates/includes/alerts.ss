<% loop Alerts.Sort(Date, DESC) %>
				<div class="col-md-4">
					<div class="hidden exp">$ExpDate.Month $ExpDate.DayOfMonth, $ExpDate.Year</div>
					<div class="panel panel-$AlertType">
						<div class="panel-heading clearfix">
							<h4 class="panel-title"><strong>Notification Type: <% if $AlertType == "danger" %>Urgent<% else_if $AlertType == "warning" %> 2nd Notice<% else_if $AlertType == "default" %>Generic<% end_if %></strong></h4>
						</div>
						<!-- panel body --> 
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table no-border">
									<tbody> 
										<tr> 
											<td><strong>Date:</strong></td> 
											<td>$Date.Month $Date.DayOfMonth, $Date.Year</td> 
										</tr> 
										<tr> 
											<td><strong>To</strong></td> 
											<td>$To</td> 
										</tr> 
										<tr> 
											<td><strong>Regarding:</strong></td> 
											<td>$Regarding</td> 
										</tr> 
									</tbody>
								</table>
								<button type="button" class="btn btn-default" data-toggle="modal" data-target="#$Scrabble">Read Full Notification</button>
							</div>
						</div> 
					</div>

					<div id="$Scrabble" class="modal fade" tabindex="-1" role="dialog" style="display: none;">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
        							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="icon-cancel"></i></span></button>
        							<h4 class="modal-title">$Title</h4>
      							</div>
								<div class="modal-body">
									<% if $AlertType == "danger" %><div class="alert alert-$AlertType" role="alert"><strong>URGENT!</strong> Please do not ignore this. It is serious business.</div><% end_if %>
									<div class="table-responsive">
										<table class="table no-border">
											<tbody> 
												<tr> 
													<td><strong>Date:</strong></td> 
													<td>$Date.Month $Date.DayOfMonth, $Date.Year</td> 
												</tr> 
												<tr> 
													<td><strong>To</strong></td> 
													<td>$To</td> 
												</tr> 
												<tr> 
													<td><strong>Regarding:</strong></td> 
													<td>$Regarding</td> 
												</tr> 
												<tr> 
													<td><strong>Content:</strong></td> 
													<td>$FullText</td> 
												</tr>
												<% if AlertFiles %>
												<tr> 
													<td><strong>Attachments:</strong></td> 
													<td><% loop AlertFiles %><a href="$Document.Link">$Document.Filename</a><% if $Last %><% else %>,<br><% end_if %><% end_loop %></td> 
												</tr>
												<% end_if %>									 
											</tbody>
										</table>
									</div>
								</div>
								<div class="modal-footer">
        							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      							</div>
							</div>
						</div>
					</div>
				</div>
				<% end_loop %>