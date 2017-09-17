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
				<div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">
					<div class="col-xs-12">
						<ol class="breadcrumb">
							<li><a href="index.php">Index</a></li>
							<li class="active">User Center</li>
						</ol>
					</div>
				</div>
				<div class="box itembox" style="padding-top:10px;">
					<h4 class="title">User Center</h4>
					<table width="100%">
						<tr>
							<td width="30%">
								<div class="thumbnail" style="width:80%;">
									<img style="max-width:210px;" alt="300x200" src="<?php if($this->tpl_var['_user']['photo']){ ?><?php echo $this->tpl_var['_user']['photo']; ?><?php } else { ?>app/exam/styles/image/paper.png<?php } ?>" />
								</div>
							</td>
							<td width="35%" style="padding:10px;">
								<h3><?php echo $this->tpl_var['_user']['username']; ?></h3>
								<p>registration  date：<?php echo date('Y-m-d',$this->tpl_var['_user']['userregtime']); ?></p>
								<p>registration  IP：<?php echo $this->tpl_var['_user']['userregip']; ?></p>
							<!-- 	<p>您现有积分：<?php echo $this->tpl_var['_user']['usercoin']; ?></p> -->
								<p>&nbsp;</p>
								<p>&nbsp;</p>
								<p>&nbsp;</p>

							<!-- 	<p><a class="btn btn-primary" href="index.php?user-center-payfor">充值</a></p> -->
							</td>
							<td style="padding:10px;">
								<h3></h3>
								<p>User group：<?php echo $this->tpl_var['groups'][$this->tpl_var['_user']['usergroupid']]['groupname']; ?></p>
								<p>True name：<?php echo $this->tpl_var['_user']['usertruename']; ?></p>
								<p>Email：<?php echo $this->tpl_var['_user']['useremail']; ?></p>
								<p>&nbsp;</p>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<?php $this->_compileInclude('footer'); ?>
</body>
</html>