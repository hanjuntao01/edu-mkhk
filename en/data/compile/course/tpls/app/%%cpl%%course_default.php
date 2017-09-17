<?php if(!$this->tpl_var['userhash']){ ?> <?php $this->_compileInclude('header'); ?>

<body>
	<?php $this->_compileInclude('nav'); ?>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="main">
				<div class="box itembox" style="margin-bottom:0px;">
					<div class="col-xs-12">
						<ol class="breadcrumb">
							<li>
								<a href="index.php">Index</a>
							</li>
							<li>
								<a href="index.php?course">Course</a>
							</li>
							<?php $cbid = 0;
 foreach($this->tpl_var['catbread'] as $key => $cb){ 
 $cbid++; ?>
							<li>
								<a href="index.php?course-app-category&catid=<?php echo $cb['catid']; ?>"><?php echo $cb['catname']; ?></a>
							</li>
							<?php } ?>
							<li class="active"><?php echo $this->tpl_var['cat']['catname']; ?></li>
						</ol>
					</div>
				</div>
			</div>
			<div class="main" id="datacontent">
				<?php } ?>

				<div class="col-xs-7 box_" style="padding-left:0px;position:relative;width:685px ; height:571px ; overflow: auto;">
					<?php if($this->tpl_var['content']['courseid']){ ?>
						<div class="box itembox" style="padding-top:20px;">					
							<p><?php echo html_entity_decode($this->ev->stripSlashes($this->tpl_var['content']['coursedescribe'])); ?></p>
						</div>
					<?php } ?>
				</div>

			<div class="col-xs-5 pull-right" style="padding-right:0px;" id="userlevel" userlevel="<?php echo $this->tpl_var['userlevel']; ?>">
					<div class="box itembox" style="padding-top:20px;">
						<h4 class="title"><?php echo $this->tpl_var['course']['cstitle']; ?></h4> <?php echo html_entity_decode($this->ev->stripSlashes($this->tpl_var['course']['csdescribe'])); ?>
					</div>
					<?php $cid = 0;
 foreach($this->tpl_var['contents']['data'] as $key => $content){ 
 $cid++; ?>
					
						<div class="col-xs-4 course" courselevel="<?php echo $content['courselevel']; ?>" style="right: 30px; outline: none;">
							<a target="datacontent" style="text-decoration:none;"  href="index.php?course-app-course&page=<?php echo $this->tpl_var['page']; ?>&csid=<?php echo $this->tpl_var['course']['csid']; ?>&contentid=<?php echo $content['courseid']; ?>" class="ajax btn" id="btn" courselevel="<?php echo $content['courselevel']; ?>" course_examid="<?php echo $content['course_examid']; ?>">
							<h4 class="xx" style="width: 153px;height:30px;text-align:center;background-color:white;padding-top:5px ;margin-left:5px ;outline: none;" id="<?php echo $content['courselevel']; ?>"><?php echo $content['coursetitle']; ?></h4></a>

						</div>
					
					
					<?php } ?>
					

					<div class="col-xs-4 box_" style="padding-left:0px;position:relative; overflow: auto;">
						<?php if($this->tpl_var['content']['courseid']){ ?>
						
						<div class="box itembox" style="width:153px;height: 30px;background: #337AB7;">				
							<a action-before="clearStorage" href="index.php?exam-app-exam-selectquestions&examid=<?php echo $this->tpl_var['content']['course_examid']; ?>" class="thumbnail ajax herf" style="position:relative;background: #337AB7;color:white; none;border: 0;" id="herf"><center>Start Test</center></a>
						</div>
					<?php } ?>

					</div>
					
					<ul class="pagination pagination-right"><?php echo $this->tpl_var['contents']['pages']; ?></ul>
				</div>
				<?php if(!$this->tpl_var['userhash']){ ?>
				
				
			</div>
		</div>
	</div>
	<?php $this->_compileInclude('footer'); ?>
</body>

</html>
<?php } ?>
<script type="text/javascript">
$(function(){

	var level = $('#userlevel').attr('userlevel');
	$('.course a').each(function(index,element){
		if(index<=(level-1)){

		}else{
			$(this).attr('disabled','true');
			//$(this).attr('title','Please complete the course ahead.');
			$(this).removeAttr('href');
			$(this).unbind();
		}
	});

	});
</script>