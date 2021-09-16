<?php
class painelController extends controller {

          public function _construct() {
          	parent::_construct();
          


          }

          public function index() {
               $u = new Usuarios();
               $u->verificarlogin();

          	   $dados = array();
          	$p = new Paginas();

            $dados['paginas'] = $p->getpaginas();
              
          	$this->loadTemplateInPainel('painel/home', $dados);
          

          }

          public function menus() {
               $u = new Usuarios();
               $u->verificarlogin();

               $dados = array();
            $p = new menu();

            $dados['menus'] = $m->getMenu();
              
            $this->loadTemplateInPainel('painel/menus', $dados);
          

          }

          public function login() {
                 $dados = array(
                  'erro' => ''

                  );

                 if(isset($_POST['email']) && !empty($_POST['email'])) {
                       $email = adds lashes($_POSTS['email']);
                       $senha = md5($_POST['senha']);

                        $u = new Usuarios();
                       $dados['erro'] $u->logar($email, $senha);
                 }

                 $this->loadView("painel/login", $dados);


                 

          }

          public function logout() {

                 unset ($_SESSION['lgpainel']);
                 header("Location:".BASE."painel/login");
                 exit;
          }
} 