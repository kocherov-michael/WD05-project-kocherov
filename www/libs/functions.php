<?php

function isAdmin(){
	$result = false;
	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {
		if ($_SESSION['role'] == 'admin') {
				$result = true;
		}
	}
	return $result;
}

function isLoggedIn(){
	$result = false;
	if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {
		$result = true;
	}
	return $result;
}

function rus_date() {
	// Перевод
	$translate = array(
		"am" => "дп",
		"pm" => "пп",
		"AM" => "ДП",
		"PM" => "ПП",
		"Monday" => "Понедельник",
		"Mon" => "Пн",
		"Tuesday" => "Вторник",
		"Tue" => "Вт",
		"Wednesday" => "Среда",
		"Wed" => "Ср",
		"Thursday" => "Четверг",
		"Thu" => "Чт",
		"Friday" => "Пятница",
		"Fri" => "Пт",
		"Saturday" => "Суббота",
		"Sat" => "Сб",
		"Sunday" => "Воскресенье",
		"Sun" => "Вс",
		"January" => "Января",
		"Jan" => "Янв",
		"February" => "Февраля",
		"Feb" => "Фев",
		"March" => "Марта",
		"Mar" => "Мар",
		"April" => "Апреля",
		"Apr" => "Апр",
		"May" => "Мая",
		"May" => "Мая",
		"June" => "Июня",
		"Jun" => "Июн",
		"July" => "Июля",
		"Jul" => "Июл",
		"August" => "Августа",
		"Aug" => "Авг",
		"September" => "Сентября",
		"Sep" => "Сен",
		"October" => "Октября",
		"Oct" => "Окт",
		"November" => "Ноября",
		"Nov" => "Ноя",
		"December" => "Декабря",
		"Dec" => "Дек",
		"st" => "ое",
		"nd" => "ое",
		"rd" => "е",
		"th" => "ое"
	);
 	// если передали дату, то переводим ее
	if (func_num_args() > 1) {
		$timestamp = func_get_arg(1);
		return strtr(date(func_get_arg(0), $timestamp), $translate);
	} else {
	// иначе текущую дату
		return strtr(date(func_get_arg(0)), $translate);
	}
}

function commentNumber ($num) {

    //Оставляем две последние цифры от $num
	$number = substr($num, -2);

    //Если 2 последние цифры входят в диапазон от 11 до 14
    //Тогда подставляем окончание "ЕВ" 
	if($number > 10 and $number < 15)
	{
		$term = "ев";
	}
	else
	{ 

		$number = substr($number, -1);

		if($number == 0) {$term = "ев";}
		if($number == 1 ) {$term = "й";}
		if($number > 1 ) {$term = "я";}
		if($number > 4 ) {$term = "ев";}
	}

	echo  $num.' комментари'.$term;
}


// Adjusting text encoding
function adopt($text) {
	return '=?UTF-8?B?'.base64_encode($text).'?=';
}

//Обрезка заголовка
function mbCutString($string, $length, $postfix = '...', $encoding = 'UTF-8'){
	//если строка меньше максимально допустимой длины, то не форматируем её
	if (mb_strlen($string, $encoding) <= $length ) {
		return $string;
	}
	//возвращаем часть строки
	$temp = mb_substr($string, 0, $length, $encoding );
	//Получаем позицию последнего пробела
	$spacePosition = mb_strripos($temp, " ", 0, $encoding );
	//Обрезаем по последнему целому слову и добавляем троеточие
	$result = mb_substr($temp, 0, $spacePosition, $encoding ) . "...";
	return $result;
}
function pagination($results_per_page, $type) {
		//получаем количество записей, сохранённых в БД
        $number_of_results = R::count($type);
        //определяем количество страниц для отображения записей
        //округляем в бОльшую сторону
        $number_of_pages = ceil($number_of_results / $results_per_page);
        //определяем на какой странице пользователь
        if(!isset($_GET['page'])) {
            $page_number = 1;
        } else {
            $page_number = $_GET['page'];
        }
        //определяем sql LIMIT начальное число для отображения результатов на каждой странице
        $starting_limit_number = ($page_number - 1) * $results_per_page;
        //получаем выбранные результаты из БД и отображаем их на страниуце
        $sql_pages_limit = 'LIMIT ' . $starting_limit_number . ',' . $results_per_page;
        $result['number_of_pages'] = $number_of_pages;
        $result['page_number'] = $page_number;
        $result['sql_pages_limit'] = $sql_pages_limit;
        return $result;
}

?>