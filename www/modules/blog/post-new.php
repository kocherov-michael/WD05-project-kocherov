<?php 
$title = "Блог - Добавить новый пост";

// echo "<pre>";
// echo print_r($_POST);
// echo "</pre><br>";
// echo "<pre>";
// echo print_r($_SESSION);
// echo "</pre>";

if (isset($_POST['postNew'])) {
	if (trim($_POST['postTitle']) == '' ) {
		$errors[] = ['title' =>'Введите название поста' ];
	}

	if (trim($_POST['postText']) == '' ) {
		$errors[] = ['title' =>'Введите текст поста' ];
	}

	if ( empty($errors) ) {
		//Создаём новую запись в таблице posts, а также саму таблицу, если её ещё нет
		$post = R::dispense('posts');
		$post->title = htmlentities($_POST['postTitle']);
		$post->text = ($_POST['postText']);
		$post->authorId = $_SESSION['logged_user']['id'];
		$post->dateTime = R::isoDateTime();

		if (isset($_FILES['postImg']['name']) && $_FILES['postImg']['tmp_name'] != '' ) {
			//Запишем параметры картинки в переменные
			$fileName = $_FILES['postImg']['name'];//имя файла(с расширением)
			$fileTmpLoc = $_FILES['postImg']['tmp_name'];//где файл временно размещён
			$fileType = $_FILES['postImg']['type'];
			$fileSize = $_FILES['postImg']['size'];
			$fileErrorMsg = $_FILES['postImg']['error'];
			//получаем массив из разбитого по точке имени файла
			$kaboom = explode(".", $fileName);
			//получаем последний элемент массива
			$fileExt = end($kaboom);

			//Проверяем свойства файла на различные свойства
			//записываем высоту и ширину в переменные
			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10) {
				$errors[] = ['title' =>'Изображение не имеет размеров. Загрузите изображение побольше.' ];
			}
			if ($fileSize > 4194304) {
				$errors[] = ['title' =>'Файл изображения не болжен быть более 4 Mb.' ];
			}
			// $ext = pathinfo($fileName, PATHINFO_EXTENSION);
			// if ( $ext != 'gif'|| $ext != 'jpg'|| $ext != 'png'|| $ext != 'jpeg')  {
			// if (!preg_match("/\.(gif|jpg|png|jpeg)$/i", $fileExt)) {
			if (!preg_match("/\.(gif|jpg|png|jpeg)$/i", $fileName)) {
				$errors[] = ['title' => 'Неверный формат файла', 'desc' => '<pФайл изображения должен быть в формате gif, jpg, png или jpeg.</p>'];
			}
			if ($fileErrorMsg == 1) {
				$errors[] = ['title' =>'При загрузке изображения произошла ошибка. Повторите попытку.' ];
			}

			//Проверяем установлен ли аватар у пользователя
			// $postImg = $user->avatar;
			// $avatarFolderLocation = ROOT . 'usercontent/avatar/';

			//Если аватар уже установлен, то удаляем старый файл
			// if ( $avatar != "") {
			// 	$picurl = $avatarFolderLocation . $avatar; //путь + имя 
				//Удаляем аватар
				// if (file_exists($picurl)) { unlink($picurl);}
				// $picurl48 = $avatarFolderLocation . '48-' . $avatar;
			 //    if ( file_exists($picurl48) ) { unlink($picurl48); }
			// }
			//Перемещаем загруженный файл в нужную директроию
			$db_file_name = rand(100000000000, 999999999999) . "." . $fileExt;
			$postImgFolderLocation = ROOT . 'usercontent/blog/';
			$uploadfile = $postImgFolderLocation . $db_file_name;
			//перемещаем файл(откуда, куда) переименовывая при этом
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			if ($moveResult != true) {
				$errors[] = ['title' =>'Ошибка сохранения файла.' ];
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");
			$target_file = $postImgFolderLocation . $db_file_name;
			// $resized_file = $postImgFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 620;
			//Создаём превью картинки с помощью imagick
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			//используя метод imagick записываем картинку в переменную
			$img->writeImage($target_file);
			//записываем в БД аватарку
			$post->postImg = $db_file_name;

			//делаем то же самое для превьюшки
			$target_file = $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . "320-" .  $db_file_name;
			$wmax = 320;
			$hmax = 140;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			$post->postImgSmall ="320-" . $db_file_name;
		
		}

		R::store($post);
		header('Location: ' . HOST . "blog");
		exit();

	}
}


//Контент для центральной части
ob_start();//запускаем буферизацию
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-new.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
 ?>