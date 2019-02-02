<form id="registration-form" class="registration-form" method="POST" action="<?=HOST?>registration" novalidate>
	<h1 class="title-1 registration-form__caption">Регистрация</h1>
	
	<?php require ROOT . "templates/_parts/_errors.tpl"?>

	<div class="notify mb-20 notification__error hidden"></div>
	<div class="notify2 mb-20 notification__error hidden"></div>

	<div class="registration-form__email registration-page-form__row">
		<input id="registration-email" name="email" class="input-text" type="email" placeholder="E-mail" value="info@mail.com" />
	</div>
	<div class="registration-form__password registration-page-form__row">
		<input id="registration-password" name="password" class="input-text" type="password" placeholder="Пароль" value="123456" />
	</div>
	<div class="registration-form__button">
		<input type="hidden" value="register" name="register" />
		<a class="button button-enter button--registration">Регистрация</a>
	</div>
</form>