<div class="container-fluid box" style="margin:0px auto;padding-top:10px;overflow:visible; background: white;">
	<div class="row-fluid">
		<div class="main">
			<div class="col-xs-3">
				<h1 style="font-size:42px;color:#337AB7;"><img src="../app/core/styles/img/logo2.png" style="height:100px;margin-top:-30px;"/></h1>
			</div>
			<div class="col-xs-1">
			</div>
			<div class="col-xs-6" style="padding-top:22px;">
				<div class="form-inline">
					<div class="form-group">
						<input type="text" style="width:380px;" class="form-control" id="keyword" placeholder="Search Course">
					</div>
					<button type="button" class="btn btn-primary" onclick="javascript:window.location='index.php?course-app-search&keyword='+$('#keyword').val();">Search Course</button>
				</div>
			</div>
			<div class="col-xs-2" style="padding-top:22px;">
				<ul class="list-unstyled list-inline">
					<?php if($this->tpl_var['_user']['userid']){ ?>
					<li>
						<div class="btn-group">
							<button type="button" class="btn btn-primary"><em class="glyphicon glyphicon-user"></em> <?php echo $this->tpl_var['_user']['username']; ?></button>
							<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<span class="caret"></span>
								<span class="sr-only">Toggle Dropdown</span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="index.php?user-center"><em class="glyphicon glyphicon-user"></em> User Center</a></li>
								<?php if($this->tpl_var['_user']['teacher_subjects']){ ?><li><a href="index.php?exam-teach"><em class="glyphicon glyphicon-book"></em> Teacher management</a></li><?php } ?>
								<?php if($this->tpl_var['_user']['groupid'] == 1){ ?><li><a href="index.php?core-master"><em class="glyphicon glyphicon-dashboard"></em> Admin</a></li><?php } ?>
								<li><a class="ajax" href="index.php?user-app-logout"><em class="glyphicon glyphicon-log-out"></em> Logout</a></li>
							</ul>
						</div>
					</li>
					<?php } else { ?>
					<li><a href="javascript:;" onclick="javascript:$.loginbox.show();" class="btn btn-default"> Login </a></li>
					<li><a href="index.php?user-app-register" class="btn btn-default"> Register </a></li>
					<?php } ?>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid navbar" style="margin-top:0px;margin-bottom:0px;padding-top:10px;background-color:#1a4c87;">
	<div class="row-fluid">
		<div class="main">
			<div class="col-xs-12">
				<ul class="list-unstyled list-inline" style="white-space:nowrap">
					<li class="menu col-xs-1 active"><a href="index.php" class="icon">Home</a></li>
					<li class="menu col-xs-1"><a href="index.php?course">Courses</a></li>
					<li class="menu col-xs-1"><a href="index.php?exam">Exam</a></li>
					<li class="menu col-xs-1"><a href="mailto:hr@megacap.com.cn">We Care Career</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>