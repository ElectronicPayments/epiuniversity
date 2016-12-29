<!-- Page Sidebar -->
<div class="page-sidebar">
	
	<!-- Site header  -->
	<header class="site-header">
		<div class="site-logo"><a href="$BaseHref"><img src="$ThemeDir/images/logo-fc.png" height="35" alt="EPI University" title="EPI University"></a></div>
		<div class="sidebar-collapse hidden-xs"><a class="sidebar-collapse-icon" href="#"><i class="icon-menu"></i></a></div>
		<div class="sidebar-mobile-menu visible-xs"><a data-target="#side-nav" data-toggle="collapse" class="mobile-menu-icon" href="#"><i class="icon-menu"></i></a></div>
	</header>
	<!-- /site header -->
		
	<!-- Main navigation -->
	<ul id="side-nav" class="main-menu navbar-collapse collapse">
		<li class="navigation-header">Main</li>
			<% loop $Menu(2) %>
			<% if Children %>
			<li class="has-sub"><a href="$Link">
				<% if $MenuTitle == "Dashboard" %>
					<i class="fa fa-home"></i>
				<% else_if $MenuTitle == "Electronic Payments" %>
					<i class="icon2-epi-icon"></i>
				<% else_if $MenuTitle == "Exatouch" %>
					<i class="icon2-exa-icon"></i>
				<% else_if $MenuTitle == "Clover" %>
					<i class="icon2-clo-icon"></i>
				<% else_if $MenuTitle == "eGiftSolutions" %>
					<i class="icon2-egs-icon"></i>
				<% else_if $MenuTitle == "ProCharge" %>
					<i class="icon2-pro-icon"></i>
				<% else_if $MenuTitle == "Training Center" %>
					<i class="fa fa-graduation-cap"></i>
				<% end_if %>
				<span class="title">$MenuTitle</span></a>
				<ul class="nav collapse">
					<% loop Children %>
					<% if Children %>
						<li class="has-sub"><a href="$Link"><span class="title">$MenuTitle</span></a>
							<ul class="nav collapse">
								<% loop Children %>
								<li><a href="$Link"><span class="title">$MenuTitle</span></a></li>
								<% end_loop %>
							</ul>
						</li>
					<% else %>	
					<li><a href="$Link"><span class="title">$MenuTitle</span></a></li>
					<% end_if %>
					<% end_loop %>
				</ul>
			</li>
			<% else %>
			<li><a href="$Link"><i class="icon-gauge"></i><span class="title">$MenuTitle</span></a></li>
			<% end_if %>
			<% end_loop %>
                </li>

		<li class="navigation-header">Contact</li>

		<!--li class="has-sub"> 
			<a href="#/"><i class="icon-flow-tree"></i><span class="title">Menu Levels</span></a> 
			<ul class="nav collapse"> 
				<li class="has-sub">
					<a href="#/"><span class="title">Menu Level 1.3</span></a> 
					<ul class="nav collapse"> 
						<li><a href="#/"><span class="title">Menu Level 2.1</span></a></li> 
						<li class="has-sub">
							<a href="#/"><span class="title">Menu Level 2.2</span></a>
							<ul class="nav collapse"> 
								<li class="has-sub"> 
									<a href="#/"><span class="title">Menu Level 3.1</span></a> 
									<ul class="nav collapse"> 
										<li><a href="#/"><span class="title">Menu Level 4.1</span></a></li> 
									</ul> 
								</li> 
								<li><a href="#/"><span class="title">Menu Level 3.2</span></a></li> 
							</ul>
						</li> 
						<li><a href="#/"><span class="title">Menu Level 2.3</span></a></li> 
					</ul> 
				</li> 
			</ul> 
		</li-->
	</ul>
</div>
<!-- /main navigation -->		
<!-- /page sidebar -->
  