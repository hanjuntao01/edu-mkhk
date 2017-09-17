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
							<li><a href="index.php?{x2;$_app}-master-basic-subject">Subjects management</a></li>
							<li class="active">Chapter management</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Chapter management
						<a class="btn btn-primary pull-right" href="index.php?exam-master-basic-addsection&subjectid={x2;$subjectid}">Add chapter</a>
					</h4>
					<h4>{x2;$subjects[$subjectid]['subject']}</h4>
			        <table class="table table-hover table-bordered">
						<thead>
							<tr class="info">
			                    <th>Chapter ID</th>
								<th>Chapter name</th>
								<th>Operate</th>
			                </tr>
			            </thead>
			            <tbody>
		                    {x2;tree:$sections['data'],section,sid}
							<tr>
								<td>{x2;v:section['sectionid']}</td>
								<td>{x2;v:section['section']}</td>
								<td>
									<div class="btn-group">
										<a class="btn ajax" href="index.php?exam-master-basic-output&sectionid={x2;v:section['sectionid']}&page={x2;$page}{x2;$u}" title="Export"><em class="glyphicon glyphicon-download-alt"></em></a>
										<a class="btn" href="index.php?exam-master-basic-point&sectionid={x2;v:section['sectionid']}&page=1&basicid={x2;v:basic['basicid']}{x2;$u}" title="Chapter list"><em class="glyphicon glyphicon-th-list"></em></a>
										<a class="btn" href="index.php?exam-master-basic-modifysection&sectionid={x2;v:section['sectionid']}&page={x2;$page}{x2;$u}" title="Modify"><em class="glyphicon glyphicon-edit"></em></a>
										<a class="btn confirm" href="index.php?exam-master-basic-delsection&sectionid={x2;v:section['sectionid']}&page={x2;$page}{x2;$u}" title="Delete"><em class="glyphicon glyphicon-remove"></em></a>
									</div>
								</td>
							</tr>
							{x2;endtree}
			        	</tbody>
			        </table>
			        <ul class="pagination pull-right">
			            {x2;$sections['pages']}
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