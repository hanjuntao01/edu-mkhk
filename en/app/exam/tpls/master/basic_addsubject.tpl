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
							<li><a href="index.php?{x2;$_app}-master-basic-subject">Subject management</a></li>
							<li class="active">Add subject</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Add subject
						<a class="btn btn-primary pull-right" href="index.php?exam-master-basic-subject">Subject management</a>
					</h4>
			        <form action="index.php?exam-master-basic-addsubject" method="post" class="form-horizontal">
						<fieldset>
							<div class="form-group">
								<label for="subject" class="control-label col-sm-2">Subject name：</label>
								<div class="col-sm-4">
									<input class="form-control" name="subject" id="subject" type="text" size="30" value="" needle="needle" msg="You must enter a name for the subject" />
								</div>
							</div>
							<div class="form-group">
								<label for="subject" class="control-label col-sm-2">Subject type：</label>
								<div class="col-sm-9">
									{x2;tree:$questypes,questype,qid}
									<label class="checkbox-inline">
						          		<input type="checkbox" name="setting[questypes][{x2;v:questype['questid']}]" value="1" checked/> {x2;v:questype['questype']}
						          	</label>
						          	{x2;endtree}
								</div>
							</div>
							<div class="form-group">
							  	<label for="subject" class="control-label col-sm-2"></label>
							  	<div class="col-sm-9">
								  	<button class="btn btn-primary" type="submit">Submit</button>
									<input type="hidden" name="insertsubject" value="1"/>
									<input type="hidden" name="page" value="{x2;$page}"/>
								</div>
							</div>
						</fieldset>
					</form>
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