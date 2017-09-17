<?php $this->_compileInclude('header'); ?>
<body>
<?php $this->_compileInclude('nav'); ?>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="box itembox" style="margin-bottom:0px;">
				<ul class="breadcrumb">
					<li>
						<span class="icon-home"></span> <a href="index.php">Home</a>
					</li>
					<li>
						<a href="index.php?exam-app-basics"><?php echo $this->tpl_var['data']['currentbasic']['basic']; ?></a>
					</li>
					<li class="active">
						Exam Records
					</li>
				</ul>
			</div>
			<div class="box itembox" style="padding-top:24px;">
				<ul class="nav nav-tabs">
				<!-- 
					<li<?php if($this->tpl_var['ehtype'] == 0){ ?> class="active"<?php } ?>>
						<a href="index.php?exam-app-history">强化训练</a>
					</li> -->
					<!-- <li<?php if($this->tpl_var['ehtype'] == 1){ ?> class="active"<?php } ?>>
						<a href="index.php?exam-app-history&ehtype=1">Simulation Test</a>
					</li> -->
					<li<?php if($this->tpl_var['ehtype'] == 2){ ?> class="active"<?php } ?>>
						<a href="index.php?exam-app-history&ehtype=2">Test</a>
					</li>
				</ul>
				<blockquote class="questype" style="margin-top:20px;">
					<?php if($this->tpl_var['ehtype'] == 0){ ?>
					<p><span class="text-warning">Hint: </span>Select one from Simulation Test and Test.</p>
					<?php } elseif($this->tpl_var['ehtype'] == 1){ ?>
					<p>You have completed  <b class="text-warning"><?php echo $this->tpl_var['exams']['number']; ?></b> tests, <b class="text-warning"><?php echo $this->tpl_var['avgscore']; ?></b> on average. Keep on trying!</p>
					<?php } elseif($this->tpl_var['ehtype'] == 2){ ?>
					<p>You have completed  <b class="text-warning"><?php echo $this->tpl_var['exams']['number']; ?></b> tests, <b class="text-warning"><?php echo $this->tpl_var['avgscore']; ?></b> on average. Keep on trying!</p>
					<?php } ?>
				</blockquote>
				<table class="table table-bordered table-hover">
					<tr class="info">
						<td>Answer record</td>
						<td>Answer time</td>
						<td>Use time</td>
                        <td>Score</td>
						<td>Wrong number</td>
						<td>Check error</td>
						<!-- <td>Analysis</td> -->
						<td>Redo the papers</td>
						<td>Delete record</td>
					</tr>
					<?php $eid = 0;
 foreach($this->tpl_var['exams']['data'] as $key => $exam){ 
 $eid++; ?>
					<tr>
						<td><?php echo $exam['ehexam']; ?></td>
						<td><?php echo date('Y-m-d',$exam['ehstarttime']); ?></td>
						<td><?php if($exam['ehtime'] >= 60){ ?><?php if($exam['ehtime']%60){ ?><?php echo intval($exam['ehtime']/60)+1; ?><?php } else { ?><?php echo intval($exam['ehtime']/60); ?><?php } ?> Minutes<?php } else { ?><?php echo $exam['ehtime']; ?> Seconds<?php } ?></td>
                        <td><b class="red"><?php if(!$exam['ehstatus'] && $exam['ehdecide']){ ?>Paper Scoring<?php } else { ?><?php echo $exam['ehscore']; ?><?php } ?></b></td>
						<td><b class="red"><?php echo $exam['errornumber']; ?></b></td>
						<td><a href="index.php?exam-app-record-wrongs&ehid=<?php echo $exam['ehid']; ?>">Check error</a></td>
						<!-- <td><a href="index.php?exam-app-history-view&ehid=<?php echo $exam['ehid']; ?>">Analysis</a></td> -->
						<td><a class="ajax" href="index.php?exam-app-history-redo&ehid=<?php echo $exam['ehid']; ?>" action-before="clearStorage">Redo the papers</a></td>
						<td>
							<?php if($this->tpl_var['ehtype'] != 2){ ?>
							<a class="ajax" href="index.php?exam-app-history-del&ehid=<?php echo $exam['ehid']; ?>">Delete</a>
							<?php } else { ?>
							-
							<?php } ?>
						</td>
					</tr>
				<?php } ?>
				</table>
				<?php if($this->tpl_var['exams']['pages'] && $this->tpl_var['ehtype']){ ?>
				<ul class="pagination pull-right"><?php echo $this->tpl_var['exams']['pages']; ?></ul>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
<?php $this->_compileInclude('footer'); ?>
</body>
</html>