 <?php 
 $title = "Контакты";

 //Контент для центральной части
 ob_start();//запускаем буферизацию
 include ROOT . "templates/_parts/_header.tpl";
 include ROOT . "templates/contacts/contacts.tpl";
 $content = ob_get_contents();//возвращаем содержимое буфера
 ob_end_clean();//заканчиваем буферизацию

 //Выводим шаблоны
 include ROOT . "templates/_parts/_head.tpl";
 include ROOT . "templates/template.tpl";
 include ROOT . "templates/_parts/_footer.tpl";
 include ROOT . "templates/_parts/_foot.tpl";
  ?>