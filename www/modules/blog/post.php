<?php 

//Получаем из БД посты в порядке, при котором последние посты отображаются вверху
$sql = '
		SELECT 
			posts.id, posts.title, posts.post_img, posts.date_time, posts.update_time, posts.author_id, posts.cat, posts.text,
			users.name, users.secondname,
		    categories.cat_title
		FROM `posts` 
		INNER JOIN categories ON posts.cat = categories.id
		INNER JOIN users ON posts.author_id = users.id
		WHERE posts.id = ' . $_GET['id'] . ' LIMIT 1';

$post = R::getAll( $sql );
$post = $post[0];
// echo "<pre>";
// echo print_r($post[0]);
// echo "</pre>";
// die();

$title = $post['title'];

//Контент для центральной части
ob_start();//запускаем буферизацию
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/blog-post.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
 ?>