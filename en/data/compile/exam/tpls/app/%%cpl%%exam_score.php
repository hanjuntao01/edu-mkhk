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
					  <li><a href="index.php?exam-app-exam">Test</a></li>
					  <li class="active">Exam Results</li>
					</ol>
				</div>
			</div>
			<div class="box itembox">
				<legend class="text-center"><h3><?php echo $this->tpl_var['sessionvars']['examsession']; ?></h3></legend>
				<?php if($this->tpl_var['data']['currentbasic']['basicexam']['notviewscore']){ ?>
				<div class="col-xs-12 alert alert-info">
					<p>You have successfully hand in, please wait for the teacher's statistics and scores.</p>
				</div>
				<?php } else { ?>
				<div class="col-xs-4">
            		<div class="boardscore">
            			<h1 class="text-center text-danger"><?php echo $this->tpl_var['sessionvars']['examsessionscore']; ?> marks</h1>
            			<p>Score evaluation</p>
            		</div>
            	</div>
            	<div class="col-xs-8">
            		<div><b class="text-info">Test details：</b></div>
          			<p> Total points：<b class="text-warning"><?php echo $this->tpl_var['sessionvars']['examsessionsetting']['examsetting']['score']; ?></b> marks Qualified fraction line：<b class="text-warning"><?php echo $this->tpl_var['sessionvars']['examsessionsetting']['examsetting']['passscore']; ?></b> marks Answer time：<b class="text-warning"><?php if($this->tpl_var['sessionvars']['examsessiontime'] >= 60){ ?><?php if($this->tpl_var['sessionvars']['examsessiontime']%60){ ?><?php echo intval($this->tpl_var['sessionvars']['examsessiontime']/60)+1; ?><?php } else { ?><?php echo intval($this->tpl_var['sessionvars']['examsessiontime']/60); ?><?php } ?> Minutes <?php } else { ?><?php echo $this->tpl_var['sessionvars']['examsessiontime']; ?> Seconds <?php } ?></b></p>
              		<table class="table table-hover table-bordered">
                      <tr class="success">
                        <th>Question types</th>
                        <th>Total number of questions</th>
                        <th>Answer questions</th>
                        <th>Total points</th>
                        <th>marks</th>
                      </tr>
                      <?php $nid = 0;
 foreach($this->tpl_var['number'] as $key => $num){ 
 $nid++; ?>
                      <?php if($num){ ?>
                      <tr>
                        <td><?php echo $this->tpl_var['questype'][$key]['questype']; ?></td>
                        <td><?php echo $num; ?></td>
                        <td><?php echo $this->tpl_var['right'][$key]; ?></td>
                        <td><?php echo number_format($num*$this->tpl_var['sessionvars']['examsessionsetting']['examsetting']['questype'][$key]['score'],1); ?></td>
                        <td><?php echo number_format($this->tpl_var['score'][$key],1); ?></td>
                      </tr>
                      <?php } ?>
                      <?php } ?>
                      <tr>
                        <td colspan="5" align="left">The examination of a total of <b class="text-warning"><?php echo $this->tpl_var['allnumber']; ?></b> questions, a total of <b class="text-warning"><?php echo $this->tpl_var['sessionvars']['examsessionsetting']['examsetting']['score']; ?></b> points, you do the <b class="text-warning"><?php echo $this->tpl_var['allright']; ?></b> questions, got <b class="text-warning"><?php echo $this->tpl_var['sessionvars']['examsessionscore']; ?></b> points.</td>
                      </tr>

                   </table>
                   <?php if($this->tpl_var['sessionvars']['examsessionscore']<90){ ?>
                   <div class="text-center"><a href="index.php?course-app-course&csid=2&contentid=<?php echo $this->tpl_var['examlevel2']; ?>" class="btn btn-info">Oops, you fail. </br>
Please review what you have learned and retry <?php echo $this->tpl_var['sessionvars']['examsession']; ?></a></div>
                  <?php } ?>
                   <!-- 
                   <?php if($this->tpl_var['data']['currentbasic']['basicexam']['model'] != 2){ ?>
                   <div class="text-center"><a href="index.php?exam-app-history-view&ehid=<?php echo $this->tpl_var['ehid']; ?>" class="btn btn-info">查看答案和解析</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.php?exam-app-history&ehtype=2" class="btn btn-info">进入我的考试记录</a></div>
            	   <?php } ?> -->
            	</div>
            	<?php } ?>
            </div>
		</div>
	</div>
</div>
<?php $this->_compileInclude('footer'); ?>

<div class="modal" id="submodal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close"><span></span></button>
        <h4 class="modal-title" id="myModalLabel">Congratulations!</h4>
      </div>
      <div class="modal-body">
        <div id="lessonknows">You have passed <?php echo $this->tpl_var['sessionvars']['examsession']; ?>, will start the following test in 5 seconds.</div>
      </div>
    <!--   <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">再看看其他的</button>
      </div> -->
    </div>
  </div>
</div>


</body>
</html>

<script>
$(function(){

  //判断考试分数是否大于90分
  if(<?php echo $this->tpl_var['sessionvars']['examsessionscore']; ?>>=<?php echo $this->tpl_var['sessionvars']['examsessionsetting']['examsetting']['passscore']; ?>){
    $('#submodal').css('display','block');
    var t = setTimeout("go()",6000)
  }

})

function go(){
    window.location='index.php?course-app-course&csid=2&contentid=<?php echo $this->tpl_var['examlevel3']; ?>';
  };
</script>