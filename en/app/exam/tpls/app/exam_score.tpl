{x2;include:header}
<body>
{x2;include:nav}
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="box itembox" style="margin-bottom:0px;">
				<div class="col-xs-12">
					<ol class="breadcrumb">
					  <li><a href="index.php">Home</a></li>
					  
					  <li><a href="index.php?exam-app-basics">{x2;$data['currentbasic']['basic']}</a></li>
					  <li><a href="index.php?exam-app-exam">Test</a></li>
					  <li class="active">Exam Results</li>
					</ol>
				</div>
			</div>
			<div class="box itembox">
				<legend class="text-center"><h3>{x2;$sessionvars['examsession']}</h3></legend>
				{x2;if:$data['currentbasic']['basicexam']['notviewscore']}
				<div class="col-xs-12 alert alert-info">
					<p>You have successfully hand in, please wait for the teacher's statistics and scores.</p>
				</div>
				{x2;else}
				<div class="col-xs-4">
            		<div class="boardscore">
            			<h1 class="text-center text-danger">{x2;$sessionvars['examsessionscore']} marks</h1>
            			<p>Score evaluation</p>
            		</div>
            	</div>
            	<div class="col-xs-8">
            		<div><b class="text-info">Test details：</b></div>
          			<p> Total points：<b class="text-warning">{x2;$sessionvars['examsessionsetting']['examsetting']['score']}</b> marks Qualified fraction line：<b class="text-warning">{x2;$sessionvars['examsessionsetting']['examsetting']['passscore']}</b> marks Answer time：<b class="text-warning">{x2;if:$sessionvars['examsessiontime'] >= 60}{x2;if:$sessionvars['examsessiontime']%60}{x2;eval: echo intval($sessionvars['examsessiontime']/60)+1}{x2;else}{x2;eval: echo intval($sessionvars['examsessiontime']/60)}{x2;endif} Minutes {x2;else}{x2;$sessionvars['examsessiontime']} Seconds {x2;endif}</b></p>
              		<table class="table table-hover table-bordered">
                      <tr class="success">
                        <th>Question types</th>
                        <th>Total number of questions</th>
                        <th>Answer questions</th>
                        <th>Total points</th>
                        <th>marks</th>
                      </tr>
                      {x2;tree:$number,num,nid}
                      {x2;if:v:num}
                      <tr>
                        <td>{x2;$questype[v:key]['questype']}</td>
                        <td>{x2;v:num}</td>
                        <td>{x2;$right[v:key]}</td>
                        <td>{x2;eval: echo number_format(v:num*$sessionvars['examsessionsetting']['examsetting']['questype'][v:key]['score'],1)}</td>
                        <td>{x2;eval: echo number_format($score[v:key],1)}</td>
                      </tr>
                      {x2;endif}
                      {x2;endtree}
                      <tr>
                        <td colspan="5" align="left">The examination of a total of <b class="text-warning">{x2;$allnumber}</b> questions, a total of <b class="text-warning">{x2;$sessionvars['examsessionsetting']['examsetting']['score']}</b> points, you do the <b class="text-warning">{x2;$allright}</b> questions, got <b class="text-warning">{x2;$sessionvars['examsessionscore']}</b> points.</td>
                      </tr>

                   </table>
                   {x2;if:$sessionvars['examsessionscore']<90}
                   <div class="text-center"><a href="index.php?course-app-course&csid=2&contentid={x2;$examlevel2}" class="btn btn-info">Oops, you fail. </br>
Please review what you have learned and retry {x2;$sessionvars['examsession']}</a></div>
                  {x2;endif}
                   <!-- 
                   {x2;if:$data['currentbasic']['basicexam']['model'] != 2}
                   <div class="text-center"><a href="index.php?exam-app-history-view&ehid={x2;$ehid}" class="btn btn-info">查看答案和解析</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.php?exam-app-history&ehtype=2" class="btn btn-info">进入我的考试记录</a></div>
            	   {x2;endif} -->
            	</div>
            	{x2;endif}
            </div>
		</div>
	</div>
</div>
{x2;include:footer}

<div class="modal" id="submodal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close"><span></span></button>
        <h4 class="modal-title" id="myModalLabel">Congratulations!</h4>
      </div>
      <div class="modal-body">
        <div id="lessonknows">You have passed {x2;$sessionvars['examsession']}, will start the following test in 5 seconds.</div>
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
  if({x2;$sessionvars['examsessionscore']}>={x2;$sessionvars['examsessionsetting']['examsetting']['passscore']}){
    $('#submodal').css('display','block');
    var t = setTimeout("go()",6000)
  }

})

function go(){
    window.location='index.php?course-app-course&csid=2&contentid={x2;$examlevel3}';
  };
</script>