<?php $this->_compileInclude('header'); ?>
<body>
<?php $this->_compileInclude('nav'); ?>
<div class="container-fluid" id="datacontent">
	<div class="row-fluid">
		<div class="main">
			<div class="box itembox" style="margin-bottom:0px;">
				<div class="col-xs-12">
					<ol class="breadcrumb">
					  <li><a href="index.php">Home</a></li>
					  
					  <li><a href="index.php?exam-app-basics"><?php echo $this->tpl_var['data']['currentbasic']['basic']; ?></a></li>
					  <li class="active"><?php echo $this->tpl_var['data']['currentbasic']['basic']; ?></li>
					</ol>
				</div>
			</div>
			<div class="box itembox">
				<h4 class="title">Test</h4>
				<div class="alert alert-info">
					<strong>Hint：</strong>

	            	<ul class="list-unstyled">
	                	<li><b>1、</b> Timing begins when you click "Start Test" button.</li>
	                	<li><b>2、</b> There is a top-left remaining time calculator,please take good control of your time.</li>
	                	<li><b>3、</b>Review the answers and errors analyse by Click "Exam Records".</li>
	                	<li><b>4、</b>Every test result would be stored in system automatically.Review the marks by Click "ExamResults".</li>
	                </ul>
                </div>
                <div class="col-xs-12" style="padding-left:0px;" >
                <!--<div class="examlevel" >-->
                	<?php if($this->tpl_var['data']['currentbasic']['basicexam']['opentime']['start'] && $this->tpl_var['data']['currentbasic']['basicexam']['opentime']['end']){ ?>
                <!--</div>-->
                	<?php if($this->tpl_var['data']['currentbasic']['basicexam']['opentime']['start'] <= TIME && $this->tpl_var['data']['currentbasic']['basicexam']['opentime']['end'] >= TIME){ ?>
                		<?php if($this->tpl_var['sessionvars']){ ?>
	                	<div class="box itembox" style="padding-top:20px;">
							<div class="col-xs-3">
								<a href="index.php?exam-app-recover" class="thumbnail pull-left ajax">
									<img src="../app/core/styles/img/item.jpg" alt="" width="100%">
								</a>
							</div>
							<div class="col-xs-9">
								<a href="index.php?exam-app-recover" class="ajax"><h4 class="title">Continue test</h4></a>
								<p>The < <?php echo $this->tpl_var['sessionvars']['examsession']; ?> > has not been completed yet.Click "continue" to restart the test right now.</p>
								<hr/>
								<p>
									<span class="pull-right">
										<a href="index.php?exam-app-recover" class="btn btn-primary ajax">Continue test</a>&nbsp;&nbsp;
										<a href="index.php?exam-app-recover-clearexamsession" class="btn btn-danger confirm" msg="To give up the exam will delete the exam session and can not be restored, to confirm that you want to give it?">Give up the exam</a>
									</span>
								</p>
							</div>
						</div>
	                	<?php } else { ?>

                		<?php if($this->tpl_var['data']['currentbasic']['basicexam']['selectrule']){ ?>
	                		<?php if($this->tpl_var['data']['currentbasic']['basicexam']['examnumber'] > 0 && $this->tpl_var['number']['all'] >= $this->tpl_var['data']['currentbasic']['basicexam']['examnumber']){ ?>
							<div class="text-center"><a class="btn" href="javascript:;">您的考试次数已经用完</a></div>
							<?php } else { ?>
							<div class="text-center"><a action-before="clearStorage" class="ajax btn btn-primary" href="index.php?exam-app-exam-selectquestions&examid=<?php echo $exam['examid']; ?>" action-before="clearStorage">开始考试</a></div>
							<?php } ?>
                		<?php } else { ?>
                			<?php $eid = 0;
 foreach($this->tpl_var['exams']['data'] as $key => $exam){ 
 $eid++; ?>
							<div class="col-xs-3" style="width:20%;" id="userlevel" userlevel="<?php echo $this->tpl_var['userlevel']; ?>">
								<?php if($this->tpl_var['data']['currentbasic']['basicexam']['examnumber'] > 0 && $this->tpl_var['number']['child'][$exam['examid']] >= $this->tpl_var['data']['currentbasic']['basicexam']['examnumber']){ ?>
									<a href="javascript:;" class="thumbnail" style="position:relative;">
									<img src="../app/core/styles/img/finish.png" style="position:absolute;right:4px;top:4px;">
								<?php } else { ?>
									<span action-before="clearStorage" href="index.php?exam-app-exam-selectquestions&examid=<?php echo $exam['examid']; ?>" class="thumbnail ajax" style="position:relative;">
								<?php } ?>
									<img src="../app/core/styles/img/item.jpg" alt="" width="100%">
								</span>
								<h5 class="text-center">
									<?php echo $exam['exam']; ?>
								</h5>
							</div>
							<?php if($eid % 5 == 0){ ?>
							<div class="col-xs-12"><hr /></div>
							<?php } ?>
							<?php } ?>
                		<?php } ?>

                		<?php } ?>
                	<?php } else { ?>
                		<p class="alert">本考场开放考试时间为：<?php echo date('Y-m-d H:i:s',$this->tpl_var['data']['currentbasic']['basicexam']['opentime']['start']); ?> - <?php echo date('Y-m-d H:i:s',$this->tpl_var['data']['currentbasic']['basicexam']['opentime']['end']); ?>，目前不是考试时间，请在规定时间内前来考试哦。</p>
                	<?php } ?>
                <?php } else { ?>
                	<?php if($this->tpl_var['sessionvars']){ ?>
                	<div class="box itembox" style="padding-top:20px;">
						<div class="col-xs-3">
							<a href="index.php?exam-app-recover" class="thumbnail pull-left ajax">
								<img src="../app/core/styles/img/item.jpg" alt="" width="100%">
							</a>
						</div>
						<div class="col-xs-9">
							<a href="index.php?exam-app-recover" class="ajax"><h4 class="title">Continue</h4></a>
							<p>The < <?php echo $this->tpl_var['sessionvars']['examsession']; ?> > has not been completed yet.Click "continue" to restart the test right now.</p>
							<hr/>
							<p>
								<span class="pull-right">
									<a href="index.php?exam-app-recover" class="btn btn-primary ajax">Continue</a>&nbsp;&nbsp;
									<a href="index.php?exam-app-recover-clearexamsession" class="btn btn-danger confirm" msg="To give up the exam will delete the exam session and can not be restored, to confirm that you want to give it?">Give up</a>
								</span>
							</p>
						</div>
					</div>
                	<?php } else { ?>
                	<?php if($this->tpl_var['data']['currentbasic']['basicexam']['selectrule']){ ?>
                		<?php if($this->tpl_var['data']['currentbasic']['basicexam']['examnumber'] > 0 && $this->tpl_var['number']['all'] >= $this->tpl_var['data']['currentbasic']['basicexam']['examnumber']){ ?>
						<div class="text-center"><a class="btn" href="javascript:;">您的考试次数已经用完</a></div>
						<?php } else { ?>
						<div class="text-center"><a class="ajax btn btn-primary" action-before="clearStorage" href="index.php?exam-app-exam-selectquestions&examid=<?php echo $exam['examid']; ?>" action-before="clearStorage">开始考试</a></div>
						<?php } ?>
            		<?php } else { ?>
            			<?php $eid = 0;
 foreach($this->tpl_var['exams']['data'] as $key => $exam){ 
 $eid++; ?>
						<div class="col-xs-3 xs-3"  style="width:20%" id="userlevel" userlevel="<?php echo $this->tpl_var['userlevel']; ?>">
							<?php if($this->tpl_var['data']['currentbasic']['basicexam']['examnumber'] > 0 && $this->tpl_var['number']['child'][$exam['examid']] >= $this->tpl_var['data']['currentbasic']['basicexam']['examnumber']){ ?>
								<a href="javascript:;" class="thumbnail" style="position:relative;">
								<img src="../app/core/styles/img/finish.png" style="position:absolute;right:4px;top:4px;">
							<?php } else { ?>
								<a action-before="clearStorage" href="index.php?exam-app-exam-selectquestions&examid=<?php echo $exam['examid']; ?>" class="thumbnail ajax herf" style="position:relative;" id="herf">
							<?php } ?>
								<img src="../app/core/styles/img/item.jpg" alt="" width="100%" >
							</a>
							<h5 class="text-center">
								<?php echo $exam['exam']; ?>
							</h5>
						</div>
						<?php if($eid % 5 == 0){ ?>
						<div class="col-xs-12"><hr /></div>
						<?php } ?>
						<?php } ?>
            		<?php } ?>
            		<?php } ?>
                <?php } ?>
                </div>
			</div>
		</div>
	</div>
</div>
<?php $this->_compileInclude('footer'); ?>
</body>
</html>