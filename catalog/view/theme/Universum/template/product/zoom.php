<?php if ($thumb) { ?>
      <div class="image"><a href="<?php echo $popup; ?>" class="cloud-zoom" id="zoom1" rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a></div>
      <?php } ?>
      <?php if ($images) { ?>
      <div class="image-additional">
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<?php echo $thumb; ?>' "> <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" width="74" height="74" /> </a>
      
        <?php foreach ($images as $image) { ?>
        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class='cloud-zoom-gallery' rel="useZoom: 'zoom1', smallImage: '<?php echo $image['smallimage']; ?>' "> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /> </a>
        <?php } ?>
      </div>
      <?php } ?>
