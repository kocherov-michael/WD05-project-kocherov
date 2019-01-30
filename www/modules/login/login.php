<?php 

$title = "Вход на сайт";

if (isset($_POST['login'])) {
	if (trim($_POST['email']) == '' ) {
		$errors[] = ['title' => 'Введите Email'];}
	if (trim($_POST['password']) == '' ) {
		$errors[] = ['title' => 'Введите пароль'];
	} else if (!preg_match("/^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i", $_POST['email'])) {
		$errors[] = ['title' => 'Email указан некорректно'];
	}

	if (empty($errors)) {
		$user = R::findOne('users', 'email = ?', array($_POST['email']));

		if ($user) {
			if (password_verify($_POST['password'], $user->password)) {
				$_SESSION['logged_user'] = $user;
				$_SESSION['login'] = '1';
				$_SESSION['role'] = $user->role;
				header('Location: ' . HOST . "/");
				exit();
			} else {
				$errors[] = ['title' => 'Пароль введён неверно'];
			}
		} else {
			$errors[] = ['title' => 'Email не зарегистрирован'];
		}
	}
}

//Готовим контент центральной части
ob_start();//запускаем буферизацию
include ROOT . "templates/login/form-login.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>