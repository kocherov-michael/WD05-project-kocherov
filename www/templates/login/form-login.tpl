<form id="login-form" class="registration-form" method="POST" action="<?=HOST?>login" novalidate>
	<h1 class="title-1 registration-form__caption">Вход на сайт</h1>
	
	<?php require ROOT . "templates/_parts/_errors.tpl"?>

	<div class="notify mb-20 notification__error hidden"></div>
	<div class="notify2 mb-20 notification__error hidden"></div>
	
	<div class="registration-form__email login-page-form__row">
		<input name="email" class="input-text" type="email" placeholder="E-mail" value="info@mail.com" />
	</div>
	<div class="registration-form__password login-page-form__row">
		<input name="password" class="input-text" type="password" placeholder="Пароль" value="123456"/>
	</div>
	<div class="password-remember-wrapper">
		<div class="registration-form__remember">
			<label class="form-label">
				<input class="form-input-checkbox" type="checkbox" name="checkbox" checked="checked" />
				<span class="form__checkbox"></span>Запомнить меня</label>
			</div>
			<span>
				<a class="registration-form__password-recovery" href="<?=HOST?>lost-password">Забыл пароль</a>
			</span>
	</div>
	<div class="registration-form__button">
		<input type="hidden" value="login" name="login" />
		<a class="button button-enter button--login">Войти</a>
	</div>
</form>