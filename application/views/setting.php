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
      <h3 class="h3 mb-4 text-gray-800">Создание таблиц вручную</h3>
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
    </div>

  </div>
  <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->