{x2;include:header}
<body>
{x2;include:nav}
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
		<!-- 	<div class="box itembox" style="margin-bottom:0px;">
				<div class="col-xs-12">
					<ol class="breadcrumb">
					  <li><a href="index.php">首页</a></li>
					  
					  <li class="active">{x2;$data['currentbasic']['basic']}</li>
					</ol>
				</div>
			</div> -->
			<div class="box itembox">
				<h4 class="title">Exam</h4>
				{x2;if:!$data['currentbasic']['basicexam']['model'] || $data['currentbasic']['basicexam']['model'] == 1}
<!-- 
				<div class="col-xs-3" style="width:20%">
					<a href="index.php?exam-app-exampaper" class="thumbnail" style="border:0px;">
						<img src="../app/core/styles/img/t2.png" alt="" width="100%">
					</a>
					<h5 class="text-center">Simulation Test</h5>
				</div> -->
				{x2;endif}
				{x2;if:!$data['currentbasic']['basicexam']['model'] || $data['currentbasic']['basicexam']['model'] == 2}
				<div class="col-xs-3" style="width:20%">
					<a href="index.php?exam-app-exam" class="thumbnail" style="border:0px;">
						<img src="../app/core/styles/img/t3.png" alt="" width="100%">
					</a>
					<h5 class="text-center">Real Test</h5>
				</div>
				{x2;endif}
			</div>
			<div class="box itembox">
				<h4 class="title">Review</h4>
				<div class="col-xs-3" style="width:20%">
					<a href="index.php?exam-app-history&ehtype=2" class="thumbnail" style="border:0px;">
						<img src="../app/core/styles/img/t5.png" alt="" width="100%">
					</a>
					<h5 class="text-center">Exam Records</h5>
				</div>
			<!-- 	<div class="col-xs-3" style="width:20%">
					<a href="index.php?exam-app-favor" class="thumbnail" style="border:0px;">
						<img src="../app/core/styles/img/t6.png" alt="" width="100%">
					</a>
					<h5 class="text-center">Exercises collection</h5>
				</div> -->
				<div class="col-xs-3" style="width:20%">
					<a href="index.php?exam-app-score" class="thumbnail" style="border:0px;">
						<img src="../app/core/styles/img/t8.png" alt="" width="100%">
					</a>
					<h5 class="text-center">Exams Results</h5>
				</div>
			</div>
		</div>
	</div>
</div>
{x2;include:footer}
</body>
</html>