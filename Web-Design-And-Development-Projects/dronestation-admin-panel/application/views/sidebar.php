<aside class="main-sidebar elevation-1 sidebar-dark-warning">
   <?php $data = sitedata();  ?>
   <a href="<?= base_url(); ?>/dashboard" class="brand-link">
   <img src="<?= base_url().'assets/uploads/'.$data['s_logo'] ?>" class="brand-image img-circle elevation-1 frlogo">
   <span class="brand-text font-weight-light">Drone Station</span>
   </a>
   <div class="sidebar">
      <nav class="mt-2">
         <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

            <li class="nav-item has-treeview <?php echo ((activate_menu('vehicle'))=='active') ? 'menu-open':'' ?>
               <?php echo ((activate_menu('addvehicle'))=='active') ? 'menu-open':'' ?> <?php echo ((activate_menu('viewvehicle'))=='active') ? 'menu-open':'' ?><?php echo ((activate_menu('editvehicle'))=='active') ? 'menu-open':'' ?><?php echo ((activate_menu('vehiclegroup'))=='active') ? 'menu-open':'' ?>">
               <a href="#" class="nav-link <?php echo activate_menu('vehicle');?> <?php echo activate_menu('addvehicle');?><?php echo activate_menu('viewvehicle');?><?php echo activate_menu('editvehicle');?><?php echo activate_menu('vehiclegroup');?>">
                  <i class="nav-icon fas fa-truck"></i>
                  <p>
                     Banasree Branch Orders
                     <i class="right fas fa-angle-left"></i>
                  </p>
               </a>
               <ul class="nav nav-treeview">
                  <?php if(userpermission('lr_vech_list')) { ?>
                  <li class="nav-item">
                     <a href="<?= base_url(); ?>vehicle" class="nav-link <?php echo activate_menu('vehicle');?><?php echo activate_menu('editvehicle');?><?php echo activate_menu('viewvehicle');?>">
                        <i class="nav-icon fas faa-list"></i>
                        <p>Order Lists</p>
                     </a>
                  </li>
                 <?php } if(userpermission('lr_vech_add')) { ?>

                  <?php } if(userpermission('lr_vech_group')) { ?>

                <?php } ?>
               </ul>
            </li>
            <?php if(userpermission('lr_drivers_list') || userpermission('lr_drivers_add')) { ?>

            <?php } ?>
            <?php if(userpermission('lr_trips_list') || userpermission('lr_trips_list_view')) { ?>

           <?php } ?>
           <?php if(userpermission('lr_cust_list') || userpermission('lr_cust_add')) { ?>

            <?php }  if(userpermission('lr_fuel_list') || userpermission('lr_fuel_add')) { ?>
            <li class="nav-item has-treeview <?php echo ((activate_menu('fuel'))=='active') ? 'menu-open':'' ?>
               <?php echo ((activate_menu('addfuel'))=='active') ? 'menu-open':'' ?> <?php echo ((activate_menu('editfuel'))=='active') ? 'menu-open':'' ?>">
               <a href="#" class="nav-link <?php echo activate_menu('fuel');?> <?php echo activate_menu('addfuel');?><?php echo activate_menu('editfuel');?>">
                  <i class="nav-icon fa fa-battery-three-quarters"></i>
                  <p>
                     OTP Generator
                     <i class="right fas fa-angle-left"></i>
                  </p>
               </a>
               <ul class="nav nav-treeview">
                <?php  if(userpermission('lr_fuel_list')) { ?>
                  <li class="nav-item">
                     <a href="<?= base_url(); ?>fuel" class="nav-link <?php echo activate_menu('fuel');?> <?php echo activate_menu('editfuel');?>">
                        <i class="nav-icon fas faa-list"></i>
                        <p>OTP Management</p>
                     </a>
                  </li>
                   <?php } if(userpermission('lr_fuel_add')) { ?>
                  <li class="nav-item">
                     <a href="<?= base_url(); ?>fuel/addfuel" class="nav-link <?php echo activate_menu('addfuel');?>">
                        <i class="nav-icon fas faa-plus"></i>
                        <p>Send OTP</p>
                     </a>
                  </li>
                   <?php } ?>
               </ul>
            </li>
			
			<?php if(userpermission('lr_drivers_list') || userpermission('lr_drivers_add')) { ?>
            <li class="nav-item has-treeview <?php echo ((activate_menu('drivers'))=='active') ? 'menu-open':'' ?>
               <?php echo ((activate_menu('adddrivers'))=='active') ? 'menu-open':'' ?><?php echo ((activate_menu('editdriver'))=='active') ? 'menu-open':'' ?>">
               <a href="#" class="nav-link <?php echo activate_menu('drivers');?> <?php echo activate_menu('adddrivers');?><?php echo activate_menu('editdriver');?>">
                  <i class="nav-icon fas fa-user-secret"></i>
                  <p>
                     Delivery Confirmation Lists
                     <i class="right fas fa-angle-left"></i>
                  </p>
               </a>
               <ul class="nav nav-treeview">
                  <?php if(userpermission('lr_drivers_list')) { ?>
                  <li class="nav-item">
                     <a href="<?= base_url(); ?>drivers" class="nav-link <?php echo activate_menu('drivers');?><?php echo activate_menu('editdriver');?>">
                        <i class="nav-icon fas faa-list"></i>
                        <p>Confirmation Lists</p>
                     </a>
                  </li>
                  <?php } if(userpermission('lr_drivers_add')) { ?>
                  <li class="nav-item">
                     <a href="<?= base_url(); ?>drivers/adddrivers" class="nav-link <?php echo activate_menu('adddrivers');?>">
                        <i class="nav-icon fas faa-plus"></i>
                        <p>Add Confirmation</p>
                     </a>
                  </li>
                  <?php } ?>
               </ul>
            </li>
            <?php } ?>
			
			
			
            <?php }  if(userpermission('lr_reminder_list') || userpermission('lr_reminder_add')) { ?>

            <?php }  if(userpermission('lr_ie_list') || userpermission('lr_ie_add')) { ?>

            <?php }  if(userpermission('lr_tracking') || userpermission('lr_liveloc')) { ?>

             <?php }  if(userpermission('lr_geofence_add') || userpermission('lr_geofence_list') || userpermission('lr_geofence_events')) { ?>

          <?php }  if(userpermission('lr_reports')) { ?>

            <?php } if(userpermission('lr_settings')) { ?>


            <?php } ?>

         </ul>
      </nav>
   </div>
</aside>
<div class="content-wrapper pb-2 mb-0">
