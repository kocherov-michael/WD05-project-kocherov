<?php 

//DB settings
define('DB_HOST', 'localhost');
define('DB_NAME', 'wd05-project-kocherov');
define('DB_USER', 'root');
define('DB_PASS', '');

//Устанавливаем путь до корневой директории скрипта
define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');

//Устанавливаем физический путь до корневой директории скрипта
define('ROOT', dirname(__FILE__).'/');

//Site settings for emails
define('SITE_NAME', 'Личный сайт Михаила Кочерова');
define('SITE_EMAIL', 'info@webdev05.com');
define('ADMIN_EMAIL', 'ko4erov@mail.ru');


 ?>