<?php $this->_compileInclude('header'); ?>
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
<?php $this->_compileInclude('nav'); ?>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="main">
			<div class="box itembox" style="margin-bottom:0px;">
				<div class="col-xs-12">
					<ol class="breadcrumb">
					  <li><a href="index.php">Home</a></li>
					  <li class="active">Certificate</li>
					</ol>
				</div>
			</div>

			<div class="box itembox">
            	<div class="col-xs-12">
              
            		<div><b class="text-info"> </b></div>
            			<div class="col-xs-12 honor">
                    <img src="/app/core/styles/img/honor.png">
                    <div class="honor_name_box">
                      <h2 class="honor-name"><?php echo $this->tpl_var['userdata']['usertruename']; ?></h2>
                    </div>
                    <div class="honor_score_box">
                      <h2 class="honor-score"><?php echo $this->tpl_var['ehscore']; ?></h2>
                    </div>
                  </div>

              </div>
            	
      </div>
		</div>
	</div>
</div>

<?php $this->_compileInclude('footer'); ?>
</body>
</html>