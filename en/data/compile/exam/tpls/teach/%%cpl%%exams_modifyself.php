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
							<li><a href="index.php?exam-teach-exams">Papers management</a></li>
							<li class="active">Manual test paper modification</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Manual test paper modification
						<a class="btn btn-primary pull-right" href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach-exams&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>">Papers management</a>
					</h4>
			        <form action="index.php?exam-teach-exams-modify" method="post" class="form-horizontal">
						<div class="form-group">
							<label class="control-label col-sm-2">Paper name：</label>
					  		<div class="col-sm-4">
					  			<input class="form-control" type="text" name="args[exam]" value="<?php echo $this->tpl_var['exam']['exam']; ?>" needle="needle" msg="You must enter a name for the test paper."/>
					  		</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Marking</label>
							<div class="col-sm-9">
								<label class="radio-inline">
									<input name="args[examdecide]" type="radio" value="1"<?php if($this->tpl_var['exam']['examdecide']){ ?> checked<?php } ?>/>Teachers marking
								</label>
								<label class="radio-inline">
									<input name="args[examdecide]" type="radio" value="0"<?php if(!$this->tpl_var['exam']['examdecide']){ ?> checked<?php } ?>/>Students marking
								</label>
								<span class="help-block">When marking the teachers subjective questions need teachers to display the score in the background score, no subjective automatic display scores.</span>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Test subject：</label>
						  	<div class="col-sm-9">
							  	<label class="radio"><?php echo $this->tpl_var['subjects'][$this->tpl_var['exam']['examsubject']]['subject']; ?></label>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Test time：</label>
					  		<div class="col-sm-9 form-inline">
					  			<input type="text" name="args[examsetting][examtime]" size="4" needle="needle" class="form-control" value="<?php echo $this->tpl_var['exam']['examsetting']['examtime']; ?>"/> Minutes
					  		</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Source：</label>
					  		<div class="col-sm-4">
					  			<input class="form-control" type="text" name="args[examsetting][comfrom]" value="<?php echo $this->tpl_var['exam']['examsetting']['comfrom']; ?>" size="4"/>
					  		</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Total score of papers：</label>
					  		<div class="col-sm-3">
					  			<input class="form-control" type="text" name="args[examsetting][score]" value="<?php echo $this->tpl_var['exam']['examsetting']['score']; ?>" size="4" needle="needle" msg="You have to set for the exam score." datatype="number"/>
					  		</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">pass line：</label>
					  		<div class="col-sm-3">
					  			<input class="form-control" type="text" name="args[examsetting][passscore]" value="<?php echo $this->tpl_var['exam']['examsetting']['passscore']; ?>" size="4" needle="needle" msg="You have to set a pass mark for the exam" datatype="number"/>
					  		</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Sort of questions</label>
							<div class="col-sm-9">
								<div class="sortable btn-group">
									<?php if($this->tpl_var['exam']['examsetting']['questypelite']){ ?>
									<?php $eqid = 0;
 foreach($this->tpl_var['exam']['examsetting']['questypelite'] as $key => $qlid){ 
 $eqid++; ?>
									<a class="btn btn-primary questpanel panel_<?php echo $key; ?>"><?php echo $this->tpl_var['questypes'][$key]['questype']; ?><input type="hidden" name="args[examsetting][questypelite][<?php echo $key; ?>]" value="1" class="questypepanelinput" id="panel_<?php echo $key; ?>"/></a>
									<?php } ?>
									<?php } else { ?>
									<?php $qid = 0;
 foreach($this->tpl_var['questypes'] as $key => $questype){ 
 $qid++; ?>
									<a class="btn btn-primary questpanel panel_<?php echo $questype['questid']; ?>"><?php echo $questype['questype']; ?><input type="hidden" name="args[examsetting][questypelite][<?php echo $questype['questid']; ?>]" value="1" class="questypepanelinput" id="panel_<?php echo $questype['questid']; ?>"/></a>
									<?php } ?>
									<?php } ?>
								</div>
								<span class="help-block">Drag to sort types</span>
							</div>
						</div>
						<?php $qid = 0;
 foreach($this->tpl_var['questypes'] as $key => $questype){ 
 $qid++; ?>
						<div class="form-group questpanel panel_<?php echo $questype['questid']; ?>">
							<label class="control-label col-sm-2"><?php echo $questype['questype']; ?>：</label>
							<div class="col-sm-9 form-inline">
								<span class="info">A total of </span>
								<input id="iselectallnumber_<?php echo $questype['questid']; ?>" type="text" class="form-control" needle="needle" name="args[examsetting][questype][<?php echo $questype['questid']; ?>][number]" value="<?php echo intval($this->tpl_var['exam']['examsetting']['questype'][$questype['questid']]['number']); ?>" size="2" msg="You must fill in the total number of questions."/>
								<span class="info"> questions, each question </span><input class="form-control" needle="needle" type="text" name="args[examsetting][questype][<?php echo $questype['questid']; ?>][score]" value="<?php echo floatval($this->tpl_var['exam']['examsetting']['questype'][$questype['questid']]['score']); ?>" size="2" msg="You must fill in the scores for each question."/>
								<span class="info"> points,</span><!-- <input class="form-control" type="text" name="args[examsetting][questype][<?php echo $questype['questid']; ?>][describe]" value="<?php echo $this->tpl_var['exam']['examsetting']['questype'][$questype['questid']]['describe']; ?>" size="12"/> -->
								<span class="info"> has been selected: <a id="ialreadyselectnumber_<?php echo $key; ?>"><?php echo intval($this->tpl_var['exam']['examnumber'][$key]); ?></a> questions</span>
								<span class="info">&nbsp;<a class="selfmodal btn btn-info" href="javascript:;" data-target="#modal" url="index.php?exam-teach-exams-selected&questionids={iselectquestions_<?php echo $key; ?>}&rowsquestionids={iselectrowsquestions_<?php echo $key; ?>}" valuefrom="iselectquestions_<?php echo $key; ?>|iselectrowsquestions_<?php echo $key; ?>">Check questions</a></span>
								<span class="info">&nbsp;<a class="selfmodal btn btn-primary" href="javascript:;" data-target="#modal" url="index.php?exam-teach-exams-selectquestions&search[questionsubjectid]=<?php echo $this->tpl_var['exam']['examsubject']; ?>&search[questiontype]=<?php echo $key; ?>&questionids={iselectquestions_<?php echo $key; ?>}&rowsquestionids={iselectrowsquestions_<?php echo $key; ?>}&useframe=1" valuefrom="iselectquestions_<?php echo $key; ?>|iselectrowsquestions_<?php echo $key; ?>">Select questions</a></span>
			  					<input type="hidden" id="iselectquestions_<?php echo $key; ?>" name="args[examquestions][<?php echo $key; ?>][questions]" value="<?php echo $this->tpl_var['exam']['examquestions'][$key]['questions']; ?>"/>
			  					<input type="hidden" id="iselectrowsquestions_<?php echo $key; ?>" name="args[examquestions][<?php echo $key; ?>][rowsquestions]" value="<?php echo $this->tpl_var['exam']['examquestions'][$key]['rowsquestions']; ?>"/>
					  		</div>
						</div>
						<?php } ?>
						<div class="form-group">
							<label class="control-label col-sm-2"></label>
							<div class="col-sm-9">
								<button class="btn btn-primary" type="submit">Submit</button>
								<input type="hidden" name="submitsetting" value="1"/>
								<input name="examid" type="hidden" value="<?php echo $this->tpl_var['exam']['examid']; ?>">
					  		</div>
						</div>
					</form>
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
			<div class="modal-body" id="modal-body"></div>
			<div class="modal-footer">
				 <button aria-hidden="true" class="btn btn-primary" data-dismiss="modal">ok</button>
			</div>
		</div>
	</div>
</div>
<?php $this->_compileInclude('footer'); ?>
<script>
$.getJSON('index.php?exam-teach-basic-getsubjectquestype&subjectid=<?php echo $this->tpl_var['exam']['examsubject']; ?>&'+Math.random(),function(data){$('.questpanel').hide();$('.questypepanelinput').val('0');for(x in data){$('.panel_'+data[x]).show();$('#panel_'+data[x]).val('1');}});
</script>
</body>
</html>
<?php } ?>