<?php
/*
 * Created on 2016-5-19
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
class action extends app
{
	public function display()
	{
		$action = $this->ev->url(3);
		if(!method_exists($this,$action))
		$action = "index";
		$this->$action();
		exit;
	}

	private function index()
	{
		$page = $this->ev->get('page');
		$search = $this->ev->get('search');
		$u = '';
		if($search)
		{
			$this->tpl->assign('search',$search);
			foreach($search as $key => $arg)
			{
				$u .= "&search[{$key}]={$arg}";
			}
		}
		
		
		$userid = $this->_user['sessionuserid'];
		$user = $this->user->getUserById($userid);
		$group = $this->user->getGroupById($user['usergroupid']);
		$fields = $this->module->getMoudleFields($group['groupmoduleid'],array('iscurrentuser'=> $userid == $this->_user['sessionuserid'],'group' => $group));
		$forms = $this->html->buildHtml($fields,$user);
		$actors = $this->user->getGroupsByModuleid($group['groupmoduleid']);
		$this->tpl->assign('groupid',$this->_user['sessiongroupid']);
		$this->tpl->assign('moduleid',$group['groupmoduleid']);
		$this->tpl->assign('fields',$fields);
		$this->tpl->assign('forms',$forms);
		$this->tpl->assign('actors',$actors);
		$this->tpl->assign('user',$user);
		$this->tpl->assign('page',$page);
		$this->tpl->display('stupaper');
		
	}
}


?>
