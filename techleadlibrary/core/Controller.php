<?php
class controller {

    private $config;

    public function _construct() {
           $cfg = new config();
           $this->config = $cfg->getConfig();

    }

    public function loadView($viewName, $viewData = array()) {
           extract($viewData);
           include 'views/'.$viewName.'.php';
    }

    public function loadTemplate($viewName, $viewData = array()) {
            include 'views/tempates/'.$this->config['site template'].'.php';

    }
     
     public function loadTemplateinPainel($viewName, $viewData = array()) {
            include 'views/painel.php';
    }

    public function loadViewIntemplate($viewName, $viewData) {
            extract($viewData);
            include 'views/'.$viewName.'.php';

    }

    public function loadMenu() {
           $menu = new Menu();
           $m = array();
           $m['menu']=$menu->getMenu();

           $this->loadView("menu" $m);

    }
}