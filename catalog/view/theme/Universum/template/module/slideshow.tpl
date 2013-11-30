
<div class="slideshow">
  <div id="slideshow<?php echo $module; ?>" class="nivoSlider">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    <?php } ?>
  </div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#slideshow<?php echo $module; ?>').nivoSlider({
        effect: 'random', // Specify sets like: 'fold,fade,sliceDown'
        animSpeed: 500, // Slide transition speed
        pauseTime: 4000, // How long each slide will show
        directionNav: true, // Next & Prev navigation
        controlNav: false, // 1,2,3... navigation
        pauseOnHover: true, // Stop animation while hovering
    });
});
--></script>