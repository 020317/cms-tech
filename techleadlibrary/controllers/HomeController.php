<?php
class homeController extends controller {

    public function _construct() {
    	parent::_construct();
    }

    public function index() {
    	$dados = array();


    	$this=>loadTemplate('home', $dados)
    }

}