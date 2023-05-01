    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark"><?php echo (isset($fueldetails))?'OTP Generator':'OTP Generator' ?>
            </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?= base_url(); ?>/dashboard">OTP Management</a></li>
              <li class="breadcrumb-item active"><?php echo (isset($fueldetails))?'Edit OTP Generator':'Add OTP Generator' ?></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
       	      <form method="post" id="fuel" class="card" action="<?php echo base_url();?>fuel/<?php echo (isset($fueldetails))?'updatefuel':'insertfuel'; ?>">
          <div class="card-body">

                  <div class="row">
                   <input type="hidden" name="v_fuel_id" id="v_fuel_id" value="<?php echo (isset($fueldetails)) ? $fueldetails[0]['v_fuel_id']:'' ?>" >

                    <div class="col-sm-6 col-md-3">
                          <label class="form-label">Customers<span class="form-required">*</span></label>
                      <div class="form-group">
                         <select id="v_id"  class="form-control selectized"  name="v_id" required="true">
                        <option value="">Select Customer</option>
                        <?php  foreach ($vechiclelist as $key => $vechiclelists) { ?>
                        <option <?php if((isset($fueldetails)) && $fueldetails[0]['v_id'] == $vechiclelists['v_id']){ echo 'selected';} ?> value="<?php echo output($vechiclelists['v_id']) ?>"><?php echo output($vechiclelists['v_name']).' - '. output($vechiclelists['v_registration_no']); ?></option>
                        <?php  } ?>
                     </select>
                      </div>
                    </div>
                  
                   
                    
                   
                    <div class="col-sm-6 col-md-3">
                      <div class="form-group">
                         <label class="form-label">OTP Generator<span class="form-required">*</span></label>
                          <input type="text" class="form-control" id="v_fuelprice" value="<?php echo (isset($fueldetails)) ? $fueldetails[0]['v_fuelprice']:'' ?>" name="v_fuelprice" placeholder="Generate OTP">
                      </div>
                    </div>

                    <?php if(!isset($fueldetails)) {  ?>
                    	<br>

                	<?php } ?>

      
                </div>
                 <input type="hidden" id="v_created_date" name="v_created_date" value="<?php echo date('Y-m-d h:i:s'); ?>">
  
      <div class="modal-footer">

                  <button type="submit" class="btn btn-primary"> <?php echo (isset($fueldetails))?'Update Status':'Send OTP' ?></button>
      </div>
    </form>
             </div>
    </section>
    <!-- /.content -->



