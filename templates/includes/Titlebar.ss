<!-- Main container -->
<div class="main-container">
	
	<!-- Main header -->
    	<div class="main-header row">
    		<div class="col-sm-6 col-xs-7">
	  
			<!-- User info -->
        		<ul class="user-info pull-left">          
          			<% with $CurrentMember %>
				<li class="profile-info dropdown">$BlogProfileImage.URL
					<a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false">
						<% control BlogProfileImage.CroppedImage(80,80) %>
						<img width="44" class="img-circle avatar" alt="" src="$URL">
						<% end_control %>
						<% if $FirstName && $Surname %>$FirstName $Surname<% else_if $FirstName %>$FirstName<% else %>$Email<% end_if %>
						<span class="caret"></span>
					</a>
				<% end_with %>
		  
					<!-- User action menu -->
            				<ul class="dropdown-menu">
              					<li><a href="member-profile-page"><i class="icon-user"></i>My profile</a></li>
			  			<li class="divider"></li>
			  			<li><a href="member-profile-page"><i class="icon-cog"></i>Account settings</a></li>
			  			<li><a href="Security/Logout"><i class="icon-logout"></i>Logout</a></li>
            				</ul>
					<!-- /user action menu -->
			
          			</li>
        		</ul>
			<!-- /user info -->
		</div>
	  
      		<div class="col-sm-6 col-xs-5">
			<div class="pull-right">
				<!-- User alerts -->
				<ul class="user-info pull-left">				  
				  	<!-- Messages -->


				  	<div id="users">
						<li class="notifications dropdown">
							<a data-close-others="true" data-hover="dropdown" data-toggle="dropdown" class="dropdown-toggle" href="#"><i class="icon-search"></i></a>
							<ul class="dropdown-menu pull-right">
							
								<li class="first">
									<div class="dropdown-content-header">
										<input type="search" placeholder="Search all files..." class="form-control search" />
									</div>
								</li>
								<li>
									<ul class="media-list list">
										<% loop GlobalFilter.Sort(Title, ASC) %>
										<li class="media">
											<div class="media-body">
												<a class="media-heading name" href="$Document.Link" download>
													<span class="text-semibold">$Title</span>
												</a>
												<span class="tags hidden"><% loop $FilterTags %><span class="badge">$Title</span><% end_loop %></span>
												<span class="text-muted"><% if Description %><p>$Description.LimitCharacters(80)</p><% else %><p>No Description Available.</p><% end_if %></span>									
											</div>
										</li>
										<% end_loop %>
									</ul>
								</li>

							</ul>
				  		</li>
					</div>



				  	<!-- /messages -->
				</ul>
				<!-- /user alerts -->
			</div>
		</div>
    	</div>
	<!-- /main header -->