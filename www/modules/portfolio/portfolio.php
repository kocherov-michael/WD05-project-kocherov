<?php 

//Получаем из БД посты в порядке, при котором последние посты отображаются вверху
$sqlWork = '
		SELECT works.id, works.title, works.post_img, works.date_time, works.update_time, works.author_id, works.cat, works.text, works.result, works.technologies, works.project_link, works.github_link,
			users.name, users.secondname,
		    categories.cat_title 
		FROM `works` 
		LEFT JOIN categories ON works.cat = categories.id 
		LEFT JOIN users ON works.author_id = users.id 
		WHERE works.id = ' . $_GET['id'] . ' LIMIT 1';


$work = R::getAll( $sqlWork );
$work = $work[0];
//Получаем значение только по 1 колонке (в данном случае по колонке id)
$worksId = R::getCol('SELECT id FROM works');

foreach ($worksId as $index => $id) {
	if ($id == $work['id']) {
		@$nextId = $worksId[$index + 1];
		@$prevId = $worksId[$index - 1];
		break;
	}
}

$title = $work['title'];


//Контент для центральной части
ob_start();//запускаем буферизацию
// include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/portfolio/portfolio-post.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
 ?>