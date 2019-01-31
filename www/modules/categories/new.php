<?php 
$title = "Создать новую категорию";

if (isset($_POST['catNew'])) {
	if (trim($_POST['catTitle']) == '' ) {
		$errors[] = ['catTitle' => 'Введите название категорий'];
	}
	if (empty($errors)) {
		$cat = R::dispense('categories');
		$cat->cat_title = htmlentities($_POST['catTitle']);
		R::store($cat);
		header('Location: ' . HOST . "blog/categories?result=catCreated");
		exit();
	}
}
//Контент для центральной части
ob_start();//запускаем буферизацию
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/categories/new.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
 ?>