<?php
if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}
$title = "Портфолио - Добавить новую работу";

//выводим из БД и сортируем по алфавиту
$cats = R::find('categories', 'ORDER BY cat_title ASC');

if (isset($_POST['workNew'])) {
	if (trim($_POST['workTitle']) == '' ) {
		$errors[] = ['title' =>'Введите название работы' ];
	}

	if (trim($_POST['workText']) == '' ) {
		$errors[] = ['title' =>'Введите описание работы' ];
	} 

	if (trim($_POST['workTechnologies']) == '' ) {
		$errors[] = ['title' =>'Введите описание технологий' ];
	} 

	if (isset($_FILES['postImg']['name']) && $_FILES['postImg']['tmp_name'] != '' ) {
		//Запишем параметры картинки в переменные
		$fileName = $_FILES['postImg']['name'];//имя файла(с расширением)
		$fileTmpLoc = $_FILES['postImg']['tmp_name'];//где файл временно размещён
		$fileType = $_FILES['postImg']['type'];
		$fileSize = $_FILES['postImg']['size'];
		$fileErrorMsg = $_FILES['postImg']['error'];

		if (@getimagesize($fileTmpLoc)) {
			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10) {
				$errors[] = ['title' =>'Изображение не имеет размеров. Загрузите изображение побольше.' ];
			}
		} else {
			$errors[] = ['title' =>'Проблемы с изображением.' ];
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
	}

	if ( empty($errors) ) {
		//Создаём новую запись в таблице posts, а также саму таблицу, если её ещё нет
		$work = R::dispense('works');
		$work->title = htmlentities($_POST['workTitle']);
		$work->cat = htmlentities($_POST['workCat']);
		$work->text = ($_POST['workText']);
		$work->result = ($_POST['workResult']);
		$work->technologies = ($_POST['workTechnologies']);
		$work->projectLink = ($_POST['projectLink']);
		$work->githubLink = ($_POST['githubLink']);
		$work->authorId = $_SESSION['logged_user']['id'];
		$work->dateTime = R::isoDateTime();

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
				$errors[] = ['title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате gif, jpg, png или jpeg.</p>'];
			}
			if ($fileErrorMsg == 1) {
				$errors[] = ['title' =>'При загрузке изображения произошла ошибка. Повторите попытку.' ];
			}

			//Перемещаем загруженный файл в нужную директроию
			$db_file_name = rand(100000000000, 999999999999) . "." . $fileExt;
			$postImgFolderLocation = ROOT . 'usercontent/portfolio/';
			$uploadfile = $postImgFolderLocation . $db_file_name;
			//перемещаем файл(откуда, куда) переименовывая при этом
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			if ($moveResult != true) {
				$errors[] = ['title' =>'Ошибка сохранения файла.' ];
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");
			$target_file = $postImgFolderLocation . $db_file_name;
			// $resized_file = $postImgFolderLocation . $db_file_name;
			$wmax = 950;
			$hmax = 546;
			//Создаём превью картинки с помощью imagick
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			//используя метод imagick записываем картинку в переменную
			$img->writeImage($target_file);
			//записываем в БД аватарку
			$work->postImg = $db_file_name;

			//делаем то же самое для превьюшки
			$target_file = $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . "320-" .  $db_file_name;
			$wmax = 320;
			$hmax = 140;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			$work->postImgSmall ="320-" . $db_file_name;
		
		}

		R::store($work);
		header('Location: ' . HOST . "portfolio?result=postCreated");
		exit();

	}
}


//Контент для центральной части
ob_start();//запускаем буферизацию
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/portfolio/portfolio-new.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";
 ?>