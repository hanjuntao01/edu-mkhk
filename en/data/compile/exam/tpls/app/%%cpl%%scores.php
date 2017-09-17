<?php $this->_compileInclude('header'); ?>
<body>
<?php $this->_compileInclude('nav'); ?>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="box itembox" style="margin-bottom:0px;">
				<div class="col-xs-12">
					<ol class="breadcrumb">
					  <li><a href="index.php">Home</a></li>
					  
					  <li><a href="index.php?exam-app-basics"><?php echo $this->tpl_var['data']['currentbasic']['basic']; ?></a></li>
					  <li class="active">Exams Results</li>
					</ol>
				</div>
			</div>
			<div class="box itembox">
				<h4 class="title">Exams Results</h4>
				<blockquote class="questype" style="margin-top:20px;">
					<p>Your highest score:<span class="text-warning"><?php echo $this->tpl_var['s']['score']; ?></span> Your best ranking:<span class="text-warning"><?php echo $this->tpl_var['s']['index']; ?></span></p>
				</blockquote>
				<table class="table table-bordered table-hover">
					<tr class="info">
						<td>Ranking</td>
						<td>Name</td>
                        <td>Score</td>
						<td>Time for Exams</td>
						<td>Use Time</td>
					</tr>
					<?php $sid = 0;
 foreach($this->tpl_var['scores']['data'] as $key => $score){ 
 $sid++; ?>
					<tr>
						<td><?php echo ($this->tpl_var['page'] - 1)*20 + $sid; ?></td>
						<td><?php echo $score['usertruename']; ?></td>
						<td><?php echo $score['ehscore']; ?></td>
						<td><?php echo date('Y-m-d H:i:s',$score['ehstarttime']); ?></td>
						<td><?php if($score['ehtime'] >= 60){ ?><?php if($score['ehtime']%60){ ?><?php echo intval($score['ehtime']/60)+1; ?><?php } else { ?><?php echo intval($score['ehtime']/60); ?><?php } ?> Minites<?php } else { ?><?php echo $score['ehtime']; ?> Seconds<?php } ?></td>
					</tr>
				<?php } ?>
				</table>
				<ul class="pagination pull-right"><?php echo $this->tpl_var['scores']['pages']; ?></ul>
			</div>
		</div>
	</div>
</div>
<?php $this->_compileInclude('footer'); ?>
</body>
</html>