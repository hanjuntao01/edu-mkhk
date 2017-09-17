<?php $this->_compileInclude('header'); ?>
<body style="">
<?php $this->_compileInclude('nav'); ?>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="col-xs-2" style="padding-top:10px;margin-bottom:0px;">
				<?php $this->_compileInclude('menu'); ?>
			</div>
			<div class="col-xs-10" id="datacontent">
				<div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">
					<div class="col-xs-12">
						<ol class="breadcrumb">
							<li><a href="index.php">Index</a></li>
							<li><a href="index.php?user-center-privatement">User Center</a></li>
							<li class="active">Privacy management</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;">
					<h4 class="title">Privacy management</h4>
					<div id="tabs-694325" class="tabbable">
						<ul class="nav nav-tabs">
							<li class="active">
								<a href="#panel-344373" data-toggle="tab">Personal data</a>
							</li>
							<li>
								<a href="#panel-788885" data-toggle="tab">Modify password</a>
							</li>
						</ul>
						<div class="tab-content">
							<div id="panel-344373" class="tab-pane active">
								<form action="index.php?user-center-privatement" method="post" class="form-horizontal" style="padding:20px;">
									<fieldset>
										<?php $fid = 0;
 foreach($this->tpl_var['forms'] as $key => $form){ 
 $fid++; ?>
										<div class="form-group">
											<label class="control-label col-sm-2" for="<?php echo $form['id']; ?>"><?php echo $form['title']; ?>：</label>
											<div class="col-sm-10"><?php echo $form['html']; ?></div>
										</div>
										<?php } ?>
										<div class="form-group">
											<label class="control-label col-sm-2"></label>
											<div class="col-sm-10">
												<button class="btn btn-primary" type="submit">Submit</button>
												<input type="hidden" name="modifyuserinfo" value="1"/>
												<input type="hidden" name="page" value="<?php echo $this->tpl_var['page']; ?>"/>
												<?php $aid = 0;
 foreach($this->tpl_var['search'] as $key => $arg){ 
 $aid++; ?>
												<input type="hidden" name="search[<?php echo $key; ?>]" value="<?php echo $arg; ?>"/>
												<?php } ?>
											</div>
									</fieldset>
								</form>
							</div>
							<div id="panel-788885" class="tab-pane">
								<form action="index.php?user-center-privatement" method="post" class="form-horizontal" style="padding:10px 40px;">
									<fieldset>
										<table width="100%">
											<tr style="line-height:3em;">
												<td width="20%"><label for="oldpassowrd" class="control-label">Old Password：</label></td>
												<td><input id="oldpassowrd" type="password" name="oldpassword" needle="true" datatype="password" msg="Please enter password of more than 6 number and letter!"/></td>
											</tr>
											<tr style="line-height:3em;">
												<td width="20%"><label for="passowrd1" class="control-label">New Password：</label></td>
												<td><input id="passowrd1" type="password" name="args[password]" needle="true" datatype="password" msg="Please enter password of more than 6 number and letter!"/></td>
											</tr>
											<tr style="line-height:3em;">
												<td width="20%"><label for="oldpassowrd" class="control-label">Re Password：</label></td>
												<td><input id="password2" type="password" name="args[password2]" needle="true" equ="passowrd1" msg="Before and after the two password must be consistent and can not be empty"/></td>
											</tr>
											<tr style="line-height:3em;">
												<td></td>
												<td>
													<button class="btn btn-primary" type="submit">Submit</button>
													<input type="hidden" name="modifyuserpassword" value="1"/>
													<input type="hidden" name="page" value="<?php echo $this->tpl_var['page']; ?>"/>
													<?php $aid = 0;
 foreach($this->tpl_var['search'] as $key => $arg){ 
 $aid++; ?>
													<input type="hidden" name="search[<?php echo $key; ?>]" value="<?php echo $arg; ?>"/>
													<?php } ?>
												</td>
											</table>
										</div>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
$('.form-horizontal :input').not("button").addClass("form-control").css("max-width","240px");
</script>
<?php $this->_compileInclude('footer'); ?>
</body>
</html>