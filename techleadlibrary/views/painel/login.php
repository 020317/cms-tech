<form method ="POST">
	E-mail:<br/>
	<imput type="email" name="email" /><br/><br/>

	Senha:<br/>
	<input type="password" name="senha" /><br/></br>

	<input type="submit"  value="Entrar" />

     <?php 
          if(!empty($erro)) {
              echo $erro;

          }
          ?>
</form>