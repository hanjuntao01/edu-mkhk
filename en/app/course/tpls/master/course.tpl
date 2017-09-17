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
							{x2;if:$catid}
							<li><a href="index.php?{x2;$_app}-master-course">Course management</a></li>
							<li class="active">{x2;$categories[$catid]['catname']}</li>
							{x2;else}
							<li class="active">Course management</li>
							{x2;endif}
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Category management
						<a class="btn btn-primary pull-right" href="index.php?course-master-course-add&catid={x2;$catid}&page={x2;$page}">Add course</a>
					</h4>
					<h4>{x2;if:$catid}{x2;$categories[$catid]['catname']}{x2;else}All course{x2;endif}</h4>
					<form action="index.php?course-master-course" method="post" class="form-inline">
						<table class="table">
					        <tr>
								<td>
									Course ID：
								</td>
								<td>
									<input name="search[courseid]" class="form-control" size="15" type="text" class="number" value="{x2;$search['courseid']}"/>
								</td>
								<td>
									Add time：
								</td>
								<td>
									<input class="form-control datetimepicker" data-date="{x2;date:TIME,'Y-m-d'}" data-date-format="yyyy-mm-dd" type="text" name="search[stime]" size="10" id="stime" value="{x2;$search['stime']}"/> - <input class="form-control datetimepicker" data-date="{x2;date:TIME,'Y-m-d'}" data-date-format="yyyy-mm-dd" size="10" type="text" name="search[etime]" id="etime" value="{x2;$search['etime']}"/>
								</td>
								<td>
									Keyword：
								</td>
								<td>
									<input class="form-control" name="search[keyword]" size="15" type="text" value="{x2;$search['keyword']}"/>
								</td>
							</tr>
					        <tr>
								<td>
									Category：
								</td>
								<td colspan="3">
							  		<div class="form-inline form-group">
								  		<select msg="You must select a category" class="autocombox form-control" name="search[cscatid]" refUrl="index.php?course-master-category-ajax-getchildcategory&catid={value}">
							            	<option value="">Select top category</option>
							            	{x2;tree:$parentcat,cat,cid}
							            	<option value="{x2;v:cat['catid']}"{x2;if:$catid == v:cat['catid']} selected{x2;endif}>{x2;v:cat['catname']}</option>
							            	{x2;endtree}
							            </select>
						            </div>
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
					<form action="index.php?course-master-course-lite" method="post">
						<fieldset>
							<table class="table table-hover table-bordered">
								<thead>
									<tr class="info">
					                    <th width="36"><input type="checkbox" class="checkall" target="delids"/></th>
					                <!--     <th width="40">权重</th> -->
					                    <th width="36">ID</th>
					                    <th width="80">Thumbnail</th>
								        <th>Title</th>
								        <th width="100">Category</th>
								        <th width="100">Time</th>
								        <th width="140">Operate</th>
					                </tr>
					            </thead>
					            <tbody>
					            	{x2;tree:$courses['data'],course,cid}
					            	<tr>
					                    <td><input type="checkbox" name="delids[{x2;v:course['csid']}]" value="1"></td>
					                <!--     <td><input class="form-control" type="text" name="ids[{x2;v:course['csid']}]" value="{x2;v:course['cssequence']}" style="width:36px;padding:2px 5px;"/></td> -->
					                    <td>{x2;v:course['csid']}</td>
					                    <td class="picture"><img src="../{x2;if:v:course['csthumb']}{x2;v:course['csthumb']}{x2;else}app/core/styles/images/noupload.gif{x2;endif}" alt="" style="width:24px;"/></td>
					                    <td>
					                        {x2;v:course['cstitle']}
					                    </td>
					                    <td>
					                    	<a href="index.php?course-master-course&catid={x2;v:course['cscatid']}" target="">{x2;$categories[v:course['cscatid']]['catname']}</a>
					                    </td>
					                    <td>
					                    	{x2;date:v:course['cstime'],'Y-m-d'}
					                    </td>
					                    <td class="actions">
					                    	<div class="btn-group">
					                    		<a class="btn" href="index.php?course-master-contents&courseid={x2;v:course['csid']}" title="Courseware list"><em class="glyphicon glyphicon-list"></em></a>
												<a class="btn" href="index.php?course-master-course-edit&catid={x2;v:course['cscatid']}&courseid={x2;v:course['csid']}&page={x2;$page}{x2;$u}" title="Modify"><em class="glyphicon glyphicon-edit"></em></a>
												<a class="btn confirm" href="index.php?course-master-course-del&catid={x2;v:course['cscatid']}&courseid={x2;v:course['csid']}&page={x2;$page}{x2;$u}" title="Delete"><em class="glyphicon glyphicon-remove"></em></a>
					                    	</div>
					                    </td>
					                </tr>
					                {x2;endtree}
					        	</tbody>
					        </table>
					        <div class="form-group">
					            <div class="controls">
						            <label class="radio-inline">
						                <input type="radio" name="action" value="modify" checked/>Sort
						            </label>
						            <label class="radio-inline">
						                <input type="radio" name="action" value="movecategory" />Move
						            </label>
						            <label class="radio-inline">
						                <input type="radio" name="action" value="delete" />Delete
						            </label>
						            {x2;tree:$search,arg,sid}
						            <input type="hidden" name="search[{x2;v:key}]" value="{x2;v:arg}"/>
						            {x2;endtree}
						            <label class="radio-inline">
						            	<button class="btn btn-primary" type="submit">Submit</button>
						            </label>
						            <input type="hidden" name="modifycoursesequence" value="1"/>
						            <input type="hidden" name="catid" value="{x2;$catid}"/>
						            <input type="hidden" name="page" value="{x2;$page}"/>
						        </div>
					        </div>
							<ul class="pagination pull-right">
								{x2;$courses['pages']}
							</ul>
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