{x2;include:header}
<body>
{x2;include:nav}
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="box itembox" style="margin-bottom:0px;">
				<ul class="breadcrumb">
					<li>
						<span class="icon-home"></span> <a href="index.php">Home</a>
					</li>
					<li>
						<a href="index.php?exam-app-basics">{x2;$data['currentbasic']['basic']}</a>
					</li>
					<li class="active">
						Exam Records
					</li>
				</ul>
			</div>
			<div class="box itembox" style="padding-top:24px;">
				<ul class="nav nav-tabs">
				<!-- 
					<li{x2;if:$ehtype == 0} class="active"{x2;endif}>
						<a href="index.php?exam-app-history">强化训练</a>
					</li> -->
					<!-- <li{x2;if:$ehtype == 1} class="active"{x2;endif}>
						<a href="index.php?exam-app-history&ehtype=1">Simulation Test</a>
					</li> -->
					<li{x2;if:$ehtype == 2} class="active"{x2;endif}>
						<a href="index.php?exam-app-history&ehtype=2">Test</a>
					</li>
				</ul>
				<blockquote class="questype" style="margin-top:20px;">
					{x2;if:$ehtype == 0}
					<p><span class="text-warning">Hint: </span>Select one from Simulation Test and Test.</p>
					{x2;elseif:$ehtype == 1}
					<p>You have completed  <b class="text-warning">{x2;$exams['number']}</b> tests, <b class="text-warning">{x2;$avgscore}</b> on average. Keep on trying!</p>
					{x2;elseif:$ehtype == 2}
					<p>You have completed  <b class="text-warning">{x2;$exams['number']}</b> tests, <b class="text-warning">{x2;$avgscore}</b> on average. Keep on trying!</p>
					{x2;endif}
				</blockquote>
				<table class="table table-bordered table-hover">
					<tr class="info">
						<td>Answer record</td>
						<td>Answer time</td>
						<td>Use time</td>
                        <td>Score</td>
						<td>Wrong number</td>
						<td>Check error</td>
						<!-- <td>Analysis</td> -->
						<td>Redo the papers</td>
						<td>Delete record</td>
					</tr>
					{x2;tree:$exams['data'],exam,eid}
					<tr>
						<td>{x2;v:exam['ehexam']}</td>
						<td>{x2;date:v:exam['ehstarttime'],'Y-m-d'}</td>
						<td>{x2;if:v:exam['ehtime'] >= 60}{x2;if:v:exam['ehtime']%60}{x2;eval: echo intval(v:exam['ehtime']/60)+1}{x2;else}{x2;eval: echo intval(v:exam['ehtime']/60)}{x2;endif} Minutes{x2;else}{x2;v:exam['ehtime']} Seconds{x2;endif}</td>
                        <td><b class="red">{x2;if:!v:exam['ehstatus'] && v:exam['ehdecide']}Paper Scoring{x2;else}{x2;v:exam['ehscore']}{x2;endif}</b></td>
						<td><b class="red">{x2;v:exam['errornumber']}</b></td>
						<td><a href="index.php?exam-app-record-wrongs&ehid={x2;v:exam['ehid']}">Check error</a></td>
						<!-- <td><a href="index.php?exam-app-history-view&ehid={x2;v:exam['ehid']}">Analysis</a></td> -->
						<td><a class="ajax" href="index.php?exam-app-history-redo&ehid={x2;v:exam['ehid']}" action-before="clearStorage">Redo the papers</a></td>
						<td>
							{x2;if:$ehtype != 2}
							<a class="ajax" href="index.php?exam-app-history-del&ehid={x2;v:exam['ehid']}">Delete</a>
							{x2;else}
							-
							{x2;endif}
						</td>
					</tr>
				{x2;endtree}
				</table>
				{x2;if:$exams['pages'] && $ehtype}
				<ul class="pagination pull-right">{x2;$exams['pages']}</ul>
				{x2;endif}
			</div>
		</div>
	</div>
</div>
{x2;include:footer}
</body>
</html>