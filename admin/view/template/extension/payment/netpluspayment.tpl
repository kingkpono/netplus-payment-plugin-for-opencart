<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-netpluspayment" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i>Netplus Config Parameters</h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-netpluspayment" class="form-horizontal">
          

          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-total">Merchant ID</label>
            <div class="col-sm-10">
              <input type="text" name="netpluspayment_merchant_id" value="<?php echo $netpluspayment_merchant_id; ?>" placeholder="<?php echo $netpluspayment_merchant_id; ?>" id="input-total" class="form-control" />
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-total">Client ID</span></label>
            <div class="col-sm-10">
              <input type="text" name="netpluspayment_client_id" value="<?php echo $netpluspayment_client_id; ?>" placeholder="<?php echo $netpluspayment_client_id; ?>" id="input-total" class="form-control" />
            </div>
          </div>

          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-total">Client Secret</label>
            <div class="col-sm-10">
              <input type="text" name="netpluspayment_client_secret" value="<?php echo $netpluspayment_client_secret; ?>" placeholder="<?php echo $netpluspayment_client_secret; ?>" id="input-total" class="form-control" />
            </div>
          </div>


          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-total">Test Mode</label>
            <div class="col-sm-10">
              <select name="netpluspayment_test_mode" id="input-status" class="form-control">
                <?php if ($netpluspayment_test_mode) { ?>
                <option value="1" selected="selected">Yes</option>
                <option value="0">No</option>
                <?php } else { ?>
                <option value="1">Yes</option>
                <option value="0" selected="selected">No</option>
                <?php } ?>
              </select>
          </div>
      </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-total">Name</label>
            <div class="col-sm-10">
              <input type="text" name="netpluspayment_merchant_name" value="<?php echo $netpluspayment_merchant_name; ?>" placeholder="<?php echo $netpluspayment_merchant_name; ?>" id="input-total" class="form-control" />
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-total">Email</span></label>
            <div class="col-sm-10">
              <input type="text" name="netpluspayment_merchant_email" value="<?php echo $netpluspayment_merchant_email; ?>" placeholder="<?php echo $netpluspayment_merchant_email; ?>" id="input-total" class="form-control" />
            </div>
          </div><div class="form-group required">
            <label class="col-sm-2 control-label" for="input-total">Phone</label>
            <div class="col-sm-10">
              <input type="text" name="netpluspayment_merchant_phone" value="<?php echo $netpluspayment_merchant_phone; ?>" placeholder="<?php echo $netpluspayment_merchant_phone; ?>" id="input-total" class="form-control" />
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-total">Street</label>
            <div class="col-sm-10">
              <input type="text" name="netpluspayment_merchant_street" value="<?php echo $netpluspayment_merchant_street; ?>" placeholder="<?php echo $netpluspayment_merchant_street; ?>" id="input-total" class="form-control" />
            </div>
          </div>

           <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-total">City</label>
            <div class="col-sm-10">
              <input type="text" name="netpluspayment_merchant_city" value="<?php echo $netpluspayment_merchant_city; ?>" placeholder="<?php echo $netpluspayment_merchant_city; ?>" id="input-total" class="form-control" />
            </div>
          </div>
         
          
           <div class="form-group required">
                        <label class="col-sm-2 control-label" for="state">State</label>
                        <div class="col-sm-10">
                          <select name="netpluspayment_merchant_state" id="netpluspayment_merchant_state" class="form-control">
                           <option value=""> --- Please Select --- </option>
                          <?php  
                             foreach ($states as $state) {
                        ?>
                           <option 

                              <?php if($netpluspayment_merchant_state==$state['zone_id'])
                               echo "selected=selected";?>

                           value="<?php echo $state['zone_id'];?>"> <?php echo $state['name'];?></option>
                        <?php
                             }
                          ?>
                          </select>
                         
                        </div>
                      </div>



          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-order-status">Order Status</label>
            <div class="col-sm-10">
              <select name="netpluspayment_order_status_id" id="input-order-status" class="form-control">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $netpluspayment_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          
<div class="form-group">
            <label class="col-sm-2 control-label" for="input-order-status">Failed Payment Status</label>
            <div class="col-sm-10">
              
              <select name="netpluspayment_payment_failure_status_id" id="input-order-status" class="form-control">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $netpluspayment_payment_failure_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
       <div class="form-group">
            <label class="col-sm-2 control-label" for="input-order-status">Successful Payment Status</label>
            <div class="col-sm-10">
            
               <select name="netpluspayment_payment_success_status_id" id="input-order-status" class="form-control">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $netpluspayment_payment_success_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
           <div class="form-group">
            <label class="col-sm-2 control-label" for="input-order-status">Shipment Status</label>
            <div class="col-sm-10">
             
                <select name="netpluspayment_shipment_status_id" id="input-order-status" class="form-control">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $netpluspayment_shipment_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status">Active</label>
            <div class="col-sm-10">
              <select name="netpluspayment_status" id="input-status" class="form-control">
                <?php if ($netpluspayment_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-sort-order">Sort Order</label>
            <div class="col-sm-10">
              <input type="text" name="netpluspayment_sort_order" value="<?php echo $netpluspayment_sort_order; ?>" placeholder="<?php echo $netpluspayment_sort_order; ?>" id="input-sort-order" class="form-control" />
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?> 