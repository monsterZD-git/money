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
            <h6 class="m-0 font-weight-bold text-primary">Фильтрация по валюте и дате курса</h6>
          </div>
          <div class="card-body">

              <div class="row">
                <div class="form-group col-md-12">
                  <label for="exampleSelect1">Currency</label>
                  <select class="form-control" id="exampleSelect1">
                    <option value="0" selected>Показать все</option>
                    <?php foreach ($get_select_currency as $item):?>
                      <option value="<?=$item['NumCode']?>"><?=$item['Name']?> (<?=$item['CharCode']?>)</option>
                    <?php endforeach?>
                  </select>
                  <small class="form-text text-muted">Выберите нужную вылюту.</small>
                </div>
                <div class="form-group col-md-6">
                  <label for="date1">Date 1</label>
                  <input class="form-control" type="date" value="2020-01-01" id="date1">
                  <small class="form-text text-muted">Дата начала отчетного периода.</small>
                </div>
                <div class="form-group col-md-6">
                  <label for="date2">Date 2</label>
                  <input class="form-control" type="date" value="<?=date("Y-m-d");?>" id="date2">
                  <small class="form-text text-muted">Дата окончания отчетного периода.</small>
                </div>
              </div>
              <button type="button" id="filtrs_tables" class="btn btn-primary">Поcтроить таблицу</button>
              <button type="button" id="json" class="btn btn-primary"><i class="fas fa-download fa-sm text-white-50"></i> JSON</button>
          </div>
        </div>

        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Tables</h1>
        <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Отображение курсов валют в форме таблицы с постраничным выводом и возможностью сортировки и фильтрации по валюте и дате курса</h6>
          </div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>id</th>
                    <th>NumCode</th>
                    <th>CharCode</th>
                    <th>Nominal</th>
                    <th>Name</th>
                    <th>Value</th>
                    <th>Date</th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($table_currency as $item):?>
                    <tr>
                      <td><?=$item['id']?></td>
                      <td><?=$item['NumCode']?></td>
                      <td><?=$item['CharCode']?></td>
                      <td><?=$item['Nominal']?></td>
                      <td><?=$item['Name']?></td>
                      <td><?=$item['Value']?></td>
                      <td><?=$item['Date']?></td>
                    </tr>
                  <?php endforeach?>
                </tbody>
              </table>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>
  <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<script type="text/javascript">
$(document).ready(function(){

  $('#json').click(function(e){
    e.preventDefault(); 
    var url = '/welcome/json/?NumCode='+$('#exampleSelect1').val()+'&date1='+$('#date1').val()+'&date2='+$('#date2').val(); 
    window.open(url, '_blank');
  })
  
})
</script>