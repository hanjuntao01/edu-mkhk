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
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-master"><?php echo $this->tpl_var['apps'][$this->tpl_var['_app']]['appname']; ?></a></li>
							<li class="active">Subjects management</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Subjects management
						<a class="btn btn-primary pull-right" href="index.php?exam-master-basic-addsubject">Add subjects</a>
					</h4>
			        <table class="table table-hover table-bordered">
						<thead>
							<tr class="info">
			                    <th>Subjects ID</th>
								<th>Subjects name</th>
								<th>Operate</th>
			                </tr>
			            </thead>
			            <tbody>
		                    <?php $sid = 0;
 foreach($this->tpl_var['subjects'] as $key => $subject){ 
 $sid++; ?>
							<tr>
								<td><?php echo $subject['subjectid']; ?></td>
								<td><?php echo $subject['subject']; ?></td>
								<td>
									<div class="btn-group">
										<a class="btn ajax" href="index.php?exam-master-basic-output&subjectid=<?php echo $subject['subjectid']; ?>&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>" title="Export"><em class="glyphicon glyphicon-download-alt"></em></a>
										<a class="btn" href="index.php?exam-master-basic-section&subjectid=<?php echo $subject['subjectid']; ?>&page=1&basicid=<?php echo $basic['basicid']; ?><?php echo $this->tpl_var['u']; ?>" title="Chapter list"><em class="glyphicon glyphicon-th-list"></em></a>
										<a class="btn" href="index.php?exam-master-basic-modifysubject&subjectid=<?php echo $subject['subjectid']; ?>&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>" title="Modify"><em class="glyphicon glyphicon-edit"></em></a>
										<a class="btn ajax" href="index.php?exam-master-basic-delsubject&subjectid=<?php echo $subject['subjectid']; ?>&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>" title="Delete"><em class="glyphicon glyphicon-remove"></em></a>
									</div>
								</td>
							</tr>
							<?php } ?>
			        	</tbody>
			        </table>
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