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
				<div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">
						<div class="col-xs-12">
							<ol class="breadcrumb">
								<li><a href="index.php?{x2;$_app}-master">{x2;$apps[$_app]['appname']}</a></li>
								<li><a href="index.php?user-master-module">Model management</a></li>
								<li class="active">Add model</li>
							</ol>
						</div>
					</div>
					<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
						<h4 class="title" style="padding:10px;">
							Add model
							<a class="pull-right btn btn-primary" href="index.php?user-master-module">Model list</a>
						</h4>
						<form action="index.php?user-master-module-add" method="post" class="form-horizontal">
							<fieldset>
								<div class="form-group">
								</div>
								<div class="form-group">
									<label for="modulename" class="control-label col-sm-2">Model name</label>
									<div class="col-sm-4">
										<input class="form-control" id="modulename" name="args[modulename]" type="text" value="" needle="needle" min="2" max="40" alt="Please enter a model name" msg="The model name is not more than 40 words in Chinese and English characters and can not be empty"/>
										<span class="help-block">Please enter a model name</span>
									</div>
								</div>
								<div class="form-group">
									<label for="modulecode" class="control-label col-sm-2">Model code</label>
									<div class="col-sm-4">
										<input class="form-control" id="modulecode" name="args[modulecode]" type="text" value="" needle="needle" datatype="english" max="12" alt="Please enter a model code" msg="Please enter the English model code within 12 words"/>
										<span class="help-block">Please enter the English model code within 12 words</span>
									</div>
								</div>
								<div class="form-group">
									<label for="moduledescribe" class="control-label col-sm-2">Model describe</label>
									<div class="col-sm-9">
										<textarea class="form-control" rows="7" id="moduledescribe" name="args[moduledescribe]"></textarea>
										<span class="help-block">Describe the model</span>
									</div>
								</div>
								<div class="form-group">
									<label for="moduledescribe" class="control-label col-sm-2"></label>
									<div class="col-sm-9">
										<button class="btn btn-primary" type="submit">Submit</button>
										<input type="hidden" name="insertmodule" value="1"/>
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
		</div>
	</div>
</div>
{x2;include:footer}
</body>
</html>