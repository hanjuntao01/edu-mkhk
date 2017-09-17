<?php if(!$this->tpl_var['userhash']){ ?>
<?php $this->_compileInclude('header'); ?>
<body>
<?php $this->_compileInclude('nav'); ?>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="col-xs-2" style="padding-top:10px;margin-bottom:0px;">
				<?php $this->_compileInclude('menu'); ?>
			</div>
			<div class="col-xs-10" id="datacontent">
<?php } ?>
				<div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">
					<div class="col-xs-12">
						<ol class="breadcrumb">
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach">Test module</a></li>
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
									<input name="search[basicid]" class="form-control" type="text" class="number" value="<?php echo $this->tpl_var['search']['basicid']; ?>"/>
								</td>
								<td>
									Keyword：
								</td>
								<td>
									<input class="form-control" name="search[keyword]" type="text" value="<?php echo $this->tpl_var['search']['keyword']; ?>"/>
								</td>
								<td>
									Area：
								</td>
					        	<td>
					        		<select name="search[basicareaid]" class="form-control">
						        		<option value="0">Select area</option>
								  		<?php $aid = 0;
 foreach($this->tpl_var['areas'] as $key => $area){ 
 $aid++; ?>
								  		<option value="<?php echo $area['areaid']; ?>"<?php if($area['areaid'] == $this->tpl_var['search']['basicareaid']){ ?> selected<?php } ?>><?php echo $area['area']; ?></option>
								  		<?php } ?>
							  		</select>
					        	</td>
					        </tr>
					        <tr>
					        	<td>
									API mark：
								</td>
								<td>
									<input class="form-control" name="search[basicapi]" type="text" value="<?php echo $this->tpl_var['search']['basicapi']; ?>"/>
								</td>
								<td>
									Subjects：
								</td>
								<td>
					        		<select name="search[basicsubjectid]" class="form-control">
						        		<option value="0">Select subjects</option>
								  		<?php $sid = 0;
 foreach($this->tpl_var['subjects'] as $key => $subject){ 
 $sid++; ?>
								  		<option value="<?php echo $subject['subjectid']; ?>"<?php if($subject['subjectid'] == $this->tpl_var['search']['basicsubjectid']){ ?> selected<?php } ?>><?php echo $subject['subject']; ?></option>
								  		<?php } ?>
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
			                <?php $bid = 0;
 foreach($this->tpl_var['basics']['data'] as $key => $basic){ 
 $bid++; ?>
					        <tr>
								<td>
									<input type="checkbox" name="delids[<?php echo $basic['basicid']; ?>]" value="1"/>
								</td>
								<td>
									<?php echo $basic['basicid']; ?>
								</td>
								<td>
									<?php echo $basic['basic']; ?>
								</td>
								<td>
									<?php echo $this->tpl_var['areas'][$basic['basicareaid']]['area']; ?>
								</td>
								<td>
									<?php echo $this->tpl_var['subjects'][$basic['basicsubjectid']]['subject']; ?>
								</td>
								<td>
									<div class="btn-group">
										<a class="btn" href="index.php?exam-teach-users-scorelist&page=<?php echo $this->tpl_var['page']; ?>&basicid=<?php echo $basic['basicid']; ?><?php echo $this->tpl_var['u']; ?>" title="Achievement statistics"><em class="glyphicon glyphicon-subscript"></em></a>
									 	<a class="btn" href="index.php?exam-teach-users-exams&page=<?php echo $this->tpl_var['page']; ?>&basicid=<?php echo $basic['basicid']; ?><?php echo $this->tpl_var['u']; ?>" title="Subjective question marking"><em class="glyphicon glyphicon-saved"></em></a> 
									</div>
								</td>
					        </tr>
					        <?php } ?>
			        	</tbody>
			        </table>
			        <ul class="pagination pull-right">
						<?php echo $this->tpl_var['basics']['pages']; ?>
			        </ul>
				</div>
			</div>
<?php if(!$this->tpl_var['userhash']){ ?>
		</div>
	</div>
</div>
<?php $this->_compileInclude('footer'); ?>
</body>
</html>
<?php } ?>