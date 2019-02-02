<?php 
if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}
$title = "Редактировать пост";

// echo "<pre>";
// echo print_r($_POST);
// echo "</pre><br>";
// echo "<pre>";
// echo print_r($_SESSION);
// echo "</pre>";

//выводим пост из БД и сортируем по алфавиту категории
$post = R::load('posts', $_GET['id']);
$cats = R::find('categories', 'ORDER BY cat_title ASC');

if (isset($_POST['postUpdate'])) {
	if (trim($_POST['postTitle']) == '' ) {
		$errors[] = ['title' =>'Введите название поста' ];
	} else {
		$postPostTitle = $_POST['postTitle'];
	}

	if (trim($_POST['postText']) == '' ) {
		$errors[] = ['title' =>'Введите текст поста' ];
	} else {
		$postPostText = $_POST['postText'];
	}

	if ( empty($errors) ) {
		$post->title = htmlentities($_POST['postTitle']);
		$post->cat = htmlentities($_POST['postCat']);
		$post->text = ($_POST['postText']);
		$post->authorId = $_SESSION['logged_user']['id'];
		$post->updateTime = R::isoDateTime();

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
			if (!preg_match("/\.(gif|jpg|png|jpeg)$/i", $fileName)) {
				$errors[] = ['title' => 'Неверный формат файла', 'desc' => '<pФайл изображения должен быть в формате gif, jpg, png или jpeg.</p>'];
			}
			if ($fileErrorMsg == 1) {
				$errors[] = ['title' =>'При загрузке изображения произошла ошибка. Повторите попытку.' ];
			}

			//Перемещаем загруженный файл в нужную директроию
			$db_file_name = rand(100000000000, 999999999999) . "." . $fileExt;
			$postImgFolderLocation = ROOT . 'usercontent/blog/';
			$uploadfile = $postImgFolderLocation . $db_file_name;
			//перемещаем файл(откуда, куда) переименовывая при этом
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			if ($moveResult != true) {
				$errors[] = ['title' =>'Ошибка сохранения файла.' ];
			}

			//Если изображение уже установлено, то удаляем старый файл
			$postImg = $post->post_img;
			if ( $postImg != "" ) {
				$picurl = $postImgFolderLocation . $postImg; //путь + имя 
				//Удаляем изображение
				if (file_exists($picurl)) { unlink($picurl);}
				$picurl320 = $postImgFolderLocation . '320-' . $postImg;
			    if ( file_exists($picurl320) ) { unlink($picurl320); }
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
		header('Location: ' . HOST . "blog?result=postUpdated");
		exit();

	}
}


//Контент для центральной части
ob_start();//запускаем буферизацию
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-edit.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
 ?>