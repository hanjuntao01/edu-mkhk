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
							<li><a href="index.php?{x2;$_app}-master-basic-questype">Question type management</a></li>
							<li class="active">Add question type</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Add question type
						<a class="btn btn-primary pull-right" href="index.php?exam-master-basic-questype&page={x2;$page}{x2;$u}">Question type management</a>
					</h4>
			        <form action="index.php?exam-master-basic-addquestype" method="post" class="form-horizontal">
						<fieldset>
						<div class="form-group">
							<label for="questype" class="control-label col-sm-2">Question type name：</label>
							<div class="col-sm-4">
								<input class="form-control" name="args[questype]" id="questype" type="text" size="30" value="" needle="needle" alt="Please enter the item name" />
							</div>
						</div>
						<div class="form-group">
							<label for="questsort" class="control-label col-sm-2">Question type category：</label>
							<div class="col-sm-4">
								<select class="combox form-control" id="questsort" name="args[questsort]" onchange="javascript:if($(this).val() == '1')$('#choicebox').hide();else $('#choicebox').show();">
									<option value="1">Subjective</option>
		  							<option value="0">Objective</option>
								</select>
							</div>
						</div>
						<div id="choicebox" style="display:none;" class="form-group">
							<label for="questchoice" class="control-label col-sm-2">Item category：</label>
							<div class="col-sm-4">
								<select class="combox form-control" name="args[questchoice]" id="questchoice">
									<option value="1">单选</option>
									<option value="2">多选</option>
									<option value="3">不定项选</option>
									<option value="4">判断</option>
									<option value="5">定值填空题</option>
								</select>
								<!-- <span class="help-block">不定项选按照选对答案数给分，判断题将自动生成判断选项。</span> -->
							</div>
						</div>
						<div class="form-group">
						  	<label for="questchoice" class="control-label col-sm-2"></label>
						  	<div class="col-sm-9">
							  	<button class="btn btn-primary" type="submit">Submit</button>
							  	<input type="hidden" name="page" value="{x2;$page}"/>
							  	<input type="hidden" name="insertquestype" value="1"/>
							  	{x2;tree:$search,arg,aid}
								<input type="hidden" name="search[{x2;v:key}]" value="{x2;v:arg}"/>
								{x2;endtree}
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