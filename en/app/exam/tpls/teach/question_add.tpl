{x2;if:!$userhash}
{x2;include:header}
<body>
{x2;include:nav}
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="col-xs-2" style="padding-top:10px;margin-bottom:0px;">
				{x2;include:menu}
			</div>
			<div class="col-xs-10" id="datacontent">
{x2;endif}
				<div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">
					<div class="col-xs-12">
						<ol class="breadcrumb">
							<li><a href="index.php?{x2;$_app}-teach">Test module</a></li>
							<li><a href="index.php?{x2;$_app}-teach-questions&page={x2;$page}{x2;$u}">Questions management</a></li>
							<li class="active">Add Questions</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						Add Questions
						<a class="btn btn-primary pull-right" href="index.php?{x2;$_app}-teach-questions&page={x2;$page}{x2;$u}">Questions management</a>
					</h4>
					<form action="index.php?exam-teach-questions-addquestion" method="post" class="form-horizontal">
						<fieldset>
						<div class="form-group">
							<label class="control-label col-sm-2">Knowledge point：</label>
						  	<div class="col-sm-9">
						  		<textarea class="form-control" rows="4" needle="needle" min="1" msg="You need at least one point of knowledge" name="args[questionknowsid]" id="questionknowsid" readonly></textarea>
							</div>
						</div>
						<div class="form-group">
					  		<label class="control-label col-sm-2"></label>
					  		<div class="col-sm-9 form-inline">
						  		<select class="combox form-control" target="isectionselect" refUrl="?exam-teach-questions-ajax-getsectionsbysubjectid&subjectid={value}">
					        		<option value="0">Select subject</option>
							  		{x2;tree:$subjects,subject,sid}
							  		<option value="{x2;v:subject['subjectid']}">{x2;v:subject['subject']}</option>
							  		{x2;endtree}
						  		</select>
						  		<select class="combox form-control" id="isectionselect" target="iknowsselect" refUrl="?exam-teach-questions-ajax-getknowsbysectionid&sectionid={value}">
						  			<option value="0">Select chapter</option>
						  		</select>
						  		<select class="combox form-control" id="iknowsselect">
						  		<option value="0">Select knowledge point</option>
						  		</select>
							</div>
						</div>
						<div class="form-group">
					  		<label class="control-label col-sm-2"></label>
					  		<div class="col-sm-9">
					  			<input type="button" class="btn btn-primary" value="Selected" onclick="javascript:setKnowsList('questionknowsid','iknowsselect','+');"/>
					  			<input type="button" class="btn btn-danger" value="Clear" onclick="javascript:setKnowsList('questionknowsid','iknowsselect','-');"/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Question type：</label>
						  	<div class="col-sm-3">
							  	<select needle="needle" msg="You must select a topic as to add the item." name="args[questiontype]" class="form-control" onchange="javascript:setAnswerHtml($(this).find('option:selected').attr('rel'),'answerbox');">
							  		{x2;tree:$questypes,questype,qid}
							  		<option rel="{x2;if:v:questype['questsort']}0{x2;else}{x2;v:questype['questchoice']}{x2;endif}" value="{x2;v:questype['questid']}"{x2;if:v:questype['questid'] == $question['questiontype']} selected{x2;endif}>{x2;v:questype['questype']}</option>
							  		{x2;endtree}
							  	</select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">stem：</label>
						  	<div class="col-sm-10">
							  	<textarea class="ckeditor" name="args[question]" id="question">{x2;$question['question']}</textarea>
							  	<span class="help-block">Fill in the blanks,eg "( )"</span>
							</div>
						</div>
						<div class="form-group" id="selecttext">
							<label class="control-label col-sm-2">Option：</label>
						  	<div class="col-sm-10">
							  	<textarea class="ckeditor" name="args[questionselect]" id="questionselect">{x2;$question['questionselect']}</textarea>
							  	<span class="help-block">Do not fill in the choice of no items, such as fill in the blank questions, questions and other subjective questions.</span>
							</div>
						</div>
						<div class="form-group" id="selectnumber">
							<label class="control-label col-sm-2">Number of options：</label>
						  	<div class="col-sm-3">
							  	<select class="form-control" name="args[questionselectnumber]">
							  		
							  		<option value="3" selected>3</option>
							  		<option value="4">4</option>
							  		<option value="5">5</option>
							  		<option value="6">6</option>
							  	</select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Key：</label>
							<div class="col-sm-10">
								<div id="answerbox_1" class="answerbox">
								  	<label class="radio-inline">
								  		<input type="radio" name="targs[questionanswer1]" value="A" checked>A
								  	</label>
								  	<label class="radio-inline">
								  		<input type="radio" name="targs[questionanswer1]" value="B">B
								  	</label>
								  	<label class="radio-inline">
								  		<input type="radio" name="targs[questionanswer1]" value="C">C
								  	</label>
								  	<label class="radio-inline">
								  		<input type="radio" name="targs[questionanswer1]" value="D">D
								  	</label>
								  	<label class="radio-inline">
								  		<input type="radio" name="targs[questionanswer1]" value="E">E
								  	</label>
								</div>
								<div id="answerbox_2" style="display:none;" class="answerbox">
								  	<label class="checkbox-inline">
								  		<input type="checkbox" name="targs[questionanswer2][]" value="A">A
								  	</label>
								  	<label class="checkbox-inline">
								  		<input type="checkbox" name="targs[questionanswer2][]" value="B">B
								  	</label>
								  	<label class="checkbox-inline">
								  		<input type="checkbox" name="targs[questionanswer2][]" value="C">C
								  	</label>
								  	<label class="checkbox-inline">
								  		<input type="checkbox" name="targs[questionanswer2][]" value="D">D
								  	</label>
								  	<label class="checkbox-inline">
								  		<input type="checkbox" name="targs[questionanswer2][]" value="E">E
								  	</label>
								</div>
								<div id="answerbox_3" style="display:none;" class="answerbox">
								  	<label class="checkbox-inline">
								  		<input type="checkbox" name="targs[questionanswer3][]" value="A">A
								  	</label>
								  	<label class="checkbox-inline">
								  		<input type="checkbox" name="targs[questionanswer3][]" value="B">B
								  	</label>
								  	<label class="checkbox-inline">
								  		<input type="checkbox" name="targs[questionanswer3][]" value="C">C
								  	</label>
								  	<label class="checkbox-inline">
								  		<input type="checkbox" name="targs[questionanswer3][]" value="D">D
								  	</label>
								  	<label class="checkbox-inline">
								  		<input type="checkbox" name="targs[questionanswer3][]" value="E">E
								  	</label>
								</div>
								<div id="answerbox_4" class="answerbox" style="display:none;">
								  	<label class="radio-inline">
								  		<input type="radio" name="targs[questionanswer4]" value="A" checked>right
								  	</label>
								  	<label class="radio-inline">
								  		<input type="radio" name="targs[questionanswer4]" value="B">error
								  	</label>
								</div>
								<div id="answerbox_5" class="answerbox" style="display:none;">
								  	<input type="text" name="targs[questionanswer5]" value="" />
								</div>
								<div id="answerbox_0" style="display:none;" class="answerbox">
							  		<textarea cols="72" rows="7" class="ckeditor" id="questionanswer0" name="targs[questionanswer0]">{x2;$question['questionanswer']}</textarea>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">Analysis：</label>
						  	<div class="col-sm-10">
						  		<textarea class="ckeditor" name="args[questiondescribe]" id="questiondescribe">{x2;$question['questiondescribe']}</textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2">degree of difficulty：</label>
						  	<div class="col-sm-3">
							  	<select class="form-control" name="args[questionlevel]" needle="needle" msg="You must set a difficulty for the questions you want to add">
							  		<option value="1"{x2;if:!$question['questionlevel']==1} selected{x2;endif}>easily</option>
							  		<option value="2"{x2;if:!$question['questionlevel']==2} selected{x2;endif}>indifferent</option>
							  		<option value="3"{x2;if:!$question['questionlevel']==3} selected{x2;endif}>difficult</option>
							  	</select>
							</div>
						</div>
						<div class="form-group">
						  	<label class="control-label col-sm-2"></label>
						  	<div class="col-sm-9">
							  	<button class="btn btn-primary" type="submit">Submit</button>
							  	<input type="hidden" name="page" value="{x2;$page}"/>
							  	<input type="hidden" name="insertquestion" value="1"/>
							  	{x2;tree:$search,arg,aid}
								<input type="hidden" name="search[{x2;v:key}]" value="{x2;v:arg}"/>
								{x2;endtree}
							</div>
						</div>
					</form>
				</div>
			</div>
{x2;if:!$userhash}
		</div>
	</div>
</div>
{x2;include:footer}
</body>
</html>
{x2;endif}