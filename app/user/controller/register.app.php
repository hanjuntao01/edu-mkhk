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
		if($this->ev->get('userregister')){
			$message = array(
					'statusCode' => 300,
					'errorinput' => '11',
					"message" => "自助注册已关闭，请联系HR进行注册学习"
			);
			exit(json_encode($message));
		}

		/*{
			$fob = array('admin','管理员','站长');
			$args = $this->ev->get('args');
			$defaultgroup = $this->user->getDefaultGroup();
			if(!$defaultgroup['groupid'] || !trim($args['username']))
			{
				$message = array(
					'statusCode' => 300,
					"message" => "用户不能注册"
				);
				exit(json_encode($message));
			}
			$username = $args['username'];
			
			foreach($fob as $f)
			{
				if(strpos($username,$f) !== false)
				{
					$message = array(
						'statusCode' => 300,
						'errorinput' => 'args[username]',
						"message" => "用户已经存在"
					);
					exit(json_encode($message));
				}
			}
			$user = $this->user->getUserByUserName($username);
			if($user)
			{
				$message = array(
					'statusCode' => 300,
					'errorinput' => 'args[username]',
					"message" => "用户已经存在"
				);
				exit(json_encode($message));
			}
			$email = $args['useremail'];
			$user = $this->user->getUserByEmail($email);
			if($user)
			{
				$message = array(
					'statusCode' => 300,
					'errorinput' => 'args[username]',
					"message" => "邮箱已经被注册"
				);
				exit(json_encode($message));
			}
			$id = $this->user->insertUser(array('username' => $username,'usergroupid' => $defaultgroup['groupid'],'userpassword' => md5($args['userpassword']),'useremail' => $email));
			$this->session->setSessionUser(array('sessionuserid'=>$id,'sessionpassword'=>md5($args['userpassword']),'sessionip'=>$this->ev->getClientIp(),'sessiongroupid'=>$defaultgroup['groupid'],'sessionlogintime'=>TIME,'sessionusername'=>$username));
			//default basics
			$this->user->insertOpenbasic(array('obuserid'=>$id,'obbasicid'=>5,'obtime'=>time(),'obendtime'=>time()+365*24*3600));
			$message = array(
				'statusCode' => 200,
				"message" => "操作成功",
			    "target" => "",
			    "rel" => "",
			    "callbackType" => 'forward',
			    "forwardUrl" => "index.php?".$this->G->defaultApp
			);
			exit(json_encode($message));
		}*/

		else
		{
			$this->tpl->display('register');
		}
	}
}


?>
