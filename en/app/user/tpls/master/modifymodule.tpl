{x2;if:!$userhash}
{x2;include:header}
<body>
{x2;include:nav}
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="col-xs-2" style="padding-top:10px;margin-bottom:0px;">
				{x2;include:menu}
			</div>
			<div class="col-xs-10" id="datacontent">
{x2;endif}
				<div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">
						<div class="col-xs-12">
							<ol class="breadcrumb">
								<li><a href="index.php?{x2;$_app}-master">{x2;$apps[$_app]['appname']}</a></li>
								<li><a href="index.php?{x2;$_app}-master-module">User model</a></li>
								<li class="active">Modify model</li>
							</ol>
						</div>
					</div>
					<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
						<h4 class="title" style="padding:10px;">
							{x2;$module['modulename']}
							<a class="pull-right btn btn-primary" href="index.php?user-master-module">Model list</a>
						</h4>
				    	<form action="index.php?user-master-module-modify" method="post" class="form-horizontal" style="margin-top:20px;">
							<fieldset>
								<div class="form-group">
									<label for="modulename" class="control-label col-sm-2">Model name：</label>
									<div class="col-sm-4">
										<input class="form-control" type="text" size="40" name="args[modulename]" needle="needle" datatype="username" id="modulename" value="{x2;$module['modulename']}"/>
									</div>
								</div>
						        <div class="form-group">
							        <label class="control-label col-sm-2" for="moduledescribe">Model describe：</label>
					          		<div class="col-sm-9">
					          			<textarea class="form-control" rows="7" name="args[moduledescribe]" id="moduledescribe">{x2;$module['moduledescribe']}</textarea>
						        	</div>
						        </div>
						        <div class="form-group">
									<label class="control-label col-sm-2" for="moduledescribe"></label>
									<div class="col-sm-8">
										<button class="btn btn-primary" type="submit">Submit</button>
							        	<input type="hidden" name="moduleid" value="{x2;$module['moduleid']}"/>
							        	<input type="hidden" name="modifymodule" value="1"/>
										<input type="hidden" name="page" value="{x2;$page}"/>
										{x2;tree:$search,arg,aid}
										<input type="hidden" name="search[{x2;v:key}]" value="{x2;v:arg}"/>
										{x2;endtree}
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
{x2;if:!$userhash}
		</div>
	</div>
</div>
{x2;include:footer}
</body>
</html>
{x2;endif}