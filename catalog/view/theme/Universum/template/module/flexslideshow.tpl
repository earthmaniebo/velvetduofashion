

  <div id="flexslideshow<?php echo $module; ?>" class="flexslider">
  <ul class="slides">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <li><a href="<?php echo $banner['link']; ?>">
    <div class="bigPic" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px; background:url(<?php echo $banner['image']; ?>) 50% 0 no-repeat;"></div>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="slide_img" />
    </a>
    </li>
    <?php } else { ?>
    <li>
    <div class="bigPic" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px; background:url(<?php echo $banner['image']; ?>) 50% 0 no-repeat;"></div>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="slide_img" />
    </li>
    <?php } ?>
    <?php } ?>
    </ul>
  </div>
<script type="text/javascript">
  $(window).load(function() {
    $('#flexslideshow<?php echo $module; ?>').flexslider({
          animation: "fade",
		  pauseOnHover: true,
		  touch: true,
		  animationSpeed: 1300,
		  slideshowSpeed: 6500,
		  smoothHeight: false,
		  controlNav: false,
          directionNav: true
    });
  });
</script>
<?php if (($setting['position'] == 'content_header')){ ?>
<script type="text/javascript"><!--
$(document).ready(function(){
    if (document.getElementById("banner_header")!= null) {
    $('#banner_header').addClass("lifted");
	$('#module_area .inner').addClass("lifted_inner");
	$('#module_area').addClass("colorless_borderless");
	$('#header').addClass("borderless");
	}
	});
//--></script>
<?php } ?>