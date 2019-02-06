 <?php 
 $title = "Контакты";

$contacts = R::load('contacts', 1);

if (isset($_POST['newMessage'])) {
	if (trim($_POST['email']) == '' ) {
		$errors[] = ['title' =>'Введите Email' ];
	} else if (!preg_match("/^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i", trim($_POST['email']))) {
		$errors[] = ['title' => 'Email указан некорректно'];
	}
	if (trim($_POST['message']) == '' ) {
		$errors[] = ['title' =>'Введите текст сообщения' ];
	}
	if (isset($_FILES['file']['name']) && $_FILES['file']['tmp_name'] != '' ) {
		$fileName = $_FILES['file']['name'];
		$fileTmpLoc = $_FILES['file']['tmp_name'];
		$fileType = $_FILES['file']['type'];
		$fileSize = $_FILES['file']['size'];
		$fileErrorMsg = $_FILES['file']['error'];

		if ($fileSize > 4194304) {
			$errors[] = ['title' =>'Файл изображения не болжен быть более 4 Mb.' ];
		}
		if (!preg_match("/\.(pdf|jpg|png|doc)$/i", $fileName)) {
			$errors[] = ['title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате jpg, png, pdf или doc.</p>'];
		}
		if ($fileErrorMsg == 1) {
			$errors[] = ['title' =>'При загрузке изображения произошла ошибка. Повторите попытку.' ];
		}
	}
	if ( empty($errors) ) {
		$message = R::dispense('messages');
		$message->email = htmlentities(trim($_POST['email']));
		$message->name = htmlentities(trim($_POST['name']));
		$message->message = htmlentities(trim($_POST['message']));
		$message->dateTime = R::isoDateTime();

		if (isset($_FILES['file']['name']) && $_FILES['file']['tmp_name'] != '' ) {
			$fileName = $_FILES['file']['name'];
			$fileTmpLoc = $_FILES['file']['tmp_name'];
			$fileType = $_FILES['file']['type'];
			$fileSize = $_FILES['file']['size'];
			$fileErrorMsg = $_FILES['file']['error'];

			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			$db_file_name = rand(10000000, 99999999) . "." . $fileExt;

			if ($fileSize > 4194304) {
				$errors[] = ['title' =>'Файл изображения не болжен быть более 4 Mb.' ];
			}
			if (!preg_match("/\.(pdf|jpg|png|doc)$/i", $fileName)) {
				$errors[] = ['title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате jpg, png, pdf или doc.</p>'];
			}
			if ($fileErrorMsg == 1) {
				$errors[] = ['title' =>'При загрузке изображения произошла ошибка. Повторите попытку.' ];
			}

			$postImgFolderLocation = ROOT . 'usercontent/upload_files/';
			//Перемещаем файл в нужную директорию
			$uploadfile = $postImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			if ($moveResult != true) {
				$errors[] = ['title' =>'Ошибка сохранения файла.' ];
			}

			$message->message_file_name_original = $fileName;
			$message->message_file = $db_file_name;
		}

		R::store($message);

		$success[] = ['title' => 'Сообщение было успешно отправлено!'];
		$_POST['name'] = '';
		$_POST['email'] = '';
		$_POST['message'] = '';
	}
}
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