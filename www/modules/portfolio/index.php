<?php 
$pagination = pagination(3, 'works');

$title = "Портфолио - все записи";

//Получаем из БД посты в порядке, при котором последние посты отображаются вверху
$works = R::find('works', 'ORDER BY id DESC ' . $pagination['sql_pages_limit'] );

//Контент для центральной части
ob_start();//запускаем буферизацию
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/portfolio/portfolio-all-works.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
 ?>