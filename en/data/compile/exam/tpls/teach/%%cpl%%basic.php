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
							<li class="active">Exam room management</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Exam room management
					<!-- 	<a class="btn btn-primary pull-right" href="index.php?exam-teach-basic-add">Add Exam room</a> -->
					</h4>
					<form action="index.php?exam-teach-basic" method="post">
						<table class="table" class="form-inline">
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
									Exam room ID：
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
					        	<td></td>
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
									Status：
								</td>
					        	<td>
					        		<select name="search[basicclosed]" class="form-control">
						        		<option value="0">Unlimited</option>
						        		<option value="1"<?php if(1 == $this->tpl_var['search']['basicclosed']){ ?> selected<?php } ?>>only close</option>
						        		<option value="-1"<?php if(-1 == $this->tpl_var['search']['basicclosed']){ ?> selected<?php } ?>>only open</option>
							  		</select>
					        	</td>
								<td>
									<button class="btn btn-primary" type="submit">Submit</button>
								</td>

							</tr>
						</table>
						<div class="input">
							<input type="hidden" value="1" name="search[argsmodel]" />
						</div>
					</form>
			        <form action="index.php?exam-teach-basic-batdelbasic" method="post">
				        <table class="table table-hover table-bordered">
							<thead>
								<tr class="info">
				                    <th><input type="checkbox" class="checkall"/></th>
				                    <th>Exam room ID</th>
							        <th>Exam room name</th>
							        <th>Exam room area</th>
							        <th>Exam room subject</th>
							    <!--     <th>开通人数</th> -->
							        <th>Status</th>
							        <th>Operate</th>
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
							<!-- 		<td>
										<span class="autoloaditem" autoload="index.php?exam-teach-basic-getbasicmembernumber&basicid=<?php echo $basic['basicid']; ?>"></span>
									</td> -->
									<td>
										<?php if($basic['basicclosed']){ ?>close<?php } else { ?>open<?php } ?>
									</td>
									<td>
										<div class="btn-group">
											<!-- <a class="btn" href="index.php?exam-teach-basic-offpaper&page=<?php echo $this->tpl_var['page']; ?>&basicid=<?php echo $basic['basicid']; ?><?php echo $this->tpl_var['u']; ?>" title="Exam scheduling"><em class="glyphicon glyphglyphicon glyphicon-wrench"></em></a> -->
											<a class="btn" href="index.php?exam-teach-basic-setexamrange&page=<?php echo $this->tpl_var['page']; ?>&basicid=<?php echo $basic['basicid']; ?><?php echo $this->tpl_var['u']; ?>" title="Exam scope"><em class="glyphicon glyphglyphicon glyphicon-cog"></em></a>
											<a class="btn" href="index.php?exam-teach-basic-modifybasic&page=<?php echo $this->tpl_var['page']; ?>&basicid=<?php echo $basic['basicid']; ?><?php echo $this->tpl_var['u']; ?>" title="modify"><em class="glyphicon glyphglyphicon glyphicon-edit"></em></a>
											<a class="btn confirm" href="index.php?exam-teach-basic-delbasic&basicid=<?php echo $basic['basicid']; ?>&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>" title="delete"><em class="glyphicon glyphglyphicon glyphicon-remove"></em></a>
										</div>
									</td>
						        </tr>
						        <?php } ?>
				        	</tbody>
				        </table>
				        <div class="form-group">
				            <div class="col-sm-9">
				            	<button class="btn btn-primary" type="submit">Delete</button>
				            </div>
						</div>
					</form>
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