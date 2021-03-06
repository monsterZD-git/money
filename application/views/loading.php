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
            <h6 class="m-0 font-weight-bold text-primary">Загрузка и хранение курсов валют с сайта ЦБ Рф в ручном режиме</h6>
          </div>
          <div class="card-body">
            <form action="#" method="post" id="file_form" enctype="multipart/form-data">
              <div class="row">
                <div class="form-group col-md-12">
                  <div class="form-group col-md-12">
                    <label for="exampleFormControlFile1">Укажите файл для загрузки</label>
                    <input type="file" class="form-control-file" id="exampleFormControlFile1" name="exampleFormControlFile1" lang="ru" accept=".xml">
                  </div>
                  <small class="form-text text-muted">Выберите нужный файл в формате xml, данные представляются <a href="https://www.cbr.ru/development/SXML/" target="_blank">Банком России</a>.</small>
                </div>
              </div>
              <button type="submit" id="submit" class="btn btn-primary" id="charts_filtrs">Загрузить</button>
            </form>
          </div>
        </div>

        <div class="card mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Progress Small Utility</h6>
          </div>
          <div class="card-body">
            <div class="mb-1 small">Процесс загрузки и записи в БД</div>
            <div class="progress mb-4">
              <div id="progressbar" class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            Use the <code>.progress-sm</code> class along with <code>.progress</code>
          </div>
        </div>

        <div id="status_upload2" class="card mb-4 py-3" style="display: none;">
          <div class="card-body"></div>
        </div>

      </div>

    </div>

  </div>
  <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<script type="text/javascript">
$(function(){
  var progressBar = $('#progressbar');
  $('#file_form').on('submit', function(e){
    $('#status_upload2').hide().removeClass('border-left-danger').removeClass('border-left-success');
    $('#status_upload2').find('.card-body').text('');
    e.preventDefault();
    var $that = $(this),
    formData = new FormData($that.get(0));
    $.ajax({
      url: "../welcome/loading_file",
      type: 'POST',
      contentType: false,
      processData: false,
      data: formData,
      dataType: 'json',
      xhr: function(){
        var xhr = $.ajaxSettings.xhr(); // получаем объект XMLHttpRequest
        xhr.upload.addEventListener('progress', function(evt){ // добавляем обработчик события progress (onprogress)
          if (evt.lengthComputable) { // если известно количество байт
            // высчитываем процент загруженного
            var percentComplete = Math.ceil(evt.loaded / evt.total * 100);
            // устанавливаем значение в атрибут value тега progress
            // и это же значение альтернативным текстом для браузеров, не поддерживающих &lt;progress&gt;
            progressBar.css('width', percentComplete+'%');
          }
        }, false);
        return xhr;
      },
      success: function(json){
        if(json){
          if( json['error'] == 1 ){
            $('#status_upload2').show().addClass('border-left-danger');
            $('#status_upload2').find('.card-body').text('Ошибка загрузки файла');
          } else {
            $('#status_upload2').show().addClass('border-left-success');
            $('#status_upload2').find('.card-body').text('Успешная загрузка файла');

            $.ajax({
              url: "../welcome/parser_file",
              cache: false,
              type: "POST",
              data: {
                'files': json['files'],
              },
              success: function(){
                $('#status_upload2').removeClass('border-left-danger').removeClass('border-left-success');
                $('#status_upload2').show().addClass('border-left-success');
                $('#status_upload2').find('.card-body').text('Запрос на загрузку в БД выполнен');
              },
              error: function(){
                $('#status_upload2').removeClass('border-left-danger').removeClass('border-left-success');
                $('#status_upload2').show().addClass('border-left-danger');
                $('#status_upload2').find('.card-body').text('Ошибка запроса на загрузку в БД');
              }
            });
            
          }
        }
      }
    });
  });
});
</script>