<?php
class Block_Product_Index extends Block_Core_Template
{
	function __construct()
	{
		parent::__construct();
		$this->setTemplate('product/index.phtml');
	}
}
?>