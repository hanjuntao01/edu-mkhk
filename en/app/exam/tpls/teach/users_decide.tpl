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
							<li><a href="index.php?{x2;$_app}-teach-users">Course Grade</a></li>
							<li class="active">Given Marks</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Given Marks
					</h4>
					<form action="index.php?exam-teach-users-makescore" method="post" class="form-horizontal">
					{x2;eval: v:oid = 0}
					{x2;tree:$questype,quest,qid}
					{x2;eval: v:oid++}
					{x2;if:v:quest['questsort']}
					{x2;if:$sessionvars['ehquestion']['questions'][v:quest['questid']] || $sessionvars['ehquestion']['questionrows'][v:quest['questid']]}
					<h4>{x2;$ols[v:oid]}、{x2;v:quest['questype']}</h4>
					{x2;eval: v:tid = 0}
					{x2;tree:$sessionvars['ehquestion']['questions'][v:quest['questid']],question,qnid}
					{x2;eval: v:tid++}
					<table class="table table-hover table-bordered">
						<tr class="info">
							<td style="width:80px;">Questions {x2;v:tid}</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>Title：</td>
							<td>{x2;eval: echo strip_tags(html_entity_decode(v:question['question']))}</td>
						</tr>
						<tr>
							<td>Key：</td>
							<td>{x2;realhtml:v:question['questionanswer']}</td>
						</tr>
						<tr>
							<td>Answer：</td>
							<td>{x2;realhtml:$sessionvars['ehuseranswer'][v:question['questionid']]}</td>
						</tr>
						<tr>
							<td colspan="2" class="form-inline">【Given Marks】<input size="8" class="form-control" type="text" needle="needle" msg="Given Marks" name="score[{x2;v:question['questionid']}]" value=""> <span>Total marks are {x2;$sessionvars['ehsetting']['examsetting']['questype'][v:quest['questid']]['score']} points and marks  could be a mulitple of 0.5</span></td>
						</tr>
					</table>
					{x2;endtree}
					{x2;tree:$sessionvars['ehquestion']['questionrows'][v:quest['questid']],rowsquestion,qrid}
					{x2;eval: v:tid++}
					<table class="table table-hover table-bordered">
						<tr>
							<td>
								<table class="table">
									<tr class="info">
										<td>Questions {x2;v:tid}</td>
									</tr>
									<tr>
										<td>{x2;realhtml:v:rowsquestion['qrquestion']}</td>
									</tr>
								</table>
								{x2;tree:v:rowsquestion['data'],question,cqid}
								<table class="table" width="96%">
									<tr class="info">
										<td style="width:80px;">Questions {x2;v:cqid}</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>标题：</td>
										<td>{x2;eval: echo strip_tags(html_entity_decode(v:question['question']))}</td>
									</tr>
									<tr>
										<td>标准答案：</td>
										<td>{x2;realhtml:v:question['questionanswer']}</td>
									</tr>
									<tr>
										<td>考生答案：</td>
										<td>{x2;realhtml:$sessionvars['ehuseranswer'][v:data['questionid']]}&nbsp;</td>
									</tr>
									<tr>
										<td colspan="2" class="form-inline">【请根据参考答案给出分值】<input size="8" class="form-control" needle="needle" msg="您必须给出一个分数" type="text" name="score[{x2;v:question['questionid']}]" value=""> <span>提示：本题共{x2;$sessionvars['ehsetting']['examsetting']['questype'][v:quest['questid']]['score']}分，可输入0.5的倍数。</span></td>
									</tr>
								</table>
								{x2;endtree}
							</td>
						</tr>
					</table>
					{x2;endtree}
					{x2;endif}
					{x2;endif}
					{x2;endtree}
					<div class="form-group">
			            <div class="text-center">
			            	<input type="hidden" name="makescore" value="1" />
			            	<input type="hidden" name="ehid" value="{x2;$sessionvars['ehid']}" />
			            	<button class="btn btn-primary" type="submit">Submit</button>
			            </div>
					</div>
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