<?php
if($this->uri->segment(3)) {
	$data = $this->uri->segment(3);
} else {
	$data = 0;
}
?>

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

<script id="group" data-name="<?= $data  ?>" src="<?php echo base_url(); ?>assets/livetrack.js"></script>
  <script src="<?php echo base_url(); ?>assets/fontawesome-markers.min.js"></script>

<div class="col-lg-12 col-md-12" id="map_canvas" style="width: 100%; height: 650px"></div>
</div>
</div>