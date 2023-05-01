<div class="content-header">
   <div class="container-fluid">
      <div class="row mb-2">
         <div class="col-sm-6">
            <h1 class="m-0 text-dark">Banasree Drone Station
            </h1>
         </div>
         <!-- /.col -->
         <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
               <li class="breadcrumb-item"><a href="<?= base_url(); ?>/dashboard">Home</a></li>
               <li class="breadcrumb-item active">Dashboard</li>
            </ol>
         </div>
         <!-- /.col -->
      </div>
      <!-- /.row -->
   </div>
   <!-- /.container-fluid -->
</div>

<div class="col-sm-12">
			
	<div id='left'>
      <center><p>
          <iframe src="" width="98%" height="0" style=" " allowfullscreen="" loading="lazy"></iframe>
      </p></center>
    </div>		
			

    <div id='left'>
      <center><p>
          <iframe src="https://maps.google.com/maps?q=Banasree&t=&z=13&ie=UTF8&iwloc=&output=embed" width="98%" height="490" style="border:0; " allowfullscreen="" loading="lazy"></iframe>
      </p></center>
    </div>

			
			
			
	</div>	



<!-- /.content -->
</div>
<script src="<?php echo base_url(); ?>assets/plugins/chart.js/Chart.min.js"></script>

<!-- /.content-wrapper -->
<?php if(userpermission('lr_ie_list')) { ?>
  <script>
  var ticksStyle = {
    fontColor: '#495057',
    fontStyle: 'bold'
  }
  var mode      = 'index';
    var intersect = true;
  var $visitorsChart = $('#ie-chart')
  var visitorsChart  = new Chart($visitorsChart, {
    data   : {
      labels  : <?= "['" . implode ( "', '", array_keys($iechart)) . "']" ?>,
      datasets: [{
        type                : 'line',
        data                : <?= "['" . implode ( "', '", array_column($iechart, 'income')). "']" ?>,
        backgroundColor     : 'transparent',
        borderColor         : '#28a745',
        pointBorderColor    : '#28a745',
        pointBackgroundColor: '#28a745',
        fill                : false
        // pointHoverBackgroundColor: '#007bff',
        // pointHoverBorderColor    : '#007bff'
      },
        {
          type                : 'line',
          data                : <?= "['" . implode ( "', '", array_column($iechart, 'expense')) . "']" ?>,
          backgroundColor     : 'tansparent',
          borderColor         : '#dc3545',
          pointBorderColor    : '#dc3545',
          pointBackgroundColor: '#dc3545',
          fill                : false
          // pointHoverBackgroundColor: '#ced4da',
          // pointHoverBorderColor    : '#ced4da'
        }]
    },
    options: {
      maintainAspectRatio: false,
      tooltips           : {
        mode     : mode,
        intersect: intersect
      },
      hover              : {
        mode     : mode,
        intersect: intersect
      },
      legend             : {
        display: false
      },
      scales             : {
        yAxes: [{
          // display: false,
          gridLines: {
            display      : true,
            lineWidth    : '4px',
            color        : 'rgba(0, 0, 0, .2)',
            zeroLineColor: 'transparent'
          },
          ticks    : $.extend({
            beginAtZero : true,
            suggestedMax: 200
          }, ticksStyle)
        }],
        xAxes: [{
          display  : true,
          gridLines: {
            display: false
          },
          ticks    : ticksStyle
        }]
      }
    }
  })

</script> <?php } ?>