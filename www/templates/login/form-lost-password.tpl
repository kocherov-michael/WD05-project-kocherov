<form id="lost-form" class="registration-form" method="POST" action="<?=HOST?>lost-password" novalidate>
	<h1 class="title-1 registration-form__caption">Забыл пароль</h1>
	
	<?php 
		// echo "<pre>";
		// print_r($_POST);
		// echo "</pre>";
	 ?>

	<?php require ROOT . "templates/_parts/_errors.tpl"?>
	<?php require ROOT . "templates/_parts/_success.tpl"?>

	<div class="notify mb-20 notification__error hidden"></div>
	<!-- <div class="notify mb-20 notification__success">Всё отлично!</div> -->
	
	<?php if ($recoveryInstructionReady == false): ?>
		<div class="registration-form__email login-page-form__row">
			<input name="email" class="input-text" type="email" placeholder="E-mail" value="info@mail.com" />
		</div>
	<?php endif ?>
	
	<div class="password-remember-return">
				<a class="registration-form__password-recovery" href="<?=HOST?>login">Перейти на страницу входа</a>
	</div>
	<?php if ($recoveryInstructionReady == false): ?>
		<div class="registration-form__button">
			<input type="hidden" value="lost-password" name="lost-password" />
			<a class="button button-enter button--lost">Восстановить пароль</a>
		</div>
	<?php endif ?>
</form>