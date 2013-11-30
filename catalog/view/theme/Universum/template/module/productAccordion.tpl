<?php
$this->language->load('Universum_custom/Universum');
$text_wish = $this->language->get('text_wish');
$text_compare = $this->language->get('text_compare');
$text_sale = $this->language->get('text_sale');
$text_save = $this->language->get('text_save');
$text_new_prod = $this->language->get('text_new_prod');
$text_left = $this->language->get('text_left');
$text_purchased = $this->language->get('text_purchased');
$text_limited = $this->language->get('text_limited');
?>


  
  <div class="slideshow-accordeon">
  <h2 class="heading_title"><?php echo $heading_title; ?></h2>
    <div id="productAccordeon">
      <ol>
        <?php foreach ($products as $product) { ?>
        <li>
          <h2><span><?php echo $product['name']; ?></span></h2>
          <div class="accordeonHolder">
            <?php
        $startDate1 = strtotime(mb_substr($product['startdate'], 0, 10));
        $endDate2 = strtotime(date("Y-m-d"));
        $days = ceil(($endDate2 / 86400)) - ceil(($startDate1 / 86400));
        ?>
            <?php if($this->config->get('UniversumControl_status') == '1'){ ?>
            <?php $numeroNew = $this->config->get('UniversumControl_new_label'); ?>
            <?php } else { ?>
            <?php $numeroNew = 10; ?>
            <?php } ?>
            <?php if ($days < $numeroNew) { ?>
            <span class="new_prod"><?php echo $text_new_prod; ?></span>
            <?php } ?>
            <?php if ($product['thumb']) { ?>
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
            <?php } ?>
            <div class="accordeonInfo">
              <h3><?php echo $product['name']; ?></h3>

                <?php if ($product['price']) { ?>
                <div class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                  <div class="sale_save_holder">
                    <?php 
        $val1 = preg_replace("/[^0-9.]/", "", $product['special']);
		$val2 = preg_replace("/[^0-9.]/", "", $product['price']);
        ?>
                    <?php
        $res = ($val1 / $val2) * 100;
        $res = 100 - $res;
        $res = round($res, 1);
        ?>
                    <span class="sale"><?php echo $text_sale; ?></span> <span class="save"><?php echo $text_save; ?>: <?php echo $res; ?>%</span> </div>
                  <?php if(($this->config->get('UniversumControl_status') == '1') && ($this->config->get('UniversumControl_countdown') == '1')){ ?>
                  <?php if ($product['date_end']) { ?>
                  <div class="count_holder_small">
                    <div class="count_info"><?php echo $text_limited; ?></div>
                    <div id="UniversumCountAccordeon<?php echo $product['product_id']; ?>"></div>
                    <script type="text/javascript">
					$(function () {	
						$('#UniversumCountAccordeon<?php echo $product['product_id']; ?>').countdown({until: new Date(<?php echo $product['date_end']; ?>), compact: false});
					});
		</script>
                    <div class="clear"></div>
                    <?php } ?>
                  </div>
                  <?php } ?>
                  <?php } ?>
                  <div class="clear"></div>
                </div>
                <?php } ?>
                <?php if ($product['rating']) { ?>
                <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                <?php } ?>
                <p class="accordeon_description"><?php echo $product['description']; ?></p>
                <div class="cart"> <a class="add_to_cart_small" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a> <a class="add_to_wishlist_small" onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $text_wish; ?>"><?php echo $text_wish; ?></a> <a class="add_to_compare_small" onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $text_compare; ?>"><?php echo $text_compare; ?></a> </div>

            </div>
          </div>
        </li>
        <?php } ?>
      </ol>
      <noscript>
      <p>Please enable JavaScript to get the full experience.</p>
      </noscript>
    </div>
  </div>

<script type="text/javascript"><!--
$(document).ready(function() {
                $('#productAccordeon').liteAccordion({ theme : 'light', autoPlay : true, pauseOnHover : true, cycleSpeed : 5000, responsive : true, minContainerWidth : 300, maxContainerWidth : 1100, slideSpeed : 1000, rounded : true, enumerateSlides : false, firstSlide : 1, linkable : true, easing: 'easeInOutQuart' });
            });  
--></script>