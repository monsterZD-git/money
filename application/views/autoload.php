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
     
        <div class="card shadow mb-4" data-example-id="">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Загрузка и хранение курсов валют с сайта ЦБ Рф в автоматическом режиме</h6>
          </div>
          <div class="card-body">

              <div class="row">
                <div class="form-group col-md-12">
                  <label for="inputUrl">Веб-сервис для получения ежедневных данных (курсы валют, учетные цены драг. металлов и другие)</label>
                </div>
                <div class="form-group col-md-6">
                  <label for="date1">Date 1</label>
                  <input class="form-control" type="date" value="<?=date("Y-m-d");?>" id="date1">
                  <small class="form-text text-muted">Дата начала, тип System.DateTime.</small>
                </div>
                <div class="form-group col-md-6">
                  <label for="date2">Date 2</label>
                  <input class="form-control" type="date" value="<?=date("Y-m-d");?>" id="date2">
                  <small class="form-text text-muted">Дата окончания, тип System.DateTime.</small>
                </div>
                
              </div>
              <button type="button" class="btn btn-primary" id="loading_auto">Загрузить</button>

          </div>
        </div>

        <div class="card mb-4 py-3 border-left-danger">
          <div class="card-body">
            Ошибка загрузки данных
          </div>
        </div>

        