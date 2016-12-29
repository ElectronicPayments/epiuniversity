<!-- Main content -->
<div class="main-content">
	<h1 class="page-title">$Title</h1>
	<!-- Breadcrumb -->
	$Breadcrumbs
	
	<div class="row">
		<div class="col-md-5"> 
			<div class="panel panel-default">
				<div class="panel-heading clearfix"> 
					<% with $CurrentMember %>
					<h4 class="panel-title">Welcome back, $FirstName</h4>
					<% end_with %>  
				</div>
				<!-- panel body --> 
				<div class="panel-body"> 
					<form id="Form_ProfileForm" action="$BaseHref/member-profile-page/ProfileForm" method="post" enctype="multipart/form-data">
						<div class="row">
                      					<div class="col-md-4">
								<div id="Form_ProfileForm_Image_Holder" class="field checkablevisibility">
									<% with $CurrentMember %>
									<label class="left" for="Form_ProfileForm_Image">Profile Image</label>
									<div class="user-display-avatar"><% if Image %>$CurrentMember.Image.CroppedImage(110,110)<% else %><img src="$Themedir/assets/img/UserImage.png" alt="avatar"/><% end_if %></div>
									<% end_with %>
								</div>
							</div>

							<div class="col-md-8">
									<label class="left" for="Form_ProfileForm_Image">Select or drop a file</label>
									<!--ul class="ss-uploadfield-files files"></ul-->
									<div class="ss-uploadfield-item ss-uploadfield-addfile">
										<!--div class="ss-uploadfield-item-preview ss-uploadfield-dropzone ui-corner-all">Select or drop a file</div-->
										<div class="ss-uploadfield-item-info">
											<label class="ss-uploadfield-fromcomputer ss-ui-button ui-corner-all" title="Select from files">
												<input id="Form_ProfileForm_Image" name="Image[Uploads][]" class="dropzone upload ss-upload ss-uploadfield ss-uploadfield-fromcomputer-fileinput" data-config="{&quot;url&quot;:&quot;\/epiwebsites\/epiuniversity\/member-profile-page\/ProfileForm\/field\/Image\/upload&quot;,&quot;urlSelectDialog&quot;:&quot;\/epiwebsites\/epiuniversity\/member-profile-page\/ProfileForm\/field\/Image\/select&quot;,&quot;urlAttach&quot;:&quot;\/epiwebsites\/epiuniversity\/member-profile-page\/ProfileForm\/field\/Image\/attach&quot;,&quot;urlFileExists&quot;:&quot;\/epiwebsites\/epiuniversity\/member-profile-page\/ProfileForm\/field\/Image\/fileexists&quot;,&quot;acceptFileTypes&quot;:&quot;(\\.|\\\/)(jpg|jpeg|png|gif)$&quot;,&quot;maxNumberOfFiles&quot;:1,&quot;replaceFile&quot;:false,&quot;errorMessages&quot;:{&quot;acceptFileTypes&quot;:&quot;Extension is not allowed&quot;,&quot;maxFileSize&quot;:&quot;File size exceeds 64 MB&quot;,&quot;maxNumberOfFiles&quot;:&quot;Can only upload one file&quot;,&quot;overwriteWarning&quot;:&quot;File with the same name already exists&quot;},&quot;maxFileSize&quot;:67108864,&quot;autoUpload&quot;:true,&quot;allowedMaxFileNumber&quot;:null,&quot;canUpload&quot;:true,&quot;canAttachExisting&quot;:&quot;CMS_ACCESS_AssetAdmin&quot;,&quot;canPreviewFolder&quot;:true,&quot;changeDetection&quot;:true,&quot;previewMaxWidth&quot;:80,&quot;previewMaxHeight&quot;:60,&quot;uploadTemplateName&quot;:&quot;ss-uploadfield-uploadtemplate&quot;,&quot;downloadTemplateName&quot;:&quot;ss-uploadfield-downloadtemplate&quot;,&quot;overwriteWarning&quot;:true}" type="file">
											</label>
											<div class="clear"><!-- --></div>
										</div>
										<div class="clear"><!-- --></div>
									<input type="checkbox" name="Visible[Image]" value="1" class="checkbox nolabel" id="Form_ProfileForm_Visible_Image" disabled="disabled" checked="checked" style="display:none">
								</div>
						</div>

						<p id="Form_ProfileForm_error" class="message " style="display: none"></p>
						<% with $CurrentMember %>
							<div class="form-group xs-pt-10">
								<label class="left" for="Form_ProfileForm_FirstName">First Name</label>
								<input type="text" name="FirstName" value="$FirstName" class="input-sm form-control text" id="Form_ProfileForm_FirstName">
							</div>

							<div class="form-group xs-pt-10">
								<label class="left" for="Form_ProfileForm_Surname">Last Name</label>
								<input type="text" name="Surname" value="$Surname" class="input-sm form-control text" id="Form_ProfileForm_Surname">
							</div>

							<div class="form-group xs-pt-10">
								<label class="left" for="Form_ProfileForm_Email">Email Address</label>
								<input type="text" name="Email" value="$Email" class="input-sm form-control text" id="Form_ProfileForm_Email" required="required" aria-required="true">
							</div>
							<% end_with %>
			
							<div id="Form_ProfileForm_Password_Holder" class="field confirmedpassword nolabel">
								<div class="middleColumn">
									<div class="showOnClick">
										<a href="$BaseHref/member-profile-page#"><button class="btn btn-space btn-default"><i class="icon icon-left mdi mdi-lock"></i> Change Password</button></a>
										<div class="showOnClickContainer" style="overflow: hidden; display: none; padding-top:20px;">
											<div id="Password_CurrentPassword_Holder" class="field text password">
												<div class="form-group">
													<label class="left" for="Password_CurrentPassword">Current Password</label>
													<input type="password" name="Password[_CurrentPassword]" class="input-sm form-control text password" id="Password_CurrentPassword" autocomplete="off">
												</div>
											</div>
													
											<div id="Password_Password_Holder" class="field text password">
												<div class="form-group">
													<label class="left" for="Password_Password">New Password</label>
													<input type="password" name="Password[_Password]" class="input-sm form-control text password" id="Password_Password" autocomplete="off">
												</div>
											</div>
		
											<div id="Password_ConfirmPassword_Holder" class="field text password">
												<div class="form-group">
													<label class="left" for="Password_ConfirmPassword">Confirm Password</label>
													<input type="password" name="Password[_ConfirmPassword]" class="input-sm form-control text password" id="Password_ConfirmPassword" autocomplete="off">
												</div>
											</div>
											
											<input type="hidden" name="Password[_PasswordFieldVisible]" class="hidden" id="Password_PasswordFieldVisible" autocomplete="off">
										</div>
									</div>
								</div>
							</div>
																			
							<input type="hidden" name="SecurityID" value="$securityID" class="hidden" id="Form_ProfileForm_SecurityID">
							<div class="clear"><!-- --></div>
							<div class="row form-group xs-pt-10">
        							<div class="col-xs-6">
                        						<!--div class="be-checkbox">
                        							<input id="check1" type="checkbox">
                        							<label for="check1">Remember me</label>
                        						</div-->
                      						</div>
                      						<div class="col-xs-6">
                        						<p class="text-right">
                        							<button id="Form_ProfileForm_action_save" name="action_save" value="Save" class="action btn btn-space btn-primary">Save</button>
                          							<button class="btn btn-space btn-default">Cancel</button>
                        						</p>
                      						</div>
                    					</div>
			
							<!--div class="Actions">
								<button id="Form_ProfileForm_action_save" name="action_save" value="Save" class="action btn btn-lg btn-space btn-primary"><i style="color:white" class="icon icon-left mdi mdi-download"></i> Save</button>
								<!--input type="submit" name="action_save" value="Save" class="action" id="Form_ProfileForm_action_save"-->					
							</div-->
						</div>
					</form>

					<% if $CanAddMembers %>
          				<h2><%t MemberProfiles.ADDMEMBER 'Add Member' %></h2>
          				<p><%t MemberProfiles.ADDMEMBERLINK 'You can use this page to <a href="{addLink}">add a new member</a>.' addLink=$Link(add) %></p>
          				
					<h2><%t MemberProfiles.YOURPROFILE 'Your Profile' %></h2>
          				$Form
          				<% else %>
          				<% end_if %>
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



				