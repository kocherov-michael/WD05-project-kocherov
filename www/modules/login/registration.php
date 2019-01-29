<?php 

$title = "Регистрация";
//Если форма отправлена,то делаем регистрацию
if(isset($_POST['register'])){

	if (trim($_POST['email']) == '' ) {
		$errors[] = ['title' => 'Введите Email'];
	}
	if (trim($_POST['password']) == '' ) {
		$errors[] = ['title' => 'Введите пароль'];
	}
	if (!preg_match("/^(?:[a-z0-9]+(?:[-_.]?[a-z0-9]+)?@[a-z0-9_.-]+(?:\.?[a-z0-9]+)?\.[a-z]{2,5})$/i", $_POST['email'])) {
		$errors[] = ['title' => 'Email указан некорректно'];
	}
	//Проверка что пользователь существует
	if (R::count( 'users', 'email = ?', array($_POST['email'])) > 0 ) {
		$errors[] = [
					'title' => 'Пользователь с таким Email уже зарегистрирован', 
					'desc' => '<p>Используйте другой Email адрес или воспользуйтесь восстановлением пароля.</p>'
					];
	}
	

	if (empty($errors)) {
		// echo "<pre>";
		// print_r($_POST);
		// echo "<pre>";
		$user = R::dispense('users');
		$user->email = htmlentities($_POST['email']);
		$user->role = 'user';
		$user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
		R::store($user);
		$_SESSION['logged_user'] = $user;
		$_SESSION['login'] = '1';
		$_SESSION['role'] = $user->role;
		// header('Location: ' . HOST . "profile-edit");
		header('Location: ' . HOST . "profile-edit");
		exit();


	}

}


//Готовим контент центральной части
ob_start();//запускаем буферизацию
include ROOT . "templates/login/form-registration.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/login/login-page.tpl";
include ROOT . "templates/_parts/_foot.tpl";


 ?>