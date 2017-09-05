{x2;include:header}
<style>
  .honor{
    position: relative;
  }
  .honor_name_box{
    position:absolute;top:250px;width:1040px;
  }
  .honor-name{
    font-family: 'Andalus';font-size: 50px;color:#000000;text-align: center;
  }
  .honor_score_box{
    position:absolute;top:630px;left:235px;
  }
  .honor-score{
    font-family: 'Andalus';font-size: 40px;text-align: left;
  }

</style>
<body>
{x2;include:nav}
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="box itembox" style="margin-bottom:0px;">
				<div class="col-xs-12">
					<ol class="breadcrumb">
					  <li><a href="index.php">首页</a></li>
					  
					  <li><a href="index.php?exam-app-basics">{x2;$data['currentbasic']['basic']}</a></li>
					  <li><a href="index.php?exam-app-exam">正式考试</a></li>
					  <li class="active">成绩单</li>
					</ol>
				</div>
			</div>

			<div class="box itembox">
				<legend class="text-center"><h3>{x2;$sessionvars['examsession']}</h3></legend>

            	<div class="col-xs-12">
              
            		<div><b class="text-info"> </b></div>
            			<div class="col-xs-12 honor">
                    <img src="/app/core/styles/img/honor.png">
                    <div class="honor_name_box">
                      <h2 class="honor-name">{x2;$userlevel_last['usertruename']}</h2>
                    </div>
                    <div class="honor_score_box">
                      <h2 class="honor-score">{x2;$sessionvars['examsessionscore']}</h2>
                    </div>
                  </div>

              </div>
            	
      </div>
		</div>
	</div>
</div>

{x2;include:footer}
</body>
</html>