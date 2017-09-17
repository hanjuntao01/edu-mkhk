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
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach-users">Course grade</a></li>
							<li class="active">Achievement statistics</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Achievement statistics
						<a class="ajax pull-right btn btn-primary" href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach-users-outscore&basicid=<?php echo $this->tpl_var['basicid']; ?><?php echo $this->tpl_var['u']; ?>">Derived result</a>
					</h4>
					<form action="index.php?exam-teach-users-scorelist&basicid=<?php echo $this->tpl_var['basicid']; ?>" method="post">
						<table class="table form-inline">
					        <tr>
								<td>
									Exam time：
								</td>
								<td>
									<input class="form-control datetimepicker" data-date="<?php echo date('Y-m-d',TIME); ?>" data-date-format="yyyy-mm-dd" type="text" name="search[stime]" size="10" id="stime" value="<?php echo $this->tpl_var['search']['stime']; ?>"/> - <input class="form-control datetimepicker" data-date="<?php echo date('Y-m-d',TIME); ?>" data-date-format="yyyy-mm-dd" size="10" type="text" name="search[etime]" id="etime" value="<?php echo $this->tpl_var['search']['etime']; ?>"/>
								</td>
								<td>
									Grade section：
								</td>
								<td>
									<input class="form-control" name="search[sscore]" id="sscore" type="text" value="<?php echo $this->tpl_var['search']['sscore']; ?>"/> - <input class="form-control" type="text" name="search[escore]" id="escore" value="<?php echo $this->tpl_var['search']['escore']; ?>"/>
								</td>
							</tr>
					        <tr>
					        	<td>
									Papers：
								</td>
								<td>
									<select name="search[examid]" class="form-control">
								  		<option value="0">Unlimited</option>
								  		<?php $eid = 0;
 foreach($this->tpl_var['exampaper'] as $key => $ep){ 
 $eid++; ?>
								  		<option value="<?php echo $ep['examid']; ?>"<?php if($this->tpl_var['search']['examid'] == $ep['examid']){ ?> selected<?php } ?>><?php echo $ep['exam']; ?></option>
								  		<?php } ?>
							  		</select>
								</td>
								<td>
								</td>
								<td><button class="btn btn-primary" type="submit">Submit</button> <a class="btn btn-primary" href="index.php?exam-teach-users-stats&basicid=<?php echo $this->tpl_var['basicid']; ?><?php echo $this->tpl_var['u']; ?>">Statistics</a></td>
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
		                    <?php $eid = 0;
 foreach($this->tpl_var['exams']['data'] as $key => $exam){ 
 $eid++; ?>
					        <tr>
								<td>
									<?php echo $exam['ehid']; ?>
								</td>
								<td>
									<?php echo ($this->tpl_var['page'] - 1) * 10 + $eid; ?>
								</td>
								<td>
									<?php echo $exam['ehusername']; ?>
								</td>
								<td>
									<?php echo $exam['ehscore']; ?>
								</td>
								<td>
									<?php echo $exam['ehexam']; ?>
								</td>
								<td>
									<?php echo date('Y-m-d H:i',$exam['ehstarttime']); ?>
								</td>
								<td>
									<?php if($exam['ehtime'] >= 60){ ?><?php if($exam['ehtime']%60){ ?><?php echo intval($exam['ehtime']/60)+1; ?><?php } else { ?><?php echo intval($exam['ehtime']/60); ?><?php } ?> Minutes <?php } else { ?><?php echo $exam['ehtime']; ?> Seconds <?php } ?>
								</td>
								<td><a class="btn btn-primary" href="index.php?exam-teach-users-readpaper&ehid=<?php echo $exam['ehid']; ?>" target="_blank">Marking</a>&nbsp;<a class="btn btn-primary hide" href="index.php?exam-teach-users-changescore&ehid=<?php echo $exam['ehid']; ?>" target="_blank">Correct points</a></td>
					        </tr>
					        <?php } ?>
			        	</tbody>
			        </table>
			        <ul class="pagination pull-right">
			            <?php echo $this->tpl_var['exams']['pages']; ?>
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