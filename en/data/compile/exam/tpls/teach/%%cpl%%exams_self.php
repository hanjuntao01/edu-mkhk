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
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach-exams&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>">Papers management</a></li>
							<li class="active">Manual test paper</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Manual test paper
						<a class="btn btn-primary pull-right" href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach-exams&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>">Papers management</a>
					</h4>
			        <form action="index.php?exam-teach-exams-selfpage" method="post" class="form-horizontal">
						<div class="form-group">
							<label class="control-label col-sm-2">Paper name：</label>
							<div class="col-sm-4">
					  			<input class="form-control" type="text" name="args[exam]" value="" needle="needle" msg="You must enter a name for the test paper."/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Marking</label>
							<div class="col-sm-9">
								<label class="radio-inline">
									<input name="args[examdecide]" type="radio" value="1"/>Teachers marking
								</label>
								<label class="radio-inline">
									<input name="args[examdecide]" type="radio" value="0" checked/>Students marking
								</label>
								<span class="help-block">When marking the teachers subjective questions need teachers to display the score in the background score, no subjective automatic display scores.</span>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Test subject：</label>
						  	<div class="col-sm-3">
							  	<select class="combox form-control" autocomplete="off" id="selectedsubjectid" msg="Select subject" needle="needle" min="1" name="args[examsubject]" onchange="javascript:loadsubjectsetting(this);">
								  	<option value="">Select subject</option>
								  	<?php $sid = 0;
 foreach($this->tpl_var['subjects'] as $key => $subject){ 
 $sid++; ?>
								  	<option value="<?php echo $subject['subjectid']; ?>"><?php echo $subject['subject']; ?></option>
								  	<?php } ?>
							  	</select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Test time：</label>
					  		<div class="col-sm-9 form-inline">
					  			<input class="form-control" type="text" name="args[examsetting][examtime]" value="60" size="4" needle="needle" class="inline"/> Minutes
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Source：</label>
					  		<div class="col-sm-3">
					  			<input class="form-control" type="text" name="args[examsetting][comfrom]" value="" size="4"/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Total score of papers：</label>
					  		<div class="col-sm-3">
					  			<input class="form-control" type="text" name="args[examsetting][score]" value="" size="4" needle="needle" msg="You have to set for the exam score." datatype="number"/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">pass line：</label>
					  		<div class="col-sm-3">
					  			<input class="form-control" type="text" name="args[examsetting][passscore]" value="" size="4" needle="needle" msg="You have to set a pass mark for the exam" datatype="number"/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Sort of questions</label>
							<div class="col-sm-9">
								<div class="sortable btn-group">
									<?php $qid = 0;
 foreach($this->tpl_var['questypes'] as $key => $questype){ 
 $qid++; ?>
									<a class="btn btn-primary questpanel panel_<?php echo $questype['questid']; ?>"><?php echo $questype['questype']; ?><input type="hidden" name="args[examsetting][questypelite][<?php echo $questype['questid']; ?>]" value="1" class="questypepanelinput" id="panel_<?php echo $questype['questid']; ?>"/></a>
									<?php } ?>
								</div>
							</div>
							<div class="col-sm-9">Drag to sort types</div>
						</div>
						<?php $qid = 0;
 foreach($this->tpl_var['questypes'] as $key => $questype){ 
 $qid++; ?>
						<div class="form-group questpanel panel_<?php echo $questype['questid']; ?>">
							<label class="control-label col-sm-2"><?php echo $questype['questype']; ?>：</label>
							<div class="col-sm-9 form-inline">
								<span class="info">A total of </span>
								<input id="iselectallnumber_<?php echo $questype['questid']; ?>" type="text" class="form-control" needle="needle" name="args[examsetting][questype][<?php echo $questype['questid']; ?>][number]" value="0" size="2" msg="You must fill in the total number of questions."/>
								<span class="info"> questions, each question </span><input class="form-control" needle="needle" type="text" name="args[examsetting][questype][<?php echo $questype['questid']; ?>][score]" value="0" size="2" msg="You must fill in the scores for each question."/>
								<span class="info"> points,</span><!-- <input class="form-control" type="text" name="args[examsetting][questype][<?php echo $questype['questid']; ?>][describe]" value="" size="12"/> -->
								<span class="info"> has been selected: <a id="ialreadyselectnumber_<?php echo $key; ?>">0</a> questions</span>
								<span class="info">&nbsp;<a class="selfmodal btn btn-info" href="javascript:;" data-target="#modal" url="index.php?exam-teach-exams-selected&questionids={iselectquestions_<?php echo $key; ?>}&rowsquestionids={iselectrowsquestions_<?php echo $key; ?>}" valuefrom="iselectquestions_<?php echo $key; ?>|iselectrowsquestions_<?php echo $key; ?>">check questions</a></span>
								<span class="info">&nbsp;<a class="selfmodal btn btn-primary" href="javascript:;" data-target="#modal" url="index.php?exam-teach-exams-selectquestions&search[questionsubjectid]={selectedsubjectid}&search[questiontype]=<?php echo $key; ?>&questionids={iselectquestions_<?php echo $key; ?>}&rowsquestionids={iselectrowsquestions_<?php echo $key; ?>}&useframe=1" valuefrom="iselectquestions_<?php echo $key; ?>|iselectrowsquestions_<?php echo $key; ?>|selectedsubjectid">Select questions</a></span>
			  					<input type="hidden" value="" id="iselectquestions_<?php echo $key; ?>" name="args[examquestions][<?php echo $key; ?>][questions]" />
			  					<input type="hidden" value="" id="iselectrowsquestions_<?php echo $key; ?>" name="args[examquestions][<?php echo $key; ?>][rowsquestions]" />
							</div>
						</div>
						<?php } ?>
						<div class="form-group">
							<label class="control-label col-sm-2"></label>
							<div class="col-sm-9">
							  	<button class="btn btn-primary" type="submit">Submit</button>
								<input type="hidden" name="submitsetting" value="1"/>
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
<script>
function loadsubjectsetting(obj)
{
	$.getJSON('index.php?exam-teach-basic-getsubjectquestype&subjectid='+$(obj).val()+'&'+Math.random(),function(data){$('.questpanel').hide();for(x in data){$('.panel_'+data[x]).show();}});
}
</script>
<?php $this->_compileInclude('footer'); ?>
</body>
</html>
<?php } ?>