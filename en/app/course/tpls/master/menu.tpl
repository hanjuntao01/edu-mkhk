<ul class="list-group">	<li class="list-group-item {x2;if:$method == 'index'} active{x2;endif}">		{x2;if:$method == 'index'}Index		{x2;else}		<a href="index.php?{x2;$_app}-master">Index</a>		{x2;endif}	</li>	<li class="list-group-item {x2;if:$method == 'category'}active{x2;endif}">		{x2;if:$method == 'category'}Course category		{x2;else}		<a href="index.php?{x2;$_app}-master-category">Course category</a>		{x2;endif}	</li>	<li class="list-group-item {x2;if:$method == 'course'}active{x2;endif}">		{x2;if:$method == 'course'}Course management		{x2;else}		<a href="index.php?{x2;$_app}-master-course">Course management</a>		{x2;endif}	</li>	<li class="list-group-item {x2;if:$method == 'contents'}active{x2;endif}">		{x2;if:$method == 'contents'}Courseware management		{x2;else}		<a title="Courseware management" href="index.php?{x2;$_app}-master-contents">Courseware manage..</a>		{x2;endif}	</li><!-- 	<li class="list-group-item {x2;if:$method == 'module'}active{x2;endif}">		{x2;if:$method == 'module'}模型管理		{x2;else}		<a href="index.php?{x2;$_app}-master-module">模型管理</a>		{x2;endif}	</li> --></ul>