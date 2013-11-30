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
$text_shop_by_price = $this->language->get('text_shop_by_price');
?>
<?php echo $header; ?>
<div class="title-holder">
<div class="inner">
<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1 class="heading_title"><?php echo $heading_title; ?></h1>
</div>
</div>
<div class="inner">
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="shopbypricefilter-hide"><?php echo $content_top; ?>
  
  <?php if ($thumb || $description) { ?>
  <div class="category-info">
    <?php if ($thumb) { ?>
    <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
    <?php } ?>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
    <div class="clear"></div>
  </div>
  <?php } ?>
  
  <?php if ($categories) { ?>  
  <div class="category-list">
  <h3 class="heading_title"><?php echo $text_refine; ?></h3>
  
   <ul class="sub_cats">
   
   
          <?php foreach ($categories as $category) { ?>
          
          <li class="cat_hold"><a href="<?php echo $category['href']; ?>">
        
          <?php if ($category['pic']) { ?>
          <img src="<?php echo $category['pic']; ?>" title="<?php echo $category['name']; ?>" alt="<?php echo $category['name']; ?>" />
          <?php } else { ?>
          <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/cat_not_found.png" title="<?php echo $category['name']; ?>" alt="<?php echo $category['name']; ?>" />
          
          <?php } ?>
        <?php echo $category['name']; ?>
        </a>
      </li>
          
          <?php } ?>
        </ul>
   
  </div>
  <?php } ?>
  
  <div class="product-filter">
   
   <!-- // PRICE_FILTER_SLIDER start -->
	<div id="shopbypricefilter-slider-holder">
    <div class="filter-title">
    <p><?php echo $text_shop_by_price; ?></p>
	  <div id="shopbypricefilter-price-min" class="shopbypricefilter-price">
	    <?php echo $shopbypricefilter_format['symbol_left'] . number_format((isset($price_min) ? (int)$price_min : $shopbypricefilter_min), 0, $shopbypricefilter_format['decimal_point'], $shopbypricefilter_format['thousand_point']) . $shopbypricefilter_format['symbol_right']; ?> 
	  </div>
      <div class="shopbypricefilter-price-delimiter">-</div>
	  <div id="shopbypricefilter-price-max" class="shopbypricefilter-price">
	    <?php echo $shopbypricefilter_format['symbol_left'] . number_format((isset($price_max) ? (int)$price_max : $shopbypricefilter_max), 0, $shopbypricefilter_format['decimal_point'], $shopbypricefilter_format['thousand_point']) . $shopbypricefilter_format['symbol_right']; ?>
	  </div>
      </div>
      <div class="clear"></div>
	  <div id="shopbypricefilter-slider"></div>
      <div class="clear"></div>
	</div>
	<!-- // PRICE_FILTER_SLIDER end -->
   
    
    <div class="limit"><b><?php echo $text_limit; ?></b>
      <select name="limit" class="shopbypricefilter">
        <?php foreach ($shopbypricefilter_limits as $limits) { ?>
			

        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="sort"><b><?php echo $text_sort; ?></b>
      
      <select name="sort" class="shopbypricefilter">
        <?php foreach ($shopbypricefilter_sorts as $sorts) { ?>
			

        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    </div>

  <?php if ($products) { ?>
  <div class="shopbypricefilter-changeable" id="shopbypricefilter-content">
  
  <div class="product-list">
    <?php foreach ($products as $product) { ?>
    <div class="prod_hold">
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
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
        <span class="sale"><?php echo $text_sale; ?></span> <span class="save"><?php echo $text_save; ?>: <?php echo $res; ?>%</span>
        </div>
          <?php } ?>
        </div>
        <?php } ?>
        <div class="prod-info-fly">
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          
          
          <?php if(($this->config->get('UniversumControl_status') == '1') && ($this->config->get('UniversumControl_countdown') == '1')){ ?>
        <?php if ($product['date_end']) { ?>
        <span class="turning_clock"></span>
        <div class="count_holder_small">
          <div class="count_info"><?php echo $text_limited; ?></div>
          <div id="UniversumCountSmallCategory<?php echo $product['product_id']; ?>"></div>
          <script type="text/javascript">
					$('div.prod_hold').live('hover', function() {	
						$('#UniversumCountSmallCategory<?php echo $product['product_id']; ?>').countdown({until: new Date(<?php echo $product['date_end']; ?>), compact: false});
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
        <div class="cart">
        <a class="add_to_cart_small" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
        <a class="add_to_wishlist_small" onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $text_wish; ?>"><?php echo $text_wish; ?></a>
        <a class="add_to_compare_small" onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $text_compare; ?>"><?php echo $text_compare; ?></a>
        </div>
       </div> 
      </div>
    <?php } ?>
  </div>
  
  </div>
  <div class="shopbypricefilter-changeable" id="shopbypricefilter-pagination">
			
  <div class="pagination"><?php echo $pagination; ?></div>

  </div>
<?php } ?>  
  
  <?php if (!$categories && !$products) { ?>
  <div class="shopbypricefilter-changeable" id="shopbypricefilter-content">
			
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
	
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
  
  </div>
<script type="text/javascript"><!--
var shopbypricefilter_inprogress = false,
	shopbypricefilter_last_query = '',
	shopbypricefilter_pagination = false,
	shopbypricefilter_text_timer;

$().ready(function() {
	$('.shopbypricefilter:not(input:text, textarea)').change(shopbypricefilter);

	$('.shopbypricefilter:text, textarea.shopbypricefilter').keyup(function(event) {
		if(event.which == 13) {
			$(this).blur();
		} else {
			clearTimeout(shopbypricefilter_text_timer);

			shopbypricefilter_text_timer = setTimeout(function() {
				shopbypricefilter();
			}, 1000);
		}
	}).blur(shopbypricefilter);

	$('#shopbypricefilter-pagination a').live('click', function() {
		shopbypricefilter_pagination = $(this).attr('href') + '&';
		shopbypricefilter();
		return false;
	});

	$('#shopbypricefilter-slider').slider({
		min : <?php echo (int)$shopbypricefilter_min; ?>,
		max : <?php echo $shopbypricefilter_max; ?>,
		range : true,
		values : [<?php echo (isset($price_min) ? (int)$price_min : (int)$shopbypricefilter_min); ?>, <?php echo (isset($price_max) ? (int)$price_max : $shopbypricefilter_max); ?>],
		slide : shopbypricefilter_slider,
		change : shopbypricefilter_slider,
		stop : shopbypricefilter
	});

	var tmp = $('<span class="shopbypricefilter-price"></span>').text('<?php echo $shopbypricefilter_format['symbol_left']; ?>' + number_format(<?php echo $shopbypricefilter_max; ?>, 0, '<?php echo $shopbypricefilter_format['decimal_point']; ?>', '<?php echo $shopbypricefilter_format['thousand_point']; ?>') + '<?php echo $shopbypricefilter_format['symbol_right']; ?>').appendTo('body');

	

	$(tmp).remove();
});

function shopbypricefilter_slider(event, ui) {
	$('#shopbypricefilter-price-min').text('<?php echo $shopbypricefilter_format['symbol_left']; ?>' + number_format(ui.values[0], 0, '<?php echo $shopbypricefilter_format['decimal_point']; ?>', '<?php echo $shopbypricefilter_format['thousand_point']; ?>') + '<?php echo $shopbypricefilter_format['symbol_right']; ?>');
	$('#shopbypricefilter-price-max').text('<?php echo $shopbypricefilter_format['symbol_left']; ?>' + number_format(ui.values[1], 0, '<?php echo $shopbypricefilter_format['decimal_point']; ?>', '<?php echo $shopbypricefilter_format['thousand_point']; ?>') + '<?php echo $shopbypricefilter_format['symbol_right']; ?>');
}

function shopbypricefilter() {
	if(shopbypricefilter_inprogress) {
		return false;
	}

	var url = (shopbypricefilter_pagination ? shopbypricefilter_pagination : '<?php echo str_replace('&amp;', '&', $shopbypricefilter_url); ?>');
	shopbypricefilter_pagination = false;

	var fragments = [];

	$('.shopbypricefilter').each(function() {
		if($(this).is('select')) {
			if($(this).val() != '*') {
				fragments.push($(this).val());
			}
		} else if($(this).is('input:radio, input:checkbox')) {
			if($(this).is(':checked')) {
				fragments.push($(this).attr('name') + '=' + $(this).val());
			}
		} else if($(this).val() != '') {
			fragments.push($(this).attr('name') + '=' + $(this).val());
		}
	});

	fragments.push('price_min=' + $('#shopbypricefilter-slider').slider('values', 0) + '&price_max=' + $('#shopbypricefilter-slider').slider('values', 1));

	url += fragments.join('&');

	if(url == shopbypricefilter_last_query) {
		return false;
	}

	shopbypricefilter_last_query = url;
	shopbypricefilter_inprogress = true;
	$('#shopbypricefilter-slider').slider('disable');

	$('.shopbypricefilter-hide').each(function(index) {
		var overlay;

		if($('.shopbypricefilter-overlay:eq(' + index + ')').length) {
			overlay = $('.shopbypricefilter-overlay:eq(' + index + ')');
		} else {
			overlay = $('<div class="ui-widget-overlay shopbypricefilter-overlay">&nbsp;</div>').prependTo('body');
		}

		$(overlay).css({
			'z-index'    : 19999,
			'width'  : $('body').outerWidth(),
			'height' : $('body').outerHeight()
		}).show();
	});

	$('.shopbypricefilter-overlay').each(function() {
		var overlay = this;

		var img;

		if($('img', overlay).length) {
			img = $('img', overlay);
		} else {
			img = $('<img src="<?php echo $shopbypricefilter_loading; ?>" />').prependTo(overlay);
		}

		$(img).css({
			'max-height' : $(overlay).height() * 0.8,
			'max-width'  : $(overlay).width() * 0.8
		});

		$(img).css({
			'position' : 'fixed',
			'top'  : $(window).outerHeight() / 2,
			'left' : ($(window).outerWidth() - $(img).width()) / 2
		});
	});

	$.ajax({
		dataType : 'html',
		complete : function() {
			shopbypricefilter_inprogress = false;
			$('#shopbypricefilter-slider').slider('enable');
			$('.shopbypricefilter-overlay').fadeOut(300);
		},
		success : function(data) {
			$('.shopbypricefilter-changeable').each(function() {
				$(this).html($('#' + $(this).attr('id'), data).html());
			});

		},
		url : url
	});
}

function number_format(number, decimals, dec_point, thousands_sep) {
	number = (number + '').replace(',', '').replace(' ', '');

	var n = !isFinite( + number) ? 0 :  + number,
		prec = !isFinite( + decimals) ? 0 : Math.abs(decimals),
		sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
		dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
		s = '',
		toFixedFix = function (n, prec) {
			var k = Math.pow(10, prec);
			return '' + Math.round(n * k) / k;
		};

	s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');

	if (s[0].length > 3) {
		s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
	}

	if ((s[1] || '').length < prec) {
		s[1] = s[1] || '';
		s[1] += new Array(prec - s[1].length + 1).join('0');
	}

	return s.join(dec);
}
--></script>
<?php echo $footer; ?>