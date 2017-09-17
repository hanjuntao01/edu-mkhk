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
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach"><?php echo $this->tpl_var['apps'][$this->tpl_var['_app']]['appname']; ?></a></li>
							<li class="active">Certificate</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">Certificate</h4>
					
			        <table class="table table-hover table-bordered">
						<thead>
							<tr class="info">
			                    <th>ID</th>
			                    <th>Place</th>
			                    <th>Username</th>
			                    <th>Score</th>
						        <!-- <th>考试名称</th> -->
						        <th>Time</th>
						        <th>Use Time</th>
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
								<!-- <td>
									<?php echo $exam['ehexam']; ?>
								</td> -->
								<td>
									<?php echo date('Y-m-d H:i',$exam['ehstarttime']); ?>
								</td>
								<td>
									<?php if($exam['ehtime'] >= 60){ ?><?php if($exam['ehtime']%60){ ?><?php echo intval($exam['ehtime']/60)+1; ?><?php } else { ?><?php echo intval($exam['ehtime']/60); ?><?php } ?>分钟<?php } else { ?><?php echo $exam['ehtime']; ?>秒<?php } ?>
								</td>
								<td><a class="btn btn-primary" href="index.php?exam-teach-users-honordetail&userid=<?php echo $exam['ehuserid']; ?>&ehscore=<?php echo $exam['ehscore']; ?>" target="_blank">View</a></td>
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