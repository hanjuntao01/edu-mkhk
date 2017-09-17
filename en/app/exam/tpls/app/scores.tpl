{x2;include:header}
<body>
{x2;include:nav}
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="box itembox" style="margin-bottom:0px;">
				<div class="col-xs-12">
					<ol class="breadcrumb">
					  <li><a href="index.php">Home</a></li>
					  
					  <li><a href="index.php?exam-app-basics">{x2;$data['currentbasic']['basic']}</a></li>
					  <li class="active">Exams Results</li>
					</ol>
				</div>
			</div>
			<div class="box itembox">
				<h4 class="title">Exams Results</h4>
				<blockquote class="questype" style="margin-top:20px;">
					<p>Your highest score:<span class="text-warning">{x2;$s['score']}</span> Your best ranking:<span class="text-warning">{x2;$s['index']}</span></p>
				</blockquote>
				<table class="table table-bordered table-hover">
					<tr class="info">
						<td>Ranking</td>
						<td>Name</td>
                        <td>Score</td>
						<td>Time for Exams</td>
						<td>Use Time</td>
					</tr>
					{x2;tree:$scores['data'],score,sid}
					<tr>
						<td>{x2;eval: echo ($page - 1)*20 + v:sid}</td>
						<td>{x2;v:score['usertruename']}</td>
						<td>{x2;v:score['ehscore']}</td>
						<td>{x2;date:v:score['ehstarttime'],'Y-m-d H:i:s'}</td>
						<td>{x2;if:v:score['ehtime'] >= 60}{x2;if:v:score['ehtime']%60}{x2;eval: echo intval(v:score['ehtime']/60)+1}{x2;else}{x2;eval: echo intval(v:score['ehtime']/60)}{x2;endif} Minites{x2;else}{x2;v:score['ehtime']} Seconds{x2;endif}</td>
					</tr>
				{x2;endtree}
				</table>
				<ul class="pagination pull-right">{x2;$scores['pages']}</ul>
			</div>
		</div>
	</div>
</div>
{x2;include:footer}
</body>
</html>