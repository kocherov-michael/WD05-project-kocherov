<?php 
if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}
$title = "Удалить сообщение";
$message = R::load('messages', $_GET['id']);

if (isset($_POST['mesageDelete'])) {

	//Если изображение было установлено, то удаляем его
	$postImgFolderLocation = ROOT . 'usercontent/upload_files/';
	$postImg = $message->message_file;
	if ( $postImg != "" ) {
		$picurl = $postImgFolderLocation . $postImg; //путь + имя 
		//Удаляем изображение
		if (file_exists($picurl)) { unlink($picurl);}
	}

	R::trash($message);
	header('Location: ' . HOST . "messages?result=messageDeleted");
	exit();
}

//Контент для центральной части
ob_start();//запускаем буферизацию
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/message-delete.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
 ?>