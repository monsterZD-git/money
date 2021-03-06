<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

<!-- Main Content -->
<div id="content">

  <!-- Topbar -->
  <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
    <p class="h3 mb-2 text-gray-800">Информационная система «Курсы валют»</p>
  </nav>
  <!-- End of Topbar -->

  <!-- Begin Page Content -->
  <div class="container-fluid">

    <!-- Content Row -->
    <div class="row">

      <div class="col-xl-12 col-lg-12">
        <h1 class="h1 mb-4 text-gray-800">Документация</h1>
        <ul class="content-list-scroll">
          <li><a href="#list-1">Требования к системе и установка серверной платформы</a></li>
          <li><a href="#list-2">Настройка framework</a></li>
          <li><a href="#list-3">Загрузка файлов системы</a></li>
          <li><a href="#list-4">Импорт БД</a></li>
        </ul>

      <h2 class="h2 mb-4 text-gray-800" id="list-1">Требования к системе</h2>
      <p>Система была развернута на <b><a href="https://ospanel.io/" target="_blank">Open Server Panel</a></b> — это портативная серверная платформа и программная среда, созданная специально для веб-разработчиков с учётом их рекомендаций и пожеланий.</p>
      <p>Поддерживаемые версии Windows (32-бит и 64-бит): Windows 7 SP1 и все более новые версии;</p>
      <p>Минимальные аппаратные требования: 500 МБ свободной RAM и 3 ГБ свободного места на HDD;</p>
      <p>Требуется наличие Microsoft Visual C++ 2005-2008-2010-2012-2013-2017 Redistributable Package;</p>

      <h3 class="h3 mb-4 text-gray-800">Мой компьютер</h3>
      <p><img src="/templates/startbootstrap-sb-admin-2-gh-pages/img/local_pc.png" class="img-fluid" alt=""></p>
      <h3 class="h3 mb-4 text-gray-800">Модули Open Server</h3>
      <p><img src="/templates/startbootstrap-sb-admin-2-gh-pages/img/modules.png" class="img-fluid" alt=""></p>

      <h2 class="h2 mb-4 text-gray-800" id="list-2">Настройка framework</h2>
      <p><a href="https://codeigniter.com/" target="_blank">CodeIgniter</a> - это мощный PHP-фреймворк, созданный для разработчиков, которым необходим простой и элегантный инструментарий для создания полнофункциональных веб-приложений.</p>
      <p>Используемая версия <a href="https://github.com/bcit-ci/CodeIgniter/archive/3.1.11.zip" targe="_blank">Version 3.1.11</a></p>
      <p><a href="https://codeigniter.com/user_guide/index.html#installation" target="_blank">CodeIgniter Documentation</a> (ниже опишу как запустить его)</p>
      <h2 class="h2 mb-4 text-gray-800" id="list-3">Загрузка файлов и запуск CodeIgniter</h2>
      <p>Скачиваем файлы с <a href="https://github.com/monsterZD-git/money" target="_blank">репозитория</a><br>
        <small>https://github.com/monsterZD-git/money.git</small></p>
      <p>Переходим в папку application\config</p>
      <ul>
        <li>Открываем файл config.php, находим строку $config['base_url'] = 'http://as/'; - устанавливаем свое значение (домен)</li>
        <li>Открываем файл database.php, находим следующие строки:
          <ul>
            <li>'hostname' => 'localhost',</li>
            <li>'username' => 'root',</li>
            <li>'password' => '',</li>
            <li>'database' => 'my_db',</li>
          </ul>
          <p>прописываем свои значения</p>
        </li>
      </ul>
      <h2 class="h2 mb-4 text-gray-800" id="list-4">Импорт БД</h2>
      <p>В файлах проекта лежит дамп базы (в корне файл my_db.sql)</p>
      <h3 class="h3 mb-4 text-gray-800">Создание таблицы хранения курса валют вручную</h3>
      <p><pre>
        CREATE TABLE `currency` (
        `id` int(11) NOT NULL,
        `NumCode` int(11) NOT NULL,
        `CharCode` varchar(255) NOT NULL,
        `Nominal` int(11) NOT NULL,
        `Name` varchar(255) NOT NULL,
        `Value` decimal(10,4) NOT NULL,
        `Date` date DEFAULT NULL,
        `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
      </pre></p>
      <h3 class="h3 mb-4 text-gray-800">Создание таблицы хранения кода валют вручную</h3>
      <p><pre>
        CREATE TABLE `currency_code` (
        `id` int(11) NOT NULL,
        `Name` varchar(255) NOT NULL,
        `EngName` varchar(255) NOT NULL,
        `Nominal` int(11) NOT NULL,
        `ParentCode` varchar(255) NOT NULL
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
      </pre></p>
      <h3 class="h3 mb-4 text-gray-800">Данные таблицы</h3>
      <p>
        <pre>
        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Австралийский доллар','Australian Dollar','1','R01010');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Австрийский шиллинг','Austrian Shilling','1000','R01015');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Азербайджанский манат','Azerbaijan Manat','1','R01020');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Фунт стерлингов Соединенного королевства','British Pound Sterling','1','R01035');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Ангольская новая кванза','Angolan new Kwanza','100000','R01040');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Армянский драм','Armenia Dram','1000','R01060');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Белорусский рубль','Belarussian Ruble','1','R01090');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Бельгийский франк','Belgium Franc','1000','R01095');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Болгарский лев','Bulgarian lev','1','R01100');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Бразильский реал','Brazil Real','1','R01115');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Венгерский форинт','Hungarian Forint','100','R01135');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Гонконгский доллар','Hong Kong Dollar','10','R01200');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Греческая драхма','Greek Drachma','10000','R01205');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Датская крона','Danish Krone','10','R01215');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Доллар США','US Dollar','1','R01235');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Евро','Euro','1','R01239');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Индийская рупия','Indian Rupee','100','R01270');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Ирландский фунт','Irish Pound','100','R01305');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Исландская крона','Iceland Krona','10000','R01310');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Испанская песета','Spanish Peseta','10000','R01315');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Итальянская лира','Italian Lira','100000','R01325');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Казахстанский тенге','Kazakhstan Tenge','100','R01335');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Канадский доллар','Canadian Dollar','1','R01350');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Киргизский сом','Kyrgyzstan Som','100','R01370');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Китайский юань','China Yuan','10','R01375');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Кувейтский динар','Kuwaiti Dinar','10','R01390');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Латвийский лат','Latvian Lat','1','R01405');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Ливанский фунт','Lebanese Pound','100000','R01420');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Литовский лит','Lithuanian Lita','1','R01435');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Литовский талон','Lithuanian talon','1','R01435');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Молдавский лей','Moldova Lei','10','R01500');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Немецкая марка','Deutsche Mark','1','R01510');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Немецкая марка','Deutsche Mark','100','R01510');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Нидерландский гульден','Netherlands Gulden','100','R01523');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Норвежская крона','Norwegian Krone','10','R01535');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Польский злотый','Polish Zloty','1','R01565');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Португальский эскудо','Portuguese Escudo','10000','R01570');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Румынский лей','Romanian Leu','10000','R01585');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Румынский лей','Romanian Leu','10','R01585');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('СДР (специальные права заимствования)','SDR','1','R01589');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Сингапурский доллар','Singapore Dollar','1','R01625');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Суринамский доллар','Surinam Dollar','1','R01665');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Таджикский сомони','Tajikistan Ruble','10','R01670');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Таджикский рубл','Tajikistan Ruble','10','R01670');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Турецкая лира','Turkish Lira','1','R01700');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Туркменский манат','Turkmenistan Manat','10000','R01710');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Новый туркменский манат','New Turkmenistan Manat','1','R01710');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Узбекский сум','Uzbekistan Sum','1000','R01717');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Украинская гривна','Ukrainian Hryvnia','10','R01720');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Украинский карбованец','Ukrainian Hryvnia','1','R01720');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Финляндская марка','Finnish Marka','100','R01740');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Французский франк','French Franc','1000','R01750');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Чешская крона','Czech Koruna','10','R01760');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Шведская крона','Swedish Krona','10','R01770');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Швейцарский франк','Swiss Franc','1','R01775');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('ЭКЮ','ECU','1','R01790');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Эстонская крона','Estonian Kroon','10','R01795');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Югославский новый динар','Yugoslavian Dinar','1','R01804');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Южноафриканский рэнд','S.African Rand','10','R01810');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Вон Республики Корея','South Korean Won','1000','R01815');

        INSERT INTO `currency_code`(`Name`, `EngName`, `Nominal`, `ParentCode`) VALUES ('Японская иена','Japanese Yen','100','R01820');
        </pre>
      </p>
    </div>

  </div>
  <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->