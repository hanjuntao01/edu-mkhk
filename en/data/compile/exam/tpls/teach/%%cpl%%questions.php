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
							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach-questions">Questions management</a></li>
							<li class="active">General test questions management</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">
					<h4 class="title" style="padding:10px;">
						General test questions management
						<span class="pull-right">
							<a data-toggle="dropdown" class="btn btn-primary" href="#">Add questions <strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach-questions-addquestion&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>">Single item addition</a></li>
							<!-- 	<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach-questions-bataddquestion&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>">Batch add</a></li>
								<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-teach-questions-filebataddquestion&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>">CSV import</a></li> -->
							</ul>
						</span>
					</h4>
					<form action="index.php?exam-teach-questions" method="post" class="form-inline">
						<table class="table">
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
									Questions ID：
								</td>
								<td>
									<input name="search[questionid]" class="form-control" size="10" type="text" class="number" value="<?php echo $this->tpl_var['search']['questionid']; ?>"/>
								</td>
								<td>
									Added time：
								</td>
								<td>
									<input class="form-control datetimepicker" data-date="<?php echo date('Y-m-d',TIME); ?>" data-date-format="yyyy-mm-dd" type="text" name="search[stime]" size="10" id="stime" value="<?php echo $this->tpl_var['search']['stime']; ?>"/> - <input class="form-control datetimepicker" data-date="<?php echo date('Y-m-d',TIME); ?>" data-date-format="yyyy-mm-dd" size="10" type="text" name="search[etime]" id="etime" value="<?php echo $this->tpl_var['search']['etime']; ?>"/>
								</td>
								<td>
									Keyword：
								</td>
								<td>
									<input class="form-control" name="search[keyword]" size="10" type="text" value="<?php echo $this->tpl_var['search']['keyword']; ?>"/>
								</td>
							</tr>
					        <tr>
								<td>
									Subject：
								</td>
								<td>
					        		<select name="search[questionsubjectid]" class="combox form-control" target="sectionselect" refUrl="?exam-teach-questions-ajax-getsectionsbysubjectid&subjectid={value}">
						        		<option value="0">Select subject</option>
								  		<?php $sid = 0;
 foreach($this->tpl_var['subjects'] as $key => $subject){ 
 $sid++; ?>
								  		<option value="<?php echo $subject['subjectid']; ?>"<?php if($subject['subjectid'] == $this->tpl_var['search']['questionsubjectid']){ ?> selected<?php } ?>><?php echo $subject['subject']; ?></option>
								  		<?php } ?>
							  		</select>
					        	</td>
					        	<td>
									Chapter：
								</td>
								<td>
							  		<select name="search[questionsectionid]" class="combox form-control" id="sectionselect" target="knowsselect" refUrl="?exam-teach-questions-ajax-getknowsbysectionid&sectionid={value}">
							  		<option value="0">Select Chapter</option>
							  		<?php if($this->tpl_var['sections']){ ?>
							  		<?php $sid = 0;
 foreach($this->tpl_var['sections'] as $key => $section){ 
 $sid++; ?>
							  		<option value="<?php echo $section['sectionid']; ?>"<?php if($section['sectionid'] == $this->tpl_var['search']['questionsectionid']){ ?> selected<?php } ?>><?php echo $section['section']; ?></option>
							  		<?php } ?>
							  		<?php } ?>
							  		</select>
					        	</td>
					        	<td>
									Knowledge point：
								</td>
								<td>
							  		<select name="search[questionknowsid]" id="knowsselect" class="form-control">
								  		<option value="">Select Knowledge point</option>
								  		<?php if($this->tpl_var['knows']){ ?>
								  		<?php $kid = 0;
 foreach($this->tpl_var['knows'] as $key => $know){ 
 $kid++; ?>
								  		<option value="<?php echo $know['knowsid']; ?>"<?php if($know['knowsid'] == $this->tpl_var['search']['questionknowsid']){ ?> selected<?php } ?>><?php echo $know['knows']; ?></option>
								  		<?php } ?>
								  		<?php } ?>
							  		</select>
					        	</td>
							</tr>
							<!-- <tr>
								<td>
									录入人：
								</td>
					        	<td>
					        		<input class="form-control" name="search[username]" size="10" type="text" value="<?php echo $this->tpl_var['search']['username']; ?>"/>
					        	</td>
					        	<td>
									试题类型：
								</td>
								<td>
									<select name="search[questiontype]" class="form-control">
								  		<option value="0">类型不限</option>
								  		<?php $qid = 0;
 foreach($this->tpl_var['questypes'] as $key => $questype){ 
 $qid++; ?>
								  		<option value="<?php echo $questype['questid']; ?>"><?php echo $questype['questype']; ?></option>
								  		<?php } ?>
							  		</select>
								</td>
								<td>
									难度：
								</td>
								<td>
									<select name="search[questionlevel]" class="form-control">
								  		<option value="0">难度不限</option>
										<option value="1"<?php if($this->tpl_var['search']['questionlevel'] == 1){ ?> checked<?php } ?>>易</option>
										<option value="2"<?php if($this->tpl_var['search']['questionlevel'] == 2){ ?> checked<?php } ?>>中</option>
										<option value="3"<?php if($this->tpl_var['search']['questionlevel'] == 3){ ?> checked<?php } ?>>难</option>
							  		</select>
								</td>
							</tr> -->
							<tr>
								<td colspan="2">
									<button class="btn btn-primary" type="submit">Search</button>
									<input type="hidden" value="1" name="search[argsmodel]" />
								</td>
								<td colspan="4"></td>
							</tr>
						</table>
					</form>
					<form action="index.php?exam-teach-questions-batdel" method="post">
						<fieldset>
							<table class="table table-hover table-bordered">
								<thead>
									<tr class="info">
					                    <th width="32"><input type="checkbox" class="checkall" target="delids"/></th>
					                    <th width="40">ID</th>
								        <th width="80">Question types</th>
								        <th>Question content</th>
								        <th width="80">Input person</th>
								        <th width="80">Added time</th>
								    <!--     <th width="48">degree of difficulty</th> -->
								        <th width="100">Operate</th>
					                </tr>
					            </thead>
					            <tbody>
				                    <?php $qid = 0;
 foreach($this->tpl_var['questions']['data'] as $key => $question){ 
 $qid++; ?>
							        <tr>
										<td><input type="checkbox" name="delids[<?php echo $question['questionid']; ?>]" value="1"></td>
										<td>
											<?php echo $question['questionid']; ?>
										</td>
										<td>
											<?php echo $this->tpl_var['questypes'][$question['questiontype']]['questype']; ?>
										</td>
										<td>
											<a title="View Question" class="selfmodal" href="javascript:;" url="index.php?exam-teach-questions-detail&questionid=<?php echo $question['questionid']; ?>" data-target="#modal"><?php echo $this->G->make('strings')->subString(strip_tags(html_entity_decode($question['question'])),135); ?></a>
										</td>
										<td>
											<?php echo $question['questionusername']; ?>
										</td>
										<td>
											<?php echo date('Y-m-d',$question['questioncreatetime']); ?>
										</td>
									<!-- 	<td>
											<?php if($question['questionlevel']==2){ ?>中<?php } elseif($question['questionlevel']==3){ ?>难<?php } elseif($question['questionlevel']==1){ ?>易<?php } ?>
										</td> -->
										<td>
											<div class="btn-group">
					                    		<a class="btn" href="index.php?exam-teach-questions-modifyquestion&page=<?php echo $this->tpl_var['page']; ?>&questionid=<?php echo $question['questionid']; ?><?php echo $this->tpl_var['u']; ?>" title="Modify"><em class="glyphicon glyphicon-edit"></em></a>
												<a class="btn confirm" href="index.php?exam-teach-questions-delquestion&questionparent=0&page=<?php echo $this->tpl_var['page']; ?>&questionid=<?php echo $question['questionid']; ?><?php echo $this->tpl_var['u']; ?>" title="delete"><em class="glyphicon glyphicon-remove"></em></a>
					                    	</div>
										</td>
							        </tr>
							        <?php } ?>
					        	</tbody>
					        </table>
					        <div class="form-group">
					            <div class="col-sm-9">
						            <label class="radio-inline">
						                <input type="radio" name="action" value="delete" checked/>Delete
						            </label>
						            <?php $sid = 0;
 foreach($this->tpl_var['search'] as $key => $arg){ 
 $sid++; ?>
						            <input type="hidden" name="search[<?php echo $key; ?>]" value="<?php echo $arg; ?>"/>
						            <?php } ?>
						            <label class="radio-inline">
						            	<button class="btn btn-primary" type="submit">Submit</button>
						            </label>
						            <input type="hidden" name="page" value="<?php echo $this->tpl_var['page']; ?>"/>
						        </div>
					        </div>
					        <ul class="pagination pull-right">
					            <?php echo $this->tpl_var['questions']['pages']; ?>
					        </ul>
				        </fieldset>
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
					Question details
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