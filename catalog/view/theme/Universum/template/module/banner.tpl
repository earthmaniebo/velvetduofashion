<?php if (count($banners) == 1) { ?>
  <?php $banNum = "full_width"; ?>
<?php } ?>
<?php if (count($banners) == 2) { ?>
  <?php $banNum = "one_half"; ?>
<?php } ?>
<?php if (count($banners) == 3) { ?>
  <?php $banNum = "one_third"; ?>
<?php } ?>
<?php if (count($banners) == 4) { ?>
  <?php $banNum = "one_fourth"; ?>
<?php } ?>
<?php if (count($banners) == 5) { ?>
  <?php $banNum = "one_fifth"; ?>
<?php } ?>

<?php if (($setting['position'] == 'content_header')){ ?>

<div id="banner_header" class="banner">
  <?php foreach ($banners as $banner) { ?>
  <?php if ($banner['link']) { ?>
  <div class="<?php echo $banNum; ?>"><span class="mask"></span><a href="<?php echo $banner['link']; ?>"><?php echo $banner['title']; ?></a><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
  <?php } else { ?>
  <div class="<?php echo $banNum; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
  <?php } ?>
  <?php } ?>
  <div class="clear"></div>
</div>
<?php } else if (($setting['position'] == 'content_top') || ($setting['position'] == 'content_bottom')) { ?>

<div id="banner<?php echo $module; ?>" class="banner">
  <?php foreach ($banners as $banner) { ?>
  <?php if ($banner['link']) { ?>
  <div class="<?php echo $banNum; ?>"><span class="mask"></span><a href="<?php echo $banner['link']; ?>"><?php echo $banner['title']; ?></a><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
  <?php } else { ?>
  <div class="<?php echo $banNum; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
  <?php } ?>
  <?php } ?>
  <div class="clear"></div>
</div>

<?php } else { ?>
<div id="banner<?php echo $module; ?>" class="banner">
  <?php foreach ($banners as $banner) { ?>
  <?php if ($banner['link']) { ?>
  <div><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></div>
  <?php } else { ?>
  <div><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
  <?php } ?>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#banner<?php echo $module; ?> div:first-child').css('display', 'block');
});

var banner = function() {
	$('#banner<?php echo $module; ?>').cycle({
		before: function(current, next) {
			$(next).parent().height($(next).outerHeight());
		}
	});
}

setTimeout(banner, 2000);
//--></script>
<?php } ?>