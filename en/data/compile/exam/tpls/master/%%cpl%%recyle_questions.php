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
							<li><a href="index.php?exam-master-recyle">Recycle bin</a></li>
							<li class="active">Deleted</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Deleted
						<a class="btn btn-primary pull-right" href="index.php?exam-master-recyle">Recycle bin</a>
					</h4>
			        <table class="table table-hover table-bordered">
						<thead>
							<tr class="info">
			                    <th>ID</th>
						        <th width="140">Questions type</th>
						        <th>Questions content</th>
						        <th width="100">Input user</th>
						        <th width="100">Input time</th>
						        <!-- <th>难度</th> -->
						        <th width="100">Operate</th>
			                </tr>
			            </thead>
			            <tbody>
		                    <?php $qid = 0;
 foreach($this->tpl_var['questions']['data'] as $key => $question){ 
 $qid++; ?>
					        <tr>
								<td>
									<?php echo $question['questionid']; ?>
								</td>
								<td>
									<?php echo $this->tpl_var['questypes'][$question['questiontype']]['questype']; ?>
								</td>
								<td>
									<a title="Check" class="selfmodal" href="javascript:;" url="index.php?exam-master-questions-detail&questionid=<?php echo $question['questionid']; ?>" data-target="#modal"><?php echo $this->G->make('strings')->subString(strip_tags(html_entity_decode($question['question'])),135); ?></a>
								</td>
								<td>
									<?php echo $question['questionusername']; ?>
								</td>
								<td>
									<?php echo date('Y-m-d',$question['questioncreatetime']); ?>
								</td>
								<!-- <td>
									<?php if($question['questionlevel']==2){ ?>中<?php } elseif($question['questionlevel']==3){ ?>难<?php } elseif($question['questionlevel']==1){ ?>易<?php } ?>
								</td> -->
								<td>
									<div class="btn-group">
			                    		<a class="btn ajax" href="index.php?exam-master-questions-backquestion&page=<?php echo $this->tpl_var['page']; ?>&questionid=<?php echo $question['questionid']; ?><?php echo $this->tpl_var['u']; ?>" title="Recovery"><em class="glyphicon glyphicon-edit"></em></a>
										<a class="btn confirm" href="index.php?exam-master-recyle-finaldelquestion&questionparent=0&page=<?php echo $this->tpl_var['page']; ?>&questionid=<?php echo $question['questionid']; ?><?php echo $this->tpl_var['u']; ?>" title="Remove completely"><em class="glyphicon glyphicon-remove"></em></a>
			                    	</div>
								</td>
					        </tr>
					        <?php } ?>
			        	</tbody>
			        </table>
					<ul class="pagination pull-right">
						<?php echo $this->tpl_var['questions']['pages']; ?>
					</ul>
				</div>
			</div>
<?php if(!$this->tpl_var['userhash']){ ?>
		</div>
	</div>
</div>
<div id="modal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button aria-hidden="true" class="close" type="button" data-dismiss="modal">×</button>
				<h4 id="myModalLabel">
					Questions details
				</h4>
			</div>
			<div class="modal-body"></div>
			<div class="modal-footer">
				 <button aria-hidden="true" class="btn btn-primary" data-dismiss="modal">close</button>
			</div>
		</div>
	</div>
</div>
<?php $this->_compileInclude('footer'); ?>
</body>
</html>
<?php } ?>