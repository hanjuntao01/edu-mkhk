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

	private function clear()
	{
		$this->session->clearOutTimeUser();
		$this->exam->clearOutTimeExamSession();
		$message = array(
			'statusCode' => 200,
			"message" => "Operation successfully",
		    "navTabId" => "",
		    "rel" => ""
		);
		exit(json_encode($message));
	}

	private function index()
	{
		$this->tpl->display('tools');
	}
}


?>
