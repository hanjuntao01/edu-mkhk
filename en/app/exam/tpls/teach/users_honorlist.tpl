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
							<li><a href="index.php?{x2;$_app}-teach">{x2;$apps[$_app]['appname']}</a></li>
							<li class="active">Certificate</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">Certificate</h4>
					
			        <table class="table table-hover table-bordered">
						<thead>
							<tr class="info">
			                    <th>ID</th>
			                    <th>Place</th>
			                    <th>Username</th>
			                    <th>Score</th>
						        <!-- <th>考试名称</th> -->
						        <th>Time</th>
						        <th>Use Time</th>
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
								<!-- <td>
									{x2;v:exam['ehexam']}
								</td> -->
								<td>
									{x2;date:v:exam['ehstarttime'],'Y-m-d H:i'}
								</td>
								<td>
									{x2;if:v:exam['ehtime'] >= 60}{x2;if:v:exam['ehtime']%60}{x2;eval: echo intval(v:exam['ehtime']/60)+1}{x2;else}{x2;eval: echo intval(v:exam['ehtime']/60)}{x2;endif}分钟{x2;else}{x2;v:exam['ehtime']}秒{x2;endif}
								</td>
								<td><a class="btn btn-primary" href="index.php?exam-teach-users-honordetail&userid={x2;v:exam['ehuserid']}&ehscore={x2;v:exam['ehscore']}" target="_blank">View</a></td>
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