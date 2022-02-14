<?php include('db_connect.php') ?>
<?php
$twhere ="";
if($_SESSION['login_type'] != 1)
  $twhere = "  ";
?>
<!-- Info boxes -->
<?php if($_SESSION['login_type'] == 2): ?>
        <div class="row">
          <div class="col-12 col-sm-6 col-md-4">
           <a href="./index.php?page=divisions">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM duty_list WHERE divisub='HRM'")->num_rows; ?></h3>
                <p>HRM Divisions</p>
              </div>
              <div class="icon">
                <i class="fa fa-tasks" style="color:#FFAB45;"></i>
              </div>
            </div></a>
          </div>

           <div class="col-12 col-sm-6 col-md-4">
           <a href="./index.php?page=designation">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM duty_list WHERE divisub='Finance'")->num_rows; ?></h3>
                <p>Finance Divisions</p>
              </div> 
              <div class="icon">
                <i class="fa fa-tasks" style="color:#FFAB45;"></i>
              </div>
            </div></a>
          </div>

           <div class="col-12 col-sm-6 col-md-4">
            <a href="./index.php?page=user_list">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM duty_list WHERE divisub='ITS Division'")->num_rows; ?></h3>
                <p>ITS Divisions</p>
              </div>
              <div class="icon">
                <i class="fa fa-tasks" style="color:#FFAB45;"></i>
              </div>
            </div></a>
          </div>

          
          <div class="col-12 col-sm-6 col-md-4">
          <a href="./index.php?page=employee_list">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM duty_list WHERE divisub='Internal Audit'")->num_rows; ?></h3>
                <p>Internal Audit
</p>
              </div>
              <div class="icon">
                <i class="fa fa-tasks" style="color:#FFAB45;"></i>
              </div>
            </div></a>
          </div>

          <div class="col-12 col-sm-6 col-md-4">
           <a href="./index.php?page=evaluator_list">
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM duty_list WHERE divisub='Land Development and Management'")->num_rows; ?></h3>
                <p>Land Development and Management</p>
              </div>
              <div class="icon">
                <i class="fa fa-tasks" style="color:#FFAB45;"></i>
              </div>
            </div></a>
          </div>

          
          <div class="col-12 col-sm-6 col-md-4" >
           <a href="./index.php?page=task_list"> 
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM duty_list WHERE divisub='DDG Consultancy'")->num_rows; ?></h3>
                <p>DDG Consultancy</p>
              </div>
                  <div class="icon">
                <i class="fa fa-tasks" style="color:#FFAB45;"></i>
              </div>
            </div>
          </div></a>

          <div class="col-12 col-sm-6 col-md-4" >
           <a href="./index.php?page=view_dutylist"> 
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM duty_list WHERE divisub='ADG Office'")->num_rows; ?></h3>
                <p>ADG Office</p>
              </div>
                  <div class="icon">
                <i class="fa fa-tasks" style="color:#FFAB45;"></i>
              </div>
            </div>
          </div></a>

          <div class="col-12 col-sm-6 col-md-4" >
           <a href="./index.php?page=Report"> 
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM duty_list WHERE divisub='Board of Mgt,'")->num_rows; ?></h3>
                <p>Board of Mgt</p>
              </div>
                  <div class="icon">
                <i class="fa fa-tasks" style="color:#FFAB45;"></i>
              </div>
            </div>
          </div></a>

          <div class="col-12 col-sm-6 col-md-4" >
           <a href="./index.php?page=individual_report"> 
            <div class="small-box bg-light shadow-sm border">
              <div class="inner">
                <h3><?php echo $conn->query("SELECT * FROM duty_list WHERE divisub='Chairman Office'")->num_rows; ?></h3>
                <p>Chairman Office</p>
              </div>
                  <div class="icon">
                <i class="fa fa-tasks" style="color:#FFAB45;"></i>
              </div>
            </div>
          </div></a>
      </div>


      

      


      
<?php else: ?>
   <div class="col-12">
          <div class="card">
            <div class="card-body">
              Welcome <?php echo $_SESSION['login_name'] ?>!
            </div>
          </div>
      </div>
          
<?php endif; ?>
