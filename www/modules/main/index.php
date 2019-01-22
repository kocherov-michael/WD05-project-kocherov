<?php 

$details = R::find('about');
// print_r($details);

$aboutName = $details[1]['name'];
$aboutDescription = $details[1]['description'];

$title = "Главная";
$content = "Содержимое главной";

ob_start();//запускаем буферизацию
include ROOT . "templates/main/main.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";



 ?>