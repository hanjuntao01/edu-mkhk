{x2;if:!$userhash} {x2;include:header}

<body>
	{x2;include:nav}
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="main">
				<div class="box itembox" style="margin-bottom:0px;">
					<div class="col-xs-12">
						<ol class="breadcrumb">
							<li>
								<a href="index.php">首页</a>
							</li>
							<li>
								<a href="index.php?course">课程</a>
							</li>
							{x2;tree:$catbread,cb,cbid}
							<li>
								<a href="index.php?course-app-category&catid={x2;v:cb['catid']}">{x2;v:cb['catname']}</a>
							</li>
							{x2;endtree}
							<li class="active">{x2;$cat['catname']}</li>
						</ol>
					</div>
				</div>
			</div>
			<div class="main" id="datacontent">
				{x2;endif}

				<div class="col-xs-7 box_" style="padding-left:0px;position:relative;width:685px ; height:571px ; overflow: auto;">
					{x2;if:$content['courseid']}
						<div class="box itembox" style="padding-top:20px;">					
							<p>{x2;realhtml:$contents['data'][($content['courseid']-3)]['coursedescribe']}</p>
						</div>
					{x2;endif}
				</div>

			<div class="col-xs-5 pull-right" style="padding-right:0px;" id="userlevel" userlevel="{x2;$userlevel}">
					<div class="box itembox" style="padding-top:20px;">
						<h4 class="title">{x2;$course['cstitle']}</h4> {x2;realhtml:$course['csdescribe']}
					</div>
					{x2;tree:$contents['data'],content,cid}
					
						<div class="col-xs-4 course" courselevel="{x2;v:content['courselevel']}" style="right: 30px; outline: none;">
							<a target="datacontent" style="text-decoration:none;"  href="index.php?course-app-course&page={x2;$page}&csid={x2;$course['csid']}&contentid={x2;v:content['courseid']}" class="ajax btn" id="btn" courselevel="{x2;v:content['courselevel']}" course_examid="{x2;v:content['course_examid']}">
							<h4 class="xx" style="width: 153px;height:30px;text-align:center;background-color:white;padding-top:5px ;margin-left:5px ;outline: none;" id="{x2;v:content['courselevel']}">{x2;v:content['coursetitle']}</h4></a>

						</div>
					
					
					{x2;endtree}
					

					<div class="col-xs-4 box_" style="padding-left:0px;position:relative; overflow: auto;">
						{x2;if:$content['courseid']}
						
						<div class="box itembox" style="width:153px;height: 30px;background: #337AB7;">				
							<a action-before="clearStorage" href="index.php?exam-app-exam-selectquestions&examid={x2;realhtml:$contents['data'][($content['courseid']-3)]['course_examid']}" class="thumbnail ajax herf" style="position:relative;background: #337AB7;color:white; none;border: 0;" id="herf"><center>开始考试</center></a>
						</div>
					{x2;endif}

					</div>
					
					<ul class="pagination pagination-right">{x2;$contents['pages']}</ul>
				</div>
				{x2;if:!$userhash}
				
				
			</div>
		</div>
	</div>
	{x2;include:footer}
</body>

</html>
{x2;endif}
<script type="text/javascript">
$(function(){

	var level = $('#userlevel').attr('userlevel');
	$('.course a').each(function(index,element){
		if(index<=(level-1)){

		}else{
			$(this).attr('disabled','true');
			//$(this).attr('title','请先完成前面的课程');
			$(this).removeAttr('href');
			$(this).unbind();
		}
	});

	});
</script>