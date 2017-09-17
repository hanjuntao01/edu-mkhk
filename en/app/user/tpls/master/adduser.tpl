{x2;include:header}<body>{x2;include:nav}<div class="container-fluid">	<div class="row-fluid">		<div class="main">			<div class="col-xs-2" style="padding-top:10px;margin-bottom:0px;">				{x2;include:menu}			</div>			<div class="col-xs-10" id="datacontent">				<div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">					<div class="col-xs-12">						<ol class="breadcrumb">							<li><a href="index.php?{x2;$_app}-master">{x2;$apps[$_app]['appname']}</a></li>							<li><a href="index.php?{x2;$_app}-master-user">User management</a></li>							<li class="active">Add user</li>						</ol>					</div>				</div>				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">					<h4 class="title" style="padding:10px;">						Add user						<a class="pull-right btn btn-primary" href="index.php?user-master-user">User list</a>					</h4>					<form action="index.php?user-master-user-add" method="post" class="form-horizontal" style="margin-top:40px;">						<div class="form-group">							<label for="username" class="control-label col-sm-2">Username</label>							<div class="col-sm-4">								<input class="form-control" name="args[username]" id="username" size="25" type="text" value="" needle="needle" datatype="username" max="40" alt="Please enter a user name"  msg="User name must be in English and Chinese characters not less than 3 characters"/>								<span class="help-block">Please enter a user name</span>							</div>						</div>						<div class="form-group">							<label for="password1" class="control-label col-sm-2">Password</label>							<div class="col-sm-4">								<input class="form-control" type="password" id="password1" needle="needle" datatype="password" min="6" max="20" msg="Password must be more than 6 characters" name="args[userpassword]"/>								<span class="help-block">Password must be more than 6 characters</span>							</div>						</div>						<div class="form-group">							<label for="password2" class="control-label col-sm-2">Confirm Password</label>							<div class="col-sm-4">								<input class="form-control" type="password" id="password2" equ="password1" needle="needle" datatype="password" msg="Repeat the password must be consistent with the previous password" name="args[userpassword2]"/>								<span class="help-block">Repeat the password must be consistent with the previous password</span>							</div>						</div>						<div class="form-group">							<label for="email" class="control-label col-sm-2">Email</label>							<div class="col-sm-4">								<input class="form-control" type="text" id="email" needle="needle" datatype="email" name="args[useremail]" msg="Please enter the correct format of the e-mail"/>								<span class="help-block">Please enter the correct format of the e-mail</span>							</div>						</div>						<div class="form-group">							<label for="modules" class="control-label col-sm-2">Model</label>							<div class="col-sm-4">								<select id="modules" class="form-control combox" name="args[usergroupid]" needle="needle" msg="You must select a model for this user" target="groupid" refUrl="index.php?user-master-ajax-getActorsByModule&moduleid={value}">									<option value="">Select model</option>									{x2;tree:$modules,module,mid}									<option value="{x2;v:module['moduleid']}">{x2;v:module['modulename']}</option>									{x2;endtree}								</select>								<span class="help-block">You must select a model for this user</span>							</div>						</div>						<div class="form-group">							<label for="groupid" class="control-label col-sm-2">Role</label>							<div class="col-sm-4">								<select id="groupid" class="form-control" name="args[usergroupid]" needle="needle" msg="You must select a role for this user" autocomplete="off" default="Please select the model first">									<option value="">Please select the model first</option>								</select>								<span class="help-block">You must select a role for this user</span>							</div>						</div>						<div class="form-group">							<label for="groupid" class="control-label col-sm-2"></label>							<div class="col-sm-4">								<button class="btn btn-primary" type="submit">Submit</button>								<input type="hidden" name="insertUser" value="1"/>								<input type="hidden" name="page" value="{x2;$page}"/>								{x2;tree:$search,arg,aid}								<input type="hidden" name="search[{x2;v:key}]" value="{x2;v:arg}"/>								{x2;endtree}							</div>						</div>					</form>				</div>			</div>		</div>	</div></div>{x2;include:footer}</body></html>