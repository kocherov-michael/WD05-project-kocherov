<?php 
$title = "Редактировать профиль";

$currentUser = $_SESSION['logged_user'];

$user = R::load('users', $currentUser->id);

if (isset($_POST['profile-update'])) {
	if (trim($_POST['email']) == '' ) {
		$errors[] = ['title' =>'Введите Email' ];
	}
	if (trim($_POST['name']) == '' ) {
		$errors[] = ['title' =>'Введите Имя' ];
	}
	if (trim($_POST['secondname']) == '' ) {
		$errors[] = ['title' =>'Введите Фамилию' ];
	}
	if ( empty($errors) ) {
		$user->name = htmlentities($_POST['name']);
		$user->secondname = htmlentities($_POST['secondname']);
		$user->email = htmlentities($_POST['email']);
		$user->city = htmlentities($_POST['city']);
		$user->country = htmlentities($_POST['country']);

		if (isset($_FILES['avatar']['name']) && $_FILES['avatar']['tmp_name'] != '' ) {
			//Запишем параметры картинки в переменные
			$fileName = $_FILES['avatar']['name'];//имя файла(с расширением)
			$fileTmpLoc = $_FILES['avatar']['tmp_name'];//где файл временно размещён
			$fileType = $_FILES['avatar']['type'];
			$fileSize = $_FILES['avatar']['size'];
			$fileErrorMsg = $_FILES['avatar']['error'];
			//получаем массив из разбитого по точке имени файла
			$kaboom = explode(".", $fileName);
			//получаем последний элемент массива
			$fileExt = end($kaboom);

			//Проверяем свойства файла на различные состояния
			//записываем высоту и ширину в переменные
			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10) {
				$errors[] = ['title' =>'Изображение не имеет размеров. Загрузите изображение побольше.' ];
			}
			// $ext = pathinfo($fileName, PATHINFO_EXTENSION);
			// if ( $ext != 'gif'|| $ext != 'jpg'|| $ext != 'png'|| $ext != 'jpeg')  {
			// if (!preg_match("/\.(gif|jpg|png|jpeg)$/i", $fileExt)) {
			if (!preg_match("/\.(gif|jpg|png|jpeg)$/i", $fileName)) {
				$errors[] = ['title' => 'Неверный формат файла', 'desc' => '<pФайл изображения должен быть в формате gif, jpg, png или jpeg.</p>'];
			}
			if ($fileSize > 4194304) {
				$errors[] = ['title' =>'Файл изображения не болжен быть более 4 Mb.' ];
			}
			if ($fileErrorMsg == 1) {
				$errors[] = ['title' =>'При загрузке изображения произошла ошибка. Повторите попытку.' ];
			}

			//Проверяем установлен ли аватар у пользователя
			$avatar = $user->avatar;
			$avatarFolderLocation = ROOT . 'usercontent/avatar/';

			//Если аватар уже установлен, то удаляем старый файл
			if ( $avatar != "") {
				$picurl = $avatarFolderLocation . $avatar; //путь + имя 
				//Удаляем аватар
				if (file_exists($picurl)) { unlink($picurl);}
				$picurl48 = $avatarFolderLocation . '48-' . $avatar;
			    if ( file_exists($picurl48) ) { unlink($picurl48); }
			}
			//Перемещаем загруженный файл в нужную директроию
			$db_file_name = rand(10000000, 99999999) . "." . $fileExt;
			$uploadfile = $avatarFolderLocation . $db_file_name;
			//перемещаем файл(откуда, куда) переименовывая при этом
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			if ($moveResult != true) {
				$errors[] = ['title' =>'Ошибка сохранения файла.' ];
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");
			$target_file = $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . $db_file_name;
			$wmax = 222;
			$hmax = 222;
			//Создаём превью картинки с помощью imagick
			$img = createThumbnail($target_file, $wmax, $hmax);
			//используя метод imagick записываем картинку в переменную
			$img->writeImage($target_file);
			//записываем в БД аватарку
			$user->avatar = $db_file_name;

			//делаем то же самое для превьюшки
			$target_file = $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . "48-" .  $db_file_name;
			$wmax = 48;
			$hmax = 48;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$user->avatarSmall = "48-" . $db_file_name;
		
		}

		R::store($user);
		$_SESSION['logged_user'] = $user;
		// echo "<pre>";
		// print_r($_SESSION);
		// echo "<pre><br>";
		// echo "<pre>";
		// print_r($_FILES);
		// echo "<pre><br>";
		header('Location: ' . HOST . "profile");
		exit();
	}
}

//Контент для центральной части
ob_start();//запускаем буферизацию
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();//возвращаем содержимое буфера
ob_end_clean();//заканчиваем буферизацию

//Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";











// $title = "Редактировать профиль";

// $currentUser = $_SESSION['logged_user'];
// $user = R::load('users', $currentUser->id);

// if ( isset($_POST['profile-update']) ) {

	// if ( trim($_POST['email']) == '') {
		// $errors[] = ['title' => 'Введите Email' ];
	// }

	// if ( trim($_POST['name']) == '') {
		// $errors[] = ['title' => 'Введите Имя' ];
	// }

	// if ( trim($_POST['secondname']) == '') {
		// $errors[] = ['title' => 'Введите Фамилию' ];
	// }

	// if ( empty($errors)	) {
		// $user->name = htmlentities($_POST['name']);
		// $user->secondname = htmlentities($_POST['secondname']);
		// $user->email = htmlentities($_POST['email']);
		// $user->city = htmlentities($_POST['city']);
		// $user->country = htmlentities($_POST['country']);

		// if ( isset($_FILES['avatar']['name']) && $_FILES['avatar']['tmp_name'] != "" ) {
			
			// Write file image params in variables
			// $fileName = $_FILES["avatar"]["name"];
			// $fileTmpLoc = $_FILES["avatar"]["tmp_name"];
			// $fileType = $_FILES["avatar"]["type"];
			// $fileSize = $_FILES["avatar"]["size"];
			// $fileErrorMsg = $_FILES["avatar"]["error"];
			// $kaboom = explode(".", $fileName);
			// $fileExt = end($kaboom);

			// Check file propertties on different conditions
			// list($width, $height) = getimagesize($fileTmpLoc);
			// if ($width < 10 || $height < 10 ) {
				// $errors[] = ['title' => 'Изображение не имеет размеров. Загрузите изображение побольше.' ];
			// }

			// if ( $fileSize > 4194304 ) {
				// $errors[] = ['title' => 'Файл изображения не должен быть более 4 Mb' ];
			// }

			// if ( !preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName) ) {
				// $errors[]  = [ 'title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg, или png.</p>', ];
			// }

			// if ( $fileErrorMsg == 1 ) {
				// $errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку' ];
			// }

			// Поверям установлен ли аватар у пользователя
			// $avatar = $user->avatar;
			// $avatarFolderLocation = ROOT . 'usercontent/avatar/';

			// Если аватар уже установлен, то есть загружен ранее то удаляем файл аватара
			// if ( $avatar != "" ) {
				// $picurl = $avatarFolderLocation . $avatar;
				// Удаляем аватар
				// die($picurl);(не раскомменчивать) 
			    // if ( file_exists($picurl) ) { unlink($picurl); }
				// $picurl48 = $avatarFolderLocation . '48-' . $avatar;
			    // if ( file_exists($picurl48) ) { unlink($picurl48); }
			// }

			// Перемещаем загруженный файл в нужную директорию
			// $db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			// $uploadfile = $avatarFolderLocation . $db_file_name;
			// $moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);
			
			// if ($moveResult != true) {
				// $errors[] = ['title' => 'Ошибка сохранения файла' ];
			// }

			// include_once( ROOT . "/libs/image_resize_imagick.php");

			// $target_file =  $avatarFolderLocation . $db_file_name;
			// $resized_file = $avatarFolderLocation . $db_file_name;
			// $wmax = 222;
			// $hmax = 222;
			// $img = createThumbnail($target_file, $wmax, $hmax);
			// $img->writeImage($target_file);

			// $user->avatar = $db_file_name;

			// $target_file =  $avatarFolderLocation . $db_file_name;
			// $resized_file = $avatarFolderLocation . "48-" . $db_file_name;
			// $wmax = 48;
			// $hmax = 48;
			// $img = createThumbnail($target_file, $wmax, $hmax);
			// $img->writeImage($resized_file);

			// $user->avatarSmall = "48-" . $db_file_name;
			// }	
		// }

		// R::store($user);
		// $_SESSION['logged_user'] = $user;
		// header('Location: ' . HOST . "profile");
		// exit();
	// }

// }

// Готовим контент для центральной части
// ob_start();
// include ROOT . "templates/_parts/_header.tpl";
// include ROOT . "templates/profile/profile-edit.tpl";
// $content = ob_get_contents();
// ob_end_clean();

// Выводим шаблоны
// include ROOT . "templates/_parts/_head.tpl";
// include ROOT . "templates/template.tpl";
// include ROOT . "templates/_parts/_footer.tpl";
// include ROOT . "templates/_parts/_foot.tpl";

?>