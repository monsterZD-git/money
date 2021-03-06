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
                    <?php foreach ($get_select_currency as $item):?>
                      <option value="<?=$item['NumCode']?>" <?=($item['NumCode'] == 840 ? 'selected' : '')?>><?=$item['Name']?> (<?=$item['CharCode']?>)</option>
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
              <button type="button" class="btn btn-primary" id="charts_filtrs">Показать на графике</button>
              <button type="button" class="btn btn-primary" id="json"><i class="fas fa-download fa-sm text-white-50"></i> JSON</button>
          </div>
        </div>

        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Charts</h1>
        <p class="mb-4">Chart.js is a third party plugin that is used to generate the charts in this theme. The charts below have been customized - for further customization options, please visit the <a target="_blank" href="https://www.chartjs.org/docs/latest/">official Chart.js documentation</a>.</p>

        <!-- Area Chart -->
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Отображение динамики изменения курса в виде графика за определенный период времени</h6>
          </div>
          <div class="card-body">
            <div class="chart-area">
              <canvas id="myAreaChart"></canvas>
            </div>
            <hr>
            Styling for the area chart can be found in the <code>/js/demo/chart-area-demo.js</code> file.
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
  var filtrs = false;
  Charts(filtrs);
  $('#charts_filtrs').click(function(){
    filtrs = true;
    Charts(filtrs);  
  })

  $('#json').click(function(e){
    e.preventDefault(); 
    var url = '/welcome/json/?NumCode='+$('#exampleSelect1').val()+'&date1='+$('#date1').val()+'&date2='+$('#date2').val(); 
    window.open(url, '_blank');
  })

})
function Charts(filtrs){

$.ajax({
  url: "../welcome/charts_filtrs",
  cache: false,
  type: "POST",
  data: {
    'NumCode': $('#exampleSelect1').val(),
    'date1': $('#date1').val(),
    'date2': $('#date2').val(),
    'filtrs': filtrs
  },
  success: function(res){
    chars_clear();
    res = JSON.parse(res);

    val = [];
    date = [];
      if (res.length > 0) {
        for (var i=0; i<res.length; i++) {
          val.push(res[i]['Value']);
          date.push(res[i]['Date']);
        }
        symbol = res[0]['CharCode'];
        chars(val, date, symbol, filtrs);
      } else {
        console.log('Нет данных');
      }
  }
});
}
// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

function chars_clear(){
  // Area Chart Example
  var ctx = document.getElementById("myAreaChart");
  var myLineChart = new Chart(ctx, {});
  // Will clear the canvas that myLineChart is drawn on
  myLineChart.clear();
  $('#myAreaChart').remove();
  $('.chart-area').append('<canvas id="myAreaChart"></canvas>');
}

function chars(val,date,symbol){
// Area Chart Example
var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: date,
    datasets: [{
      label: "Курс",
      lineTension: 0.3,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(78, 115, 223, 1)",
      pointRadius: 3,
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 3,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 10,
      pointBorderWidth: 2,
      data: val,
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
        ticks: {
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            return value + ' ' + symbol;
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        }
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      intersect: false,
      mode: 'index',
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          return datasetLabel + ': ' + tooltipItem.yLabel+' '+ symbol;
        }
      }
    }
  }
});  
}
</script>