<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php foreach($fbmetas as $fbmeta) {?>
<meta property="<?php echo $fbmeta['property']; ?>" content="<?php echo addslashes($fbmeta['content']); ?>" />
<?php } ?>
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php if(($this->config->get('UniversumControl_skin') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/<?php echo $this->config->get('UniversumControl_skin'); ?>.css" />
<?php } else { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/stylesheet.css" />
<?php } ?>
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_custom_font') != null)){	?>
<link href='<?php echo $this->config->get('UniversumControl_custom_font') ?>' rel='stylesheet' type='text/css' />
<?php } elseif (($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_custom_font') == null) && ( $this->config->get('UniversumControl_header_font') != 'Arial')){ ?>
<link href='https://fonts.googleapis.com/css?family=<?php echo $this->config->get('UniversumControl_headings_font') ?>' rel='stylesheet' type='text/css' />
<?php } else { ?>
<link href='https://fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css' />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_responsive') == '1')){	?>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/responsive.css" />
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/selectnav.min.js"></script>
<?php } else { ?>
<meta name="viewport" content="width=1024">
<?php } ?>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/custom_scripts.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.nivo.slider.pack.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/slideshow.css" media="screen" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/liteaccordion.css" media="screen" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/flex/flexslider.css" media="screen" />
<link rel="stylesheet" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.tweet.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/tipsy/css.tipsy.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/cloud-zoom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/count/jquery.countdown.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/liteaccordion.jquery.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.easing.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/flex/jquery.flexslider.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/jquery.tweet.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/tipsy/jquery.tipsy.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/cloud-zoom.1.0.2.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/js/scrolltopcontrol.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<?php echo $google_analytics; ?>

<?php if($this->config->get('UniversumControl_status') == '1'){ ?>
<style type="text/css">
body {
<?php if(( $this->config->get('UniversumControl_body_bg_pattern') != null) && ($this->config->get('UniversumControl_body_bg_pattern') != 'pattern0.png')){ ?>
 background:url("catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/backgrounds/<?php echo  $this->config->get('UniversumControl_body_bg_pattern');?>") top center repeat;
 <?php } ?>
 background-color:#<?php echo $this->config->get('UniversumControl_body_bg_color') ?>;
 font-family:<?php echo $this->config->get('UniversumControl_body_font') ?>;
 color:#<?php echo $this->config->get('UniversumControl_text_color') ?>;
}
h1,h2,h3,h4,h5,h6, #menu ul li a, #column-left .box .box-heading, #column-right .box .box-heading, .htabs a, .product-info .price-old, .product-info .price-new, .product-info .cart .button, .offer_title, div.prod_hold .prod-info-fly .name a, .accordeonHolder .name a, .prod_hold .name a, #content .boxPlain .box-heading { 
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_custom_font') != null)){	?>
font-family: '<?php echo  $this->config->get('UniversumControl_custom_font_family');?>';
<?php } elseif (($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_custom_font') == null) && ( $this->config->get('UniversumControl_header_font') != 'Arial')){ ?>
<?php $headerFont = $this->config->get('UniversumControl_headings_font');
$font = str_replace("+", " ", $headerFont);
?> font-family: '<?php echo $font; ?>';
<?php } else { ?>
font-family: 'Ubuntu Condensed';
<?php } ?>
}
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_headings_color') != null)){	?>
h1, h2, h2.heading_title, h3, h4, h5, h6, #column-left .box .box-heading, #column-right .box .box-heading {
color:#<?php echo $this->config->get('UniversumControl_headings_color') ?>;
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_headings1_size') != null)){	?>
h1 {
font-size:<?php echo $this->config->get('UniversumControl_headings1_size') ?>px;
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_headings2_size') != null)){	?>
h2, #content .boxPlain .box-heading {
font-size:<?php echo $this->config->get('UniversumControl_headings2_size') ?>px;
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_headings3_size') != null)){	?>
h3 {
font-size:<?php echo $this->config->get('UniversumControl_headings3_size') ?>px;
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_headings4_size') != null)){	?>
h4 {
font-size:<?php echo $this->config->get('UniversumControl_headings4_size') ?>px;
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_price_size') != null)){	?>
.product-info .price {
font-size:<?php echo $this->config->get('UniversumControl_price_size') ?>px;
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_module_title_size') != null)){	?>
#content h2.heading_title span {
font-size:<?php echo $this->config->get('UniversumControl_module_title_size') ?>px;
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_column_title_size') != null)){	?>
#column-left .box .box-heading, #column-right .box .box-heading {
font-size:<?php echo $this->config->get('UniversumControl_column_title_size') ?>px;
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_category_item_size') != null)){	?>
#menu ul#topnav > li > a, #menu > ul.topnav2 > li > a {
font-size:<?php echo $this->config->get('UniversumControl_category_item_size') ?>px;
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_headings_accent') != null)){	?>
#content .heading_title span {
	border-color:#<?php echo $this->config->get('UniversumControl_headings_accent') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_links_color') != null)){	?>
a, a:visited {
	color:#<?php echo $this->config->get('UniversumControl_links_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_links_color_hover') != null)){	?>
a:hover {
	color:#<?php echo $this->config->get('UniversumControl_links_color_hover') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ($this->config->get('UniversumControl_header_state') == 'none')){ ?>
#togglerone {
	display:none;
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_buttons_color') != null)){	?>
a.button, input.button {
	background-color:#<?php echo $this->config->get('UniversumControl_buttons_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_buttons_color_hover') != null)){	?>
a.button:hover, input.button:hover {
	background-color:#<?php echo $this->config->get('UniversumControl_buttons_color_hover') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_new_label_color') != null)){	?>
.new_prod {
	background-color:#<?php echo $this->config->get('UniversumControl_new_label_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_sale_label_color') != null)){	?>
.sale {
	background-color:#<?php echo $this->config->get('UniversumControl_sale_label_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_save_label_color') != null)){	?>
.save {
	background-color:#<?php echo $this->config->get('UniversumControl_save_label_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_cat_title_background') != null)){	?>
.title-holder {
	background:url(catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/inner_shadow2.png) 50% 3px no-repeat;
	background-color:#<?php echo $this->config->get('UniversumControl_cat_title_background') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_cat_title_color') != null)){	?>
.title-holder h1.heading_title {
	color:#<?php echo $this->config->get('UniversumControl_cat_title_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_breadcrumb_color') != null)){	?>
.breadcrumb, .breadcrumb a {
	color:#<?php echo $this->config->get('UniversumControl_breadcrumb_color') ?>;	
}
<?php } ?>
#header {
	<?php if(( $this->config->get('UniversumControl_header_bg_pattern') != null) && ($this->config->get('UniversumControl_header_bg_pattern') != 'pattern0.png')){ ?>
	background:url("catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/backgrounds/<?php echo  $this->config->get('UniversumControl_header_bg_pattern');?>") top center repeat;
	<?php } ?>
	<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_header_bg_color') != null)){	?>
	background-color:#<?php echo $this->config->get('UniversumControl_header_bg_color') ?>;
	<?php } ?>
	<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_header_top_color') != null)){	?>
	border-top-color:#<?php echo $this->config->get('UniversumControl_header_top_color') ?>;
	<?php } ?>	
}
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_header_top_color') != null)){	?>
#header_colapse, .toggler {
	background-color:#<?php echo $this->config->get('UniversumControl_header_top_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_header_text_color') != null)){	?>
#header #welcome a, #header_colapse, #header #support h4 {
	color:#<?php echo $this->config->get('UniversumControl_header_text_color') ?>;	
}
<?php } ?>
.header_top {
	<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_header_bottom_color') != null)){	?>
	background-color:#<?php echo $this->config->get('UniversumControl_header_bottom_color') ?>;
	<?php } ?>
	<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_header_bottom_border') != null)){	?>
	border-bottom-color:#<?php echo $this->config->get('UniversumControl_header_bottom_border') ?>;
	<?php } ?>
}
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_main_menu_color') != null)){	?>
#header .links a, #header .links ul li.subico span {
	color:#<?php echo $this->config->get('UniversumControl_main_menu_color') ?>;	
}
<?php } ?>

#header .links a:hover, #header .links a.selected {
	<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_main_menu_hover_color') != null)){	?>
	color:#<?php echo $this->config->get('UniversumControl_main_menu_hover_color') ?>;
	<?php } ?>
	<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_main_menu_hover_background') != null)){	?>
	background-color:#<?php echo $this->config->get('UniversumControl_main_menu_hover_background') ?>;
	<?php } ?>	
}
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_category_menu_color') != null)){	?>
#menu ul#topnav > li > a, #menu > ul.topnav2 > li > a, #menu ul#topnav ul.children li.pic_name h3 a span, #menu ul#topnav ul.children a, #menu ul#topnav li:hover ul.children a, #menu > ul.topnav2 > li ul > li > a, #menu > ul#topnav > li > div ul > li > a {
	color:#<?php echo $this->config->get('UniversumControl_category_menu_color') ?>;	
}
<?php } ?>
#menu > ul.topnav2 > li:hover > a, #menu > ul#topnav > li:hover > a, #menu ul#topnav ul.children li a:hover, #menu > ul.topnav2 > li ul > li > a:hover, #menu > ul#topnav > li div ul > li > a:hover {
	<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_category_menu_hover_color') != null)){	?>
	color:#<?php echo $this->config->get('UniversumControl_category_menu_hover_color') ?>;
	<?php } ?>
	<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_category_menu_hover_background') != null)){	?>
	background-color:#<?php echo $this->config->get('UniversumControl_category_menu_hover_background') ?>;
	<?php } ?>
}
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_menu_icon_back') != null)){	?>
#header .button-search, #header #support .sup_phone {
	background-color:#<?php echo $this->config->get('UniversumControl_menu_icon_back') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_cart_icon_back') != null)){	?>
#header #cart .cart_circle {
	background-color:#<?php echo $this->config->get('UniversumControl_cart_icon_back') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_drop_border') != null)){	?>
#header .links ul.secondary, #header #cart .content, #menu > ul.topnav2 > li > div, #menu > ul#topnav > li > div, #menu ul#topnav ul.children, #menu ul#topnav ul.children2 {
	border-bottom-color:#<?php echo $this->config->get('UniversumControl_drop_border') ?>;	
}
<?php } ?>
#footer {
	<?php if(( $this->config->get('UniversumControl_header_bg_pattern') != null) && ($this->config->get('UniversumControl_footer_bg_pattern') != 'pattern0.png')){ ?>
	background:url("catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/backgrounds/<?php echo  $this->config->get('UniversumControl_footer_bg_pattern');?>") top center repeat;
	<?php } ?>
	<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_footer_bg_color') != null)){	?>
	background-color:#<?php echo $this->config->get('UniversumControl_footer_bg_color') ?>;
	<?php } ?>
	<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_prefooter_border_top') != null)){	?>
	border-top-color:#<?php echo $this->config->get('UniversumControl_prefooter_border_top') ?>;
	<?php } ?>	
}
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_footer_link_color') != null)){	?>
#footer h4 {
	color:#<?php echo $this->config->get('UniversumControl_footer_link_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_footer_link_border') != null)){	?>
#footer h4, .tweet_list li, .footer_time, .footer_address, .footer_phone, .footer_fax, .footer_mail, .footer_skype, #footer .column ul.footer_links li, #footer .column:first-child {
	border-color:#<?php echo $this->config->get('UniversumControl_footer_link_border') ?>;	
}
<?php } ?>

#powered {
	<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_powered_bg') != null)){	?>
	background-color:#<?php echo $this->config->get('UniversumControl_powered_bg') ?>;
	<?php } ?>
	<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_powered_text') != null)){	?>
	color:#<?php echo $this->config->get('UniversumControl_powered_text') ?>;
	<?php } ?>	
}
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_cart_button_color') != null)){	?>
input.button_cart_product, a.add_to_cart_small {
	background-color:#<?php echo $this->config->get('UniversumControl_cart_button_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_wish_button_color') != null)){	?>
a.add_to_wishlist_small {
	background-color:#<?php echo $this->config->get('UniversumControl_wish_button_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_compare_button_color') != null)){	?>
a.add_to_compare_small {
	background-color:#<?php echo $this->config->get('UniversumControl_compare_button_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_main_price_color') != null)){	?>
div.prod_hold .price-new, .accordeonHolder .price-new, div.prod_hold .prod-info-fly .price, .accordeonHolder .price, .product-info .price {
	color:#<?php echo $this->config->get('UniversumControl_main_price_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_old_price_color') != null)){	?>
.product-info .price-old, div.prod_hold .price-old, .accordeonHolder .price-old {
	color:#<?php echo $this->config->get('UniversumControl_old_price_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_product_tab_color') != null)){	?>
.htabs a.selected, .htabs a:hover {
	border-top-color:#<?php echo $this->config->get('UniversumControl_product_tab_color') ?>;
	color:#<?php echo $this->config->get('UniversumControl_product_tab_color') ?>;	
}
<?php } ?>
<?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_site_mode') == '0')){	?>
#header #cart, #header .links a.cart_link, a.add_to_cart_small, input#button-cart, input.compare_cart, img.wish-cart {
	display:none;	
}
<?php } ?>



<?php if(($this->config->get('UniversumControl_status') == '1') && ($this->config->get('UniversumControl_custom_css') != null)){ ?>
<?php echo $this->config->get('UniversumControl_custom_css') ?>
<?php } ?>



</style>
<?php } ?>

</head>
<body>
<?php
$this->language->load('common/footer');
$text_contact = $this->language->get('text_contact');
$text_information = $this->language->get('text_information');
$text_special = $this->language->get('text_special');
?>
<?php
$this->language->load('Universum_custom/Universum');
$text_toggle = $this->language->get('text_toggle');
$text_question = $this->language->get('text_question');
$text_facebook = $this->language->get('text_facebook');
$text_twitter = $this->language->get('text_twitter');
$text_payment = $this->language->get('text_payment');
$text_skype_click = $this->language->get('text_skype_click');
$text_compare = $this->language->get('text_compare');
$text_news = $this->language->get('text_news');
$text_brands = $this->language->get('text_brands');
$text_header_support = $this->language->get('text_header_support');
$text_blog = $this->language->get('text_blog');
?>
<div id="container" class="<?php if(($this->config->get('UniversumControl_layout') != null) && ($this->config->get('UniversumControl_status') == '1')) { ?>
<?php echo $this->config->get('UniversumControl_layout') ?>
<?php } else { ?>
<?php echo "full_width_container"; ?>
<?php } ?>">
<div id="header">
<div id="header_colapse">
<a id="toggle_switch" class="toggler" href="#" title="<?php echo $text_toggle; ?>"><span>Slide toggle</span></a>
<div id="togglerone" class="inner">
<div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  <?php if(($this->config->get('UniversumControl_status') == '1') && ($this->config->get('UniversumControl_support_block') == '1')){ ?>
  <div id="support">
  <h4><?php echo $text_header_support; ?></h4>
  <span class="phone_num"><?php echo $this->config->get('UniversumControl_footer_phone') ?></span>
  <span class="sup_phone"></span>
  </div>
  <?php } ?>
</div>
</div>
<div class="header_top">
<div class="inner">
<?php echo $language; ?>
<?php echo $currency; ?>
<div class="links">
<ul id="main_nav">
	  <li><a href="<?php echo $home; ?>" class="home_link"><?php echo $text_home; ?></a></li>
      <li class="subico"><a href="#"><?php echo $text_information; ?></a>
        <ul class="secondary">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
          <li><a href="<?php echo $contact; ?>" title="<?php echo $text_contact; ?>"><?php echo $text_contact; ?></a></li>
        </ul>
      </li>
      <?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_news_link') == '1')){	?>
      <li><a href="<?php echo $base; ?>index.php?route=information/LatestNews" class="news_link"><?php echo $text_news; ?></a></li>
      <?php } ?>
      <?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_blog_link') == '1')){	?>
      <li><a href="<?php echo $this->url->link('blog/category/home'); ?>" class="blog_link"><?php echo $text_blog; ?></a></li>
      <?php } ?>
      <li><a href="<?php echo $wishlist; ?>" id="wishlist_total"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $compare; ?>" class="compare_link"><?php echo $text_compare; ?></a></li>
      <li><a href="<?php echo $account; ?>"  class="account_link"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $shopping_cart; ?>"  class="cart_link"><?php echo $text_shopping_cart; ?></a></li>
</ul>
</div>
</div>
</div>
<div class="inner">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  
  
  <?php echo $cart; ?>
  


<div id="menu">

<?php $menuType = $this->config->get('UniversumControl_menu'); ?>
  <?php if(($this->config->get('UniversumControl_menu') != null) && ($this->config->get('UniversumControl_status') == '1')){ ?>
  <?php include dirname(__FILE__) . '/' . $menuType; ?>
    <div class="clear"></div>
    <?php } else { ?>
    <?php include dirname(__FILE__) . '/OpencartDefault_menu.php'; ?>
    <div class="clear"></div>
    <?php } ?>

<div class="clear"></div>
</div>

<div id="notification"></div>  
  
  
</div>

<?php if ($modules) { ?>
<div id="module_area">

<?php foreach ($modules as $module) { ?>
<?php echo $module; ?>
<?php } ?>

<div class="inner"></div>
</div>
<?php } ?> 

</div>
<script type="text/javascript">
$(document).ready(function() {
<?php if (isset($this->request->get['route']) && $this->request->get['route'] == 'common/home' || !isset($this->request->get['route'])) { ?>
		$('.home_link').addClass('selected');
<?php } ?>
<?php if (isset($this->request->get['route']) && $this->request->get['route'] == 'account/login') { ?>
		$('.account_link').addClass('selected');
<?php } ?>
<?php if (isset($this->request->get['route']) && $this->request->get['route'] == 'information/LatestNews') { ?>
		$('.news_link').addClass('selected');
<?php } ?>
<?php if (isset($this->request->get['route']) && $this->request->get['route'] == 'account/wishlist') { ?>
		$('#wishlist_total').addClass('selected');
<?php } ?>
<?php if (isset($this->request->get['route']) && $this->request->get['route'] == 'checkout/cart') { ?>
		$('.cart_link').addClass('selected');
<?php } ?>
<?php if (isset($this->request->get['route']) && $this->request->get['route'] == 'checkout/checkout') { ?>
		$('.checkout_link').addClass('selected');
<?php } ?>
<?php if (isset($this->request->get['route']) && $this->request->get['route'] == 'information/contact') { ?>
		$('.contact_link').addClass('selected');
<?php } ?>
<?php if (isset($this->request->get['route']) && $this->request->get['route'] == 'account/account') { ?>
		$('.account_link').addClass('selected');
<?php } ?>
<?php if (isset($this->request->get['route']) && $this->request->get['route'] == 'product/special') { ?>
		$('.special_link').addClass('selected');
<?php } ?>
<?php if (isset($this->request->get['route']) && $this->request->get['route'] == 'product/compare') { ?>
		$('.compare_link').addClass('selected');
<?php } ?>			
});
</script>



