<?php require_once('config.php'); ?>
<!DOCTYPE html>
<html lang="en">
<?php require_once('inc/header.php') ?>
<?php if($_settings->chk_flashdata('success')): ?>
<script>
  $(function(){
    alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
  })
</script>
<?php endif;?>
<style>
	
	
  body{
    background-image:url('<?= validate_image($_settings->info('cover')) ?>') !important;
    background-size:cover;
    background-repeat:no-repeat;
    background-position:center center;
  }
</style>
<body>

	
<?php require_once('inc/topBarNav.php') ?>
<?php $page = isset($_GET['p']) ? $_GET['p'] : 'home';  ?>


 <!-- Slideshow -->
<header class="py-5">
    <div class="slideshow-container">
        <!-- Slideshow content here -->
        <div id="slideshow" class="carousel slide" >
            <ol class="carousel-indicators">
                <li data-bs-target="#slideshow" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#slideshow" data-bs-slide-to="1"></li>
                <li data-bs-target="#slideshow" data-bs-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
					 <div class="slide-image">
                    <img src="uploads/banner1.jpg" class="d-block w-100" alt="Slide 1">
					</div>
                </div>
                <div class="carousel-item">
					<div class="slide-image">
                    <img src="uploads/banner2.jpg" class="d-block w-100" alt="Slide 2">
					</div>
                </div>
                <div class="carousel-item">
					<div class="slide-image">
                    <img src="uploads/banner3.png" class="d-block w-100" alt="Slide 3">
					</div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#slideshow" role="button" data-bs-slide="prev" onclick="$('#slideshow').carousel('prev')">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </a>
            <a class="carousel-control-next" href="#slideshow" role="button" data-bs-slide="next" onclick="$('#slideshow').carousel('next')">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </a>
        </div>
    </div>
</header>
	
<?php 
    if(!file_exists($page.".php") && !is_dir($page)){
        include '404.html';
    }else{
    if(is_dir($page))
        include $page.'/index.php';
    else
        include $page.'.php';

    }
	
	
?>
	
<?php require_once('inc/footer.php') ?>

  <div class="modal fade" id="uni_modal" role='dialog'>
    <div class="modal-dialog   rounded-0 modal-md modal-dialog-centered" role="document">
      <div class="modal-content  rounded-0">
        <div class="modal-header">
        <h5 class="modal-title"></h5>
      </div>
      <div class="modal-body">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id='submit' onclick="$('#uni_modal form').submit()">Save</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
      </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="uni_modal_right" role='dialog'>
    <div class="modal-dialog  rounded-0 modal-full-height  modal-md" role="document">
      <div class="modal-content rounded-0">
        <div class="modal-header">
        <h5 class="modal-title"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span class="fa fa-arrow-right"></span>
        </button>
      </div>
      <div class="modal-body">
      </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="viewer_modal" role='dialog'>
    <div class="modal-dialog modal-md" role="document">
      <div class="modal-content">
              <button type="button" class="btn-close" data-dismiss="modal"><span class="fa fa-times"></span></button>
              <img src="" alt="">
      </div>
    </div>
  </div>
  <div class="modal fade" id="confirm_modal" role='dialog'>
    <div class="modal-dialog modal-md modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title">Confirmation</h5>
      </div>
      <div class="modal-body">
        <div id="delete_content"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id='confirm' onclick="">Continue</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
      </div>
    </div>
  </div>

</body>
  <script>
     $(document).ready(function() {
    console.log('hide succes')
  $('a[href="mailto:oretom23@gmail.com"]').hide();
});
  </script>
</html>