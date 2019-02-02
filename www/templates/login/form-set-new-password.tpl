<form id="setNewPasswordForm" class="registration-form" method="POST" action="<?=HOST?>set-new-password" novalidate>
	<?php if ( $newPasswordReady == false ): ?>
	<h1 class="title-1 registration-form__caption">Введите новый пароль</h1>
	<?php endif ?>
	
	<?php 
		// echo "<pre>";
		// print_r($_POST);
		// echo "</pre>";
	 ?>

	<?php require ROOT . "templates/_parts/_errors.tpl"?>
	<?php require ROOT . "templates/_parts/_success.tpl"?>

	<div class="notify mb-20 notification__error hidden"></div>
	
		<div class="registration-form__email login-page-form__row">
	<?php if ( $newPasswordReady == false ): ?>
			<input name="resetpassword" class="input-text" type="password" placeholder="Новый пароль"/>
	<?php endif ?>
		</div>
	
	<div class="password-remember-return">
				<a class="registration-form__password-recovery" href="<?=HOST?>login">Перейти на страницу входа</a>
	</div>
	<?php if ( $newPasswordReady == false ):?>
		<div class="registration-form__button">
			<input type="hidden" value="<?=$_GET['email']?>" name="resetemail" />
			<input type="hidden" value="<?=$_GET['code']?>" name="onetimecode" />
			<input type="hidden" value="set-new-password" name="set-new-password" />
			<a class="button button-enter button--set-new-password">Установить новый пароль</a>
		</div>
	<?php endif ?>
</form>