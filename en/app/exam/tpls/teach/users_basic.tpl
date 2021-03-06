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
							<li><a href="index.php?{x2;$_app}-teach">Test module</a></li>
							<li class="active">Course Grade</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Course Grade
					</h4>
					<form action="index.php?exam-teach-users" method="post">
						<table class="table form-inline">
							<thead>
				                <tr>
							        <th colspan="2">Search</th>
							        <th></th>
							        <th></th>
							        <th></th>
							        <th></th>
				                </tr>
				            </thead>
							<tr>
								<td>
									Examination room ID：
								</td>
								<td>
									<input name="search[basicid]" class="form-control" type="text" class="number" value="{x2;$search['basicid']}"/>
								</td>
								<td>
									Keyword：
								</td>
								<td>
									<input class="form-control" name="search[keyword]" type="text" value="{x2;$search['keyword']}"/>
								</td>
								<td>
									Area：
								</td>
					        	<td>
					        		<select name="search[basicareaid]" class="form-control">
						        		<option value="0">Select area</option>
								  		{x2;tree:$areas,area,aid}
								  		<option value="{x2;v:area['areaid']}"{x2;if:v:area['areaid'] == $search['basicareaid']} selected{x2;endif}>{x2;v:area['area']}</option>
								  		{x2;endtree}
							  		</select>
					        	</td>
					        </tr>
					        <tr>
					        	<td>
									API mark：
								</td>
								<td>
									<input class="form-control" name="search[basicapi]" type="text" value="{x2;$search['basicapi']}"/>
								</td>
								<td>
									Subjects：
								</td>
								<td>
					        		<select name="search[basicsubjectid]" class="form-control">
						        		<option value="0">Select subjects</option>
								  		{x2;tree:$subjects,subject,sid}
								  		<option value="{x2;v:subject['subjectid']}"{x2;if:v:subject['subjectid'] == $search['basicsubjectid']} selected{x2;endif}>{x2;v:subject['subject']}</option>
								  		{x2;endtree}
							  		</select>
					        	</td>
								<td>
									<button class="btn btn-primary" type="submit">Submit</button>
								</td>
								<td></td>
							</tr>
						</table>
						<div class="input">
							<input type="hidden" value="1" name="search[argsmodel]" />
						</div>
					</form>
			        <table class="table table-hover table-bordered">
						<thead>
							<tr class="info">
			                    <th><input type="checkbox" class="checkall"/></th>
			                    <th>Examination room ID</th>
						        <th>Examination room name</th>
						        <th>Examination room area</th>
						        <th>Examination subject</th>
						        <th>operate</th>
			                </tr>
			            </thead>
			            <tbody>
			                {x2;tree:$basics['data'],basic,bid}
					        <tr>
								<td>
									<input type="checkbox" name="delids[{x2;v:basic['basicid']}]" value="1"/>
								</td>
								<td>
									{x2;v:basic['basicid']}
								</td>
								<td>
									{x2;v:basic['basic']}
								</td>
								<td>
									{x2;$areas[v:basic['basicareaid']]['area']}
								</td>
								<td>
									{x2;$subjects[v:basic['basicsubjectid']]['subject']}
								</td>
								<td>
									<div class="btn-group">
										<a class="btn" href="index.php?exam-teach-users-scorelist&page={x2;$page}&basicid={x2;v:basic['basicid']}{x2;$u}" title="Achievement statistics"><em class="glyphicon glyphicon-subscript"></em></a>
									 	<a class="btn" href="index.php?exam-teach-users-exams&page={x2;$page}&basicid={x2;v:basic['basicid']}{x2;$u}" title="Subjective question marking"><em class="glyphicon glyphicon-saved"></em></a> 
									</div>
								</td>
					        </tr>
					        {x2;endtree}
			        	</tbody>
			        </table>
			        <ul class="pagination pull-right">
						{x2;$basics['pages']}
			        </ul>
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