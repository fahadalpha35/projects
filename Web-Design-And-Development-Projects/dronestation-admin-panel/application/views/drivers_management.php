<div class="content-header">
   <div class="container-fluid">
      <div class="row mb-2">
         <div class="col-sm-6">
            <h1 class="m-0 text-dark">Banasree Branch Medicine Delivery Confirmation Lists
            </h1>
         </div>
         <!-- /.col -->
         <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
               <li class="breadcrumb-item"><a href="<?= base_url(); ?>/dashboard">Dashboard</a></li>
               <li class="breadcrumb-item active">Confirmation Lists</li>
            </ol>
         </div>
         <!-- /.col -->
      </div>
      <!-- /.row -->
   </div>
   <!-- /.container-fluid -->
</div>
<!-- Main content -->
<section class="content">
   <div class="container-fluid">
      <div class="card">
         <div class="card-body p-0">
            <div class="table-responsive">
               <table id="driverslisttbl" class="table card-table table-vcenter text-nowrap">
                  <thead>
                     <tr>
                        <th class="w-1">S.No</th>
                        <th>Customer Name</th>
                        <th>Mobile Number</th>
                        <th>Order No</th>
                        <th>Delivered Date</th>
                        <th>Delivery Status</th>
                        <?php if(userpermission('lr_drivers_list_edit')) { ?>
                        <th>Action</th>
                        <?php } ?>
                     </tr>
                  </thead>
                  <tbody>
                       <?php if(!empty($driverslist)){  $count=1;
                        foreach($driverslist as $driverslists){
                        ?>
                     <tr>
                        <td> <?php echo output($count); $count++; ?></td>
                        <td> <?php echo output($driverslists['d_name']); ?></td>
                        <td> <?php echo output($driverslists['d_mobile']); ?></td>
                        <td><?php echo output($driverslists['d_licenseno']); ?></td>
                        <td><?php echo output($driverslists['d_license_expdate']); ?></td>
                        <td>  <span class="badge <?php echo ($driverslists['d_is_active']=='1') ? 'badge-success' : 'badge-danger'; ?> "><?php echo ($driverslists['d_is_active']=='1') ? 'Delivered' : 'Cancelled'; ?></span>  </td>
                        <?php if(userpermission('lr_drivers_list_edit')) { ?>
                        <td>
                           <a class="icon" href="<?php echo base_url(); ?>drivers/editdriver/<?php echo output($driverslists['d_id']); ?>">
                           <i class="fa fa-edit"></i>
                           </a>
                        </td>
                        <?php } }  } ?>
                     </tr>
                  </tbody>
               </table>
              
            </div>
         </div>
         <!-- /.card-body -->
      </div>
   </div>
</section>
<!-- /.content -->