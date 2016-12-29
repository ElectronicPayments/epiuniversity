<%-- Loop is all on one line to prevent whitespace bug in older versions of IE --%>
<% if $Pages %>
	<ol class="breadcrumb breadcrumb-2">
	<li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
	<% loop $Pages %>
		<% if $Last %>
			<li class="active"><strong>$MenuTitle.XML</strong></li>
		<% else %>
		<% if not Up.Unlinked %>
			<li><a href="$Link" class="breadcrumb-$Pos">
		<% end_if %>
			$MenuTitle.XML</li>
		<% if not Up.Unlinked %>
			</a></li>
		<% end_if %>
		<span style="padding:0 5px; color:#ccc;"> / </span>
		<% end_if %>
	<% end_loop %>
	</ol>
<% end_if %>