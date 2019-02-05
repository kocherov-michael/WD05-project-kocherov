<?php 

if (!isAdmin()) {
	header("Location: " . HOST);
	die();
}

$title = "Контакты";

$contacts = R::load('contacts', 1);

if (isset($_POST['contactsUpdate'])) {
	if (trim($_POST['email']) == '' ) {
		$errors[] = ['title' =>'Введите Email' ];
	} else if (!preg_match("/^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i", $_POST['email'])) {
		$errors[] = ['title' => 'Email указан некорректно'];
	}
	if (trim($_POST['phone']) == '' ) {
		$errors[] = ['title' =>'Введите телефон' ];
	}
	if (trim($_POST['address']) == '' ) {
		$errors[] = ['title' =>'Введите адрес' ];
	}
	if ( empty($errors) ) {
		$contacts->email = htmlentities(trim($_POST['email']));
		$contacts->phone = htmlentities(trim($_POST['phone']));
		$contacts->address = htmlentities(trim($_POST['address']));

		$contacts->name = htmlentities(trim($_POST['name']));
		$contacts->secondname = htmlentities(trim($_POST['secondname']));
		$contacts->skype = htmlentities(trim($_POST['skype']));
		$contacts->vk = htmlentities(trim($_POST['vk']));
		$contacts->fb = htmlentities(trim($_POST['fb']));
		$contacts->github = htmlentities(trim($_POST['github']));
		$contacts->twitter = htmlentities(trim($_POST['twitter']));

		R::store($contacts);
		header('Location: ' . HOST . "contacts");
		exit();
	}
}

//Контент для центральной части
ob_start();//запускаем буферизацию
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/edit.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
 ?>