<?php if(!$this->tpl_var['userhash']){ ?><?php $this->_compileInclude('header'); ?><body><?php $this->_compileInclude('nav'); ?><div class="container-fluid">	<div class="row-fluid">		<div class="main">			<div class="col-xs-2" style="padding-top:10px;margin-bottom:0px;">				<?php $this->_compileInclude('menu'); ?>			</div>			<div class="col-xs-10" id="datacontent"><?php } ?>				<div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">					<div class="col-xs-12">						<ol class="breadcrumb">							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-master"><?php echo $this->tpl_var['apps'][$this->tpl_var['_app']]['appname']; ?></a></li>							<li class="active">Role management</li>						</ol>					</div>				</div>				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">					<h4 class="title" style="padding:10px;">						Role list						<a class="pull-right btn btn-primary" href="index.php?user-master-actor-add">Add role</a>					</h4>					<table class="table table-hover table-bordered">						<thead>							<tr class="info">								<th>ID</th>								<th>Name</th>								<th>Default</th>								<th>Bind Model</th>								<th>Describe</th>								<th>Operate</th>							</tr>						</thead>						<tbody>							<?php $gid = 0;
 foreach($this->tpl_var['actors']['data'] as $key => $group){ 
 $gid++; ?>							<tr>								<td><?php echo $group['groupid']; ?></td>								<td><?php echo $group['groupname']; ?></td>								<td><?php if($group['groupdefault']){ ?><a class="glyphicon glyphicon-ok"></a><?php } else { ?><a class="glyphicon glyphicon-remove ajax" href="index.php?user-master-actor-selectactor&groupid=<?php echo $group['groupid']; ?>&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>"></a><?php } ?></td>								<td><?php echo $this->tpl_var['modules'][$group['groupmoduleid']]['modulename']; ?></td>								<td><?php echo $group['groupdescribe']; ?></td>								<td>									<div class="btn-group">										<a class="btn" href="index.php?user-master-actor-modifyactor&groupid=<?php echo $group['groupid']; ?>&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>" title="Modify"><em class="glyphicon glyphicon-edit"></em></a>										<a msg="After the deletion is not restored, are you sure you want to do this?" class="btn confirm" href="index.php?user-master-actor-delactor&groupid=<?php echo $group['groupid']; ?>&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>" title="Delete"><em class="glyphicon glyphicon-remove"></em></a>									</div>								</td>							</tr>							<?php } ?>						</tbody>					</table>					<ul class="pagination pagination-right">						<?php echo $this->tpl_var['actors']['pages']; ?>					</ul>				</div>			</div><?php if(!$this->tpl_var['userhash']){ ?>		</div>	</div></div><?php $this->_compileInclude('footer'); ?></body></html><?php } ?>