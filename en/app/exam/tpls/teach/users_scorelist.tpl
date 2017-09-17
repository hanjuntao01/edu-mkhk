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
							<li><a href="index.php?{x2;$_app}-teach-users">Course grade</a></li>
							<li class="active">Achievement statistics</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Achievement statistics
						<a class="ajax pull-right btn btn-primary" href="index.php?{x2;$_app}-teach-users-outscore&basicid={x2;$basicid}{x2;$u}">Derived result</a>
					</h4>
					<form action="index.php?exam-teach-users-scorelist&basicid={x2;$basicid}" method="post">
						<table class="table form-inline">
					        <tr>
								<td>
									Exam time：
								</td>
								<td>
									<input class="form-control datetimepicker" data-date="{x2;date:TIME,'Y-m-d'}" data-date-format="yyyy-mm-dd" type="text" name="search[stime]" size="10" id="stime" value="{x2;$search['stime']}"/> - <input class="form-control datetimepicker" data-date="{x2;date:TIME,'Y-m-d'}" data-date-format="yyyy-mm-dd" size="10" type="text" name="search[etime]" id="etime" value="{x2;$search['etime']}"/>
								</td>
								<td>
									Grade section：
								</td>
								<td>
									<input class="form-control" name="search[sscore]" id="sscore" type="text" value="{x2;$search['sscore']}"/> - <input class="form-control" type="text" name="search[escore]" id="escore" value="{x2;$search['escore']}"/>
								</td>
							</tr>
					        <tr>
					        	<td>
									Papers：
								</td>
								<td>
									<select name="search[examid]" class="form-control">
								  		<option value="0">Unlimited</option>
								  		{x2;tree:$exampaper,ep,eid}
								  		<option value="{x2;v:ep['examid']}"{x2;if:$search['examid'] == v:ep['examid']} selected{x2;endif}>{x2;v:ep['exam']}</option>
								  		{x2;endtree}
							  		</select>
								</td>
								<td>
								</td>
								<td><button class="btn btn-primary" type="submit">Submit</button> <a class="btn btn-primary" href="index.php?exam-teach-users-stats&basicid={x2;$basicid}{x2;$u}">Statistics</a></td>
					        </tr>
						</table>
						<div class="input">
							<input type="hidden" value="1" name="search[argsmodel]" />
						</div>
					</form>
			        <table class="table table-hover table-bordered">
						<thead>
							<tr class="info">
			                    <th>ID</th>
			                    <th>Ranking</th>
			                    <th>Student name</th>
			                    <th>Score</th>
						        <th>Test name</th>
						        <th>Test time</th>
						        <th>Use time</th>
						        <th>Operate</th>
			                </tr>
			            </thead>
			            <tbody>
		                    {x2;tree:$exams['data'],exam,eid}
					        <tr>
								<td>
									{x2;v:exam['ehid']}
								</td>
								<td>
									{x2;eval: echo ($page - 1) * 10 + v:eid}
								</td>
								<td>
									{x2;v:exam['ehusername']}
								</td>
								<td>
									{x2;v:exam['ehscore']}
								</td>
								<td>
									{x2;v:exam['ehexam']}
								</td>
								<td>
									{x2;date:v:exam['ehstarttime'],'Y-m-d H:i'}
								</td>
								<td>
									{x2;if:v:exam['ehtime'] >= 60}{x2;if:v:exam['ehtime']%60}{x2;eval: echo intval(v:exam['ehtime']/60)+1}{x2;else}{x2;eval: echo intval(v:exam['ehtime']/60)}{x2;endif} Minutes {x2;else}{x2;v:exam['ehtime']} Seconds {x2;endif}
								</td>
								<td><a class="btn btn-primary" href="index.php?exam-teach-users-readpaper&ehid={x2;v:exam['ehid']}" target="_blank">Marking</a>&nbsp;<a class="btn btn-primary hide" href="index.php?exam-teach-users-changescore&ehid={x2;v:exam['ehid']}" target="_blank">Correct points</a></td>
					        </tr>
					        {x2;endtree}
			        	</tbody>
			        </table>
			        <ul class="pagination pull-right">
			            {x2;$exams['pages']}
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