<?php if(!$this->tpl_var['userhash']){ ?><?php $this->_compileInclude('header'); ?><body><?php $this->_compileInclude('nav'); ?><div class="container-fluid">	<div class="row-fluid">		<div class="main">			<div class="col-xs-2" style="padding-top:10px;margin-bottom:0px;">				<?php $this->_compileInclude('menu'); ?>			</div>			<div class="col-xs-10" id="datacontent">	<?php } ?>				<div class="box itembox" style="margin-bottom:0px;border-bottom:1px solid #CCCCCC;">					<div class="col-xs-12">						<ol class="breadcrumb">							<li><a href="index.php?<?php echo $this->tpl_var['_app']; ?>-master"><?php echo $this->tpl_var['apps'][$this->tpl_var['_app']]['appname']; ?></a></li>							<li class="active">User management</li>						</ol>					</div>				</div>				<div class="box itembox" style="padding-top:10px;margin-bottom:0px;">					<h4 class="title" style="padding:10px;">						User list						<span class="pull-right">							<a data-toggle="dropdown" class="btn btn-primary dropdown-toggle" href="#">Add user<strong class="caret"></strong></a>							<ul class="dropdown-menu">								<li><a href="index.php?user-master-user-add">a user</a></li>								<li><a href="index.php?user-master-user-batadd">Import from CSV file</a></li>							</ul>						</span>					</h4>					<form action="index.php?user-master-user" method="post" style="margin-top:10px;" class="form-inline">						<table class="table">					        <tr>								<td style="border-top:0px;">									User ID：								</td>								<td style="border-top:0px;">									<input name="search[userid]" class="form-control" size="15" type="text" class="number" value="<?php echo $this->tpl_var['search']['userid']; ?>"/>								</td>								<td style="border-top:0px;">									Register time：								</td>								<td style="border-top:0px;">									<input class="form-control datetimepicker" data-date="<?php echo date('Y-m-d',TIME); ?>" data-date-format="yyyy-mm-dd" type="text" name="search[stime]" size="10" id="stime" value="<?php echo $this->tpl_var['search']['stime']; ?>"/> - <input class="form-control datetimepicker" data-date="<?php echo date('Y-m-d',TIME); ?>" data-date-format="yyyy-mm-dd" size="10" type="text" name="search[etime]" id="etime" value="<?php echo $this->tpl_var['search']['etime']; ?>"/>								</td>								<td style="border-top:0px;">									User name：								</td>								<td style="border-top:0px;">									<input class="form-control" name="search[username]" size="15" type="text" value="<?php echo $this->tpl_var['search']['username']; ?>"/>								</td>							</tr>					        <tr>								<td>									Email：								</td>					        	<td>					        		<input class="form-control" name="search[useremail]" size="15" type="text" value="<?php echo $this->tpl_var['search']['useremail']; ?>"/>					        	</td>					        	<td>									User group：								</td>								<td>									<select name="search[groupid]" class="form-control">								  		<option value="0">Unlimited</option>								  		<?php $gid = 0;
 foreach($this->tpl_var['groups'] as $key => $group){ 
 $gid++; ?>								  		<option value="<?php echo $group['groupid']; ?>"<?php if($this->tpl_var['search']['groupid'] == $group['groupid']){ ?> selected<?php } ?>><?php echo $group['groupname']; ?></option>								  		<?php } ?>							  		</select>								</td>								<td>									<button class="btn btn-primary" type="submit">Submit</button>								</td>								<td></td>					        </tr>						</table>						<div class="input">							<input type="hidden" value="1" name="search[argsmodel]" />						</div>					</form>					<form action="index.php?user-master-user-batdel" method="post">						<table class="table table-hover table-bordered">							<thead>								<tr class="info">									<th><input type="checkbox" class="checkall" target="delids"/></th>									<th>ID</th>									<th>Username</th>									<th>Email</th>									<th>Register IP</th>									<!-- <th>积分点数</th> -->									<th>Role</th>									<th>Register time</th>									<th>Operate</th>								</tr>							</thead>							<tbody>								<?php $uid = 0;
 foreach($this->tpl_var['users']['data'] as $key => $user){ 
 $uid++; ?>								<tr>									<td><?php if($user['userid'] != $this->tpl_var['_user']['userid']){ ?><input type="checkbox" name="delids[<?php echo $user['userid']; ?>]" value="1"><?php } ?></td>									<td><?php echo $user['userid']; ?></td>									<td><?php echo $user['username']; ?></td>									<td><?php echo $user['useremail']; ?></td>									<td><?php echo $user['userregip']; ?></td>									<!-- <td><?php echo $user['usercoin']; ?></td> -->									<td><?php echo $this->tpl_var['groups'][$user['usergroupid']]['groupname']; ?></td>									<td><?php echo date('Y-m-d',$user['userregtime']); ?></td>									<td>										<div class="btn-group">											<a class="btn" href="index.php?user-master-user-modify&userid=<?php echo $user['userid']; ?>&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>"><em class="glyphicon glyphicon-edit"></em></a>											<?php if($user['userid'] != $this->tpl_var['_user']['userid']){ ?>											<a msg="After the deletion is not restored, are you sure you want to do this?" class="btn confirm" href="index.php?user-master-user-del&userid=<?php echo $user['userid']; ?>&page=<?php echo $this->tpl_var['page']; ?><?php echo $this->tpl_var['u']; ?>"><em class="glyphicon glyphicon-remove"></em></a>											<?php } ?>										</div>									</td>								</tr>								<?php } ?>							</tbody>						</table>						<div class="form-group">				            <div class="controls">					            <label class="radio-inline">					                <input type="radio" name="action" value="delete" checked/>Delete					            </label>					            <?php $sid = 0;
 foreach($this->tpl_var['search'] as $key => $arg){ 
 $sid++; ?>					            <input type="hidden" name="search[<?php echo $key; ?>]" value="<?php echo $arg; ?>"/>					            <?php } ?>					            <label class="radio-inline">					            	<button class="btn btn-primary" type="submit">Submit</button>					            </label>					        </div>				        </div>					</form>					<ul class="pagination pull-right">						<?php echo $this->tpl_var['users']['pages']; ?>					</div>				</div>			</div><?php if(!$this->tpl_var['userhash']){ ?>		</div>	</div></div><?php $this->_compileInclude('footer'); ?></body></html><?php } ?>