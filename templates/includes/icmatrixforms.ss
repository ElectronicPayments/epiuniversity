<% loop ICMatrixForms.Sort(Title, ASC) %>
	<div class="col-lg-6">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="media"> 
					<div class="media-left">
						<% with Document %>
						<img class="thumbnail" src="$Thumbnail.SetWidth(190).url" alt="$Filename"/>
						<% end_with %>
					</div> 
					<div class="media-body"> 
						<h4 class="media-heading">$Title</h4>
						<% loop $FilterTags %><span class="badge">$Title</span><% end_loop %> 
						<p><% if $LastEdited.format(d/m/y) == $Now.format(d/m/y) %>$LastEdited.ago<% else %>$LastEdited.format(M d), $LastEdited.format(Y), $LastEdited.Time<% end_if %></p>
						<% if Description %><p>$Description</p><% else %><p>No Description Available.</p><% end_if %>
						<a href="$Document.Link" class="btn btn-success" download />Download</a>
						<% if $AvailableInSpanish %><br><br>
						<a href="/electronic-payments/agentiso-forms-and-documents/spanish-language-materials/" class="btn btn-xs btn-default" type="button">Tambi&eacute;n disponible en espa&ntilde;ol</a>
						<% end_if %>
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