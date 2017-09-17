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
							<li class="active">Test paper management</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Test paper management
						<span class="pull-right">
							<a data-toggle="dropdown" class="btn btn-primary" href="#">Add Test paper<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
							<!-- 	<li><a href="index.php?{x2;$_app}-teach-exams-autopage&page={x2;$page}{x2;$u}">随机组卷</a></li> -->
								<li><a href="index.php?{x2;$_app}-teach-exams-selfpage&page={x2;$page}{x2;$u}">Manual test paper</a></li>
							<!-- 	<li><a href="index.php?{x2;$_app}-teach-exams-temppage&page={x2;$page}{x2;$u}">即时组卷</a></li> -->
							</ul>
						</span>
					</h4>
			        <form action="index.php?exam-teach-exams" method="post" class="form-inline">
						<table class="table">
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
									Select type：
								</td>
								<td>
									<select name="search[examtype]" class="form-control">
										<option value="0">unlimited</option>
									<!-- 	<option value="1"{x2;if:$search['examtype'] == 1} selected{x2;endif}>随机抽题</option> -->
										<option value="2"{x2;if:$search['examtype'] == 2} selected{x2;endif}>Manual test paper</option>
									<!-- 	<option value="2"{x2;if:$search['examtype'] == 3} selected{x2;endif}>即时组卷</option> -->
									</select>
								</td>
								<td>
									Select subject：
								</td>
								<td>
									<select name="search[examsubject]" class="form-control">
										<option value="0">Unlimited</option>
										{x2;tree:$subjects,subject,sid}
								  		<option value="{x2;v:subject['subjectid']}"{x2;if:v:subject['subjectid'] == $search['examsubject']} selected{x2;endif}>{x2;v:subject['subject']}</option>
								  		{x2;endtree}
									</select>
								</td>
								<td>
									<button class="btn btn-primary" type="submit">Search</button>
									<input type="hidden" value="1" name="search[argsmodel]" />
								</td>
							</tr>
						</table>
					</form>
			        <table class="table table-hover table-bordered">
						<thead>
							<tr class="info">
			                    <th>ID</th>
						        <th>Test name</th>
						        <th>Input user</th>
						    <!--     <th>Test paper type</th> -->
						        <th>Test paper time</th>
						        <th>Test paper subject</th>
						        <th>Operate</th>
			                </tr>
			            </thead>
			            <tbody>
		                    {x2;tree:$exams['data'],exam,eid}
					        <tr>
								<td>
									{x2;v:exam['examid']}
								</td>
								<td>
									{x2;v:exam['exam']}
								</td>
								<td>
									{x2;v:exam['examauthor']}
								</td>
							<!-- 	<td>
									{x2;if:v:exam['examtype'] == 1}随机组卷{x2;elseif:v:exam['examtype'] == 2}手工组卷{x2;else}即时组卷{x2;endif}
								</td> -->
								<td>
									{x2;date:v:exam['examtime'],'Y-m-d'}
								</td>
								<td>
									{x2;$subjects[v:exam['examsubject']]['subject']}
								</td>
								<td>
									<div class="btn-group">
			                    		{x2;if:v:exam['examtype'] != 1}
			                    		<a class="btn" target="_blank" href="index.php?{x2;$_app}-teach-exams-preview&examid={x2;v:exam['examid']}{x2;$u}" title="Check the papers"><em class="glyphicon glyphicon-list-alt"></em></a>
			                    		{x2;endif}
			                    		{x2;if:v:exam['examtype'] == 3}
			                    		<a class="btn ajax" href="index.php?{x2;$_app}-teach-exams-outcsv&page={x2;$page}&examid={x2;v:exam['examid']}{x2;$u}" title="Download csv"><em class="glyphicon glyphicon-download-alt"></em></a>
			                    		{x2;endif}
			                    		<a class="btn" href="index.php?{x2;$_app}-teach-exams-modify&page={x2;$page}&examid={x2;v:exam['examid']}{x2;$u}" title="Modify"><em class="glyphicon glyphicon-edit"></em></a>
										<a class="btn confirm" href="index.php?{x2;$_app}-teach-exams-del&page={x2;$page}&examid={x2;v:exam['examid']}{x2;$u}" title="Delete"><em class="glyphicon glyphicon-remove"></em></a>
			                    	</div>
								</td>
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