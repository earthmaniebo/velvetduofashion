<?php echo $header; ?>

<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box fixed">
    <div class="heading">
      <h1><?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
    </div>
  </div>
  <div class="box fixed">
  <div id="tabs" class="htabs"> <a href="#tab_layout"><?php echo $text_general_settings; ?></a> <a href="#tab_header"><?php echo $text_header_settings; ?></a> <a href="#tab_footer"><?php echo $text_footer_settings; ?></a><a href="#tab_color"><?php echo $text_common_colors; ?></a> <a href="#tab_product"><?php echo $text_product_page; ?></a> <a href="#tab_fonts"><?php echo $text_fonts; ?></a> <a href="#tab_social"><?php echo $text_social; ?></a> <a href="#tab_cards"><?php echo $text_icons; ?></a><a href="#tab_css"><?php echo $text_css; ?></a> <a href="#tab_map"><?php echo $text_map; ?></a> </div>
  <div class="htabs-content" id="tab_layout">
  <h2 class="layout"><span><?php echo $text_general_settings; ?></span></h2>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
    <table class="form">
    <tr>
        <td><?php echo $text_site_mode; ?></td>
        <td><select name="UniversumControl_site_mode" class="spicy">
            <?php if (isset($UniversumControl_site_mode)) {
              $selected323 = 'selected="selected"';
              ?>
            <option value="1" <?php if($UniversumControl_site_mode=='1'){echo $selected323;} ?>><?php echo $text_mode_store; ?></option>
            <option value="0" <?php if($UniversumControl_site_mode=='0'){echo $selected323;} ?>><?php echo $text_mode_catalog; ?></option>
            <?php } else { ?>
            <option value="1" selected="selected"><?php echo $text_mode_store; ?></option>
            <option value="0"><?php echo $text_mode_catalog; ?></option>
            <?php } ?>
          </select>
      </tr>
      <tr>
        <td><?php echo $text_layout_type; ?></td>
        <td><select name="UniversumControl_layout" class="spicy">
            <?php if (isset($UniversumControl_layout)) {
              $selected912 = 'selected="selected"';
              ?>
            <option value="full_width_container" <?php if($UniversumControl_layout=='full_width_container'){echo $selected912;} ?>><?php echo $text_layout_full; ?></option>
            <option value="boxed" <?php if($UniversumControl_layout=='boxed'){echo $selected912;} ?>><?php echo $text_layout_boxed; ?></option>
            <?php } else { ?>
            <option value="full_width_container" selected="selected"><?php echo $text_layout_full; ?></option>
            <option value="boxed"><?php echo $text_layout_boxed; ?></option>
            <?php } ?>
          </select></td>
      </tr>
      <tr>
        <td>Choose skin</td>
        <td><select name="UniversumControl_skin" class="spicy">
            <?php if (isset($UniversumControl_skin)) {
              $selected597 = 'selected="selected"';
              ?>
            <option value="stylesheet" <?php if($UniversumControl_skin=='stylesheet'){echo $selected597;} ?>>Default skin</option>
            <option value="stylesheet_blue" <?php if($UniversumControl_skin=='stylesheet_blue'){echo $selected597;} ?>>Blue skin</option>
            <option value="stylesheet_green" <?php if($UniversumControl_skin=='stylesheet_green'){echo $selected597;} ?>>Green skin</option>
            <option value="stylesheet_red" <?php if($UniversumControl_skin=='stylesheet_red'){echo $selected597;} ?>>Red skin</option>
            <option value="stylesheet_orange" <?php if($UniversumControl_skin=='stylesheet_orange'){echo $selected597;} ?>>Orange skin</option>
            <option value="stylesheet_dark" <?php if($UniversumControl_skin=='stylesheet_dark'){echo $selected597;} ?>>Dark skin</option>
            <option value="stylesheet_mnml" <?php if($UniversumControl_skin=='stylesheet_mnml'){echo $selected597;} ?>>Minimal skin</option>
            <?php } else { ?>
            <option value="stylesheet" selected="selected">Default skin</option>
            <option value="stylesheet_blue">Blue skin</option>
            <option value="stylesheet_green">Green skin</option>
            <option value="stylesheet_red">Red skin</option>
            <option value="stylesheet_orange">Orange skin</option>
            <option value="stylesheet_dark">Dark skin</option>
            <option value="stylesheet_mnml">Minimal skin</option>
            <?php } ?>
          </select></td>
      </tr>
      <tr>
        <td><?php echo $text_responsive; ?></td>
        <td><select name="UniversumControl_responsive" class="spicy">
            <?php if (isset($UniversumControl_responsive)) {
              $selected3013 = 'selected="selected"';
              ?>
            <option value="1" <?php if($UniversumControl_responsive=='1'){echo $selected3013;} ?>><?php echo $text_enabled; ?></option>
            <option value="0" <?php if($UniversumControl_responsive=='0'){echo $selected3013;} ?>><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
            <option value="0"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select>
      </tr>
      <tr>
        <td><?php echo $text_menu_type; ?></td>
        <td><select name="UniversumControl_menu" class="spicy">
            <?php if (isset($UniversumControl_menu)) {
              $selected99 = 'selected="selected"';
              ?>
            <option value="Universum_menu.php" <?php if($UniversumControl_menu=='Universum_menu.php'){echo $selected99;} ?>><?php echo $text_universum_menu; ?></option>
            <option value="OpencartDefault_menu.php" <?php if($UniversumControl_menu=='OpencartDefault_menu.php'){echo $selected99;} ?>><?php echo $text_opencart_menu; ?></option>
            <?php } else { ?>
            <option value="Universum_menu.php"><?php echo $text_universum_menu; ?></option>
            <option value="OpencartDefault_menu.php" selected="selected"><?php echo $text_opencart_menu; ?></option>
            <?php } ?>
          </select></td>
      </tr>
      <tr>
        <td><?php echo $text_header_state; ?></td>
        <td><select name="UniversumControl_header_state" class="spicy">
            <?php if (isset($UniversumControl_header_state)) {
              $selected33 = 'selected="selected"';
              ?>
            <option value="block" <?php if($UniversumControl_header_state=='block'){echo $selected33;} ?>><?php echo $text_opened; ?></option>
            <option value="none" <?php if($UniversumControl_header_state=='none'){echo $selected33;} ?>><?php echo $text_hidden; ?></option>
            <?php } else { ?>
            <option value="block" selected="selected"><?php echo $text_opened; ?></option>
            <option value="none"><?php echo $text_hidden; ?></option>
            <?php } ?>
          </select>
      </tr>
      <tr>
        <td><?php echo $text_support_block; ?></td>
        <td><select name="UniversumControl_support_block" class="spicy">
            <?php if (isset($UniversumControl_support_block)) {
              $selected714 = 'selected="selected"';
              ?>
            <option value="1" <?php if($UniversumControl_support_block=='1'){echo $selected714;} ?>><?php echo $text_enabled; ?></option>
            <option value="0" <?php if($UniversumControl_support_block=='0'){echo $selected714;} ?>><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
            <option value="0"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select></td>
      </tr>
      <tr>
        <td><?php echo $text_news_link; ?></td>
        <td><select name="UniversumControl_news_link" class="spicy">
            <?php if (isset($UniversumControl_news_link)) {
              $selected5 = 'selected="selected"';
              ?>
            <option value="1" <?php if($UniversumControl_news_link=='1'){echo $selected5;} ?>><?php echo $text_enabled; ?></option>
            <option value="0" <?php if($UniversumControl_news_link=='0'){echo $selected5;} ?>><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
            <option value="0"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select></td>
      </tr>
      
      <tr>
        <td><?php echo $text_blog_link; ?></td>
        <td><select name="UniversumControl_blog_link" class="spicy">
            <?php if (isset($UniversumControl_blog_link)) {
              $selected590 = 'selected="selected"';
              ?>
            <option value="1" <?php if($UniversumControl_blog_link=='1'){echo $selected590;} ?>><?php echo $text_enabled; ?></option>
            <option value="0" <?php if($UniversumControl_blog_link=='0'){echo $selected590;} ?>><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1"><?php echo $text_enabled; ?></option>
            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select></td>
      </tr>
      
      <tr>
        <td><?php echo $text_specials_link; ?></td>
        <td><select name="UniversumControl_specials_link" class="spicy">
            <?php if (isset($UniversumControl_specials_link)) {
              $selected6 = 'selected="selected"';
              ?>
            <option value="1" <?php if($UniversumControl_specials_link=='1'){echo $selected6;} ?>><?php echo $text_enabled; ?></option>
            <option value="0" <?php if($UniversumControl_specials_link=='0'){echo $selected6;} ?>><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
            <option value="0"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select></td>
      </tr>
      <tr>
        <td><?php echo $text_menu_brands; ?></td>
        <td><select name="UniversumControl_brands" class="spicy">
            <?php if (isset($UniversumControl_brands)) {
              $selected979 = 'selected="selected"';
              ?>
            <option value="1" <?php if($UniversumControl_brands=='1'){echo $selected979;} ?>><?php echo $text_enabled; ?></option>
            <option value="0" <?php if($UniversumControl_brands=='0'){echo $selected979;} ?>><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1"><?php echo $text_enabled; ?></option>
            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select></td>
      </tr>
      <tr>
        <td><?php echo $text_new_label; ?></td>
        <td><select name="UniversumControl_new_label" class="spicy">
            <?php if (isset($UniversumControl_new_label)) {
              $selected44 = 'selected="selected"';
              ?>
            <option value="10" <?php if($UniversumControl_new_label=='10'){echo $selected44;} ?>>10</option>
            <option value="20" <?php if($UniversumControl_new_label=='20'){echo $selected44;} ?>>20</option>
            <option value="30" <?php if($UniversumControl_new_label=='30'){echo $selected44;} ?>>30</option>
            <option value="45" <?php if($UniversumControl_new_label=='45'){echo $selected44;} ?>>45</option>
            <option value="60" <?php if($UniversumControl_new_label=='60'){echo $selected44;} ?>>60</option>
            <option value="90" <?php if($UniversumControl_new_label=='90'){echo $selected44;} ?>>90</option>
            <?php } else { ?>
            <option value="10" selected="selected">10</option>
            <option value="20">20</option>
            <option value="30">30</option>
            <option value="45">45</option>
            <option value="60">60</option>
            <option value="90">90</option>
            <?php } ?>
          </select>
      </tr>
      <tr>
        <td><?php echo $text_countdown; ?></td>
        <td><select name="UniversumControl_countdown" class="spicy">
            <?php if (isset($UniversumControl_countdown)) {
              $selected4 = 'selected="selected"';
              ?>
            <option value="1" <?php if($UniversumControl_countdown=='1'){echo $selected4;} ?>><?php echo $text_enabled; ?></option>
            <option value="0" <?php if($UniversumControl_countdown=='0'){echo $selected4;} ?>><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
            <option value="0"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select></td>
      </tr>
    </table>
    </div>
    <div class="htabs-content" id="tab_map">
    <h2 class="layout"><span><?php echo $text_map; ?></span></h2>
      <table class="form">
        <tr>
          <td><?php echo $text_map; ?></td>
          <td><textarea id="UniversumControl_map" name="UniversumControl_map" cols="140" rows="8" class="spicy"><?php echo $UniversumControl_map; ?></textarea></td>
        </tr>
      </table>
    </div>
    <div class="htabs-content" id="tab_css">
    <h2 class="layout"><span><?php echo $text_css; ?></span></h2>
      <table class="form">
        <tr>
          <td><?php echo $text_css; ?></td>
          <td><textarea id="UniversumControl_custom_css" name="UniversumControl_custom_css" cols="140" rows="8" class="spicy"><?php echo $UniversumControl_custom_css; ?></textarea></td>
        </tr>
      </table>
    </div>
    
    
    <div class="htabs-content" id="tab_product">
    <h2 class="layout"><span><?php echo $text_product_page; ?></span></h2>
      <table class="form">
        <tr>
          <td><?php echo $text_preview_type; ?></td>
          <td><select name="UniversumControl_preview" class="spicy">
            <?php if (isset($UniversumControl_preview)) {
              $selected1199 = 'selected="selected"';
              ?>
            <option value="zoom.php" <?php if($UniversumControl_preview=='zoom.php'){echo $selected1199;} ?>><?php echo $text_zoom; ?></option>
            <option value="colorbox.php" <?php if($UniversumControl_preview=='colorbox.php'){echo $selected1199;} ?>><?php echo $text_colorbox; ?></option>
            <?php } else { ?>
            <option value="zoom.php"><?php echo $text_zoom; ?></option>
            <option value="colorbox.php" selected="selected"><?php echo $text_colorbox; ?></option>
            <?php } ?>
          </select></td>
        </tr>
        <tr>
          <td><?php echo $text_cart_button_color; ?></td>
          <td><input id="UniversumControl_cart_button_color" type="text" name="UniversumControl_cart_button_color" value="<?php echo $UniversumControl_cart_button_color; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><?php echo $text_wish_button_color; ?></td>
          <td><input id="UniversumControl_wish_button_color" type="text" name="UniversumControl_wish_button_color" value="<?php echo $UniversumControl_wish_button_color; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><?php echo $text_compare_button_color; ?></td>
          <td><input id="UniversumControl_compare_button_color" type="text" name="UniversumControl_compare_button_color" value="<?php echo $UniversumControl_compare_button_color; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><?php echo $text_main_price; ?></td>
          <td><input id="UniversumControl_main_price_color" type="text" name="UniversumControl_main_price_color" value="<?php echo $UniversumControl_main_price_color; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><?php echo $text_old_price; ?></td>
          <td><input id="UniversumControl_old_price_color" type="text" name="UniversumControl_old_price_color" value="<?php echo $UniversumControl_old_price_color; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><?php echo $text_tab_color; ?></td>
          <td><input id="UniversumControl_product_tab_color" type="text" name="UniversumControl_product_tab_color" value="<?php echo $UniversumControl_product_tab_color; ?>" class="spicy" ></td>
        </tr>
      </table>
    </div>
    
    
    <div class="htabs-content" id="tab_color">
      <h2 class="colors"><span><?php echo $text_common_colors; ?></span></h2>
      <p><?php echo $text_color_helper; ?></p>
      <table class="form">
        <tr>
          <td><?php echo $text_body_color; ?></td>
          <td><input id="UniversumControl_body_bg_color" type="text" name="UniversumControl_body_bg_color" value="<?php echo $UniversumControl_body_bg_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_body_pattern; ?></td>
          <td><select name="UniversumControl_body_bg_pattern" class="spicy">
              <?php if (isset($UniversumControl_body_bg_pattern)) {
                    $selected3 = 'selected="selected"';
            ?>
              <option value="pattern0.png" <?php if($UniversumControl_body_bg_pattern=='pattern0.png'){echo $selected3;} ?>>No pattern</option>
              <option value="pattern1.png" <?php if($UniversumControl_body_bg_pattern=='pattern1.png'){echo $selected3;} ?>>Pattern 1</option>
              <option value="pattern2.png" <?php if($UniversumControl_body_bg_pattern=='pattern2.png'){echo $selected3;} ?>>Pattern 2</option>
              <option value="pattern3.png" <?php if($UniversumControl_body_bg_pattern=='pattern3.png'){echo $selected3;} ?>>Pattern 3</option>
              <option value="pattern4.png" <?php if($UniversumControl_body_bg_pattern=='pattern4.png'){echo $selected3;} ?>>Pattern 4</option>
              <option value="pattern5.png" <?php if($UniversumControl_body_bg_pattern=='pattern5.png'){echo $selected3;} ?>>Pattern 5</option>
              <option value="pattern6.png" <?php if($UniversumControl_body_bg_pattern=='pattern6.png'){echo $selected3;} ?>>Pattern 6</option>
              <option value="pattern7.png" <?php if($UniversumControl_body_bg_pattern=='pattern7.png'){echo $selected3;} ?>>Pattern 7</option>
              <option value="pattern8.png" <?php if($UniversumControl_body_bg_pattern=='pattern8.png'){echo $selected3;} ?>>Pattern 8</option>
              <option value="pattern9.png" <?php if($UniversumControl_body_bg_pattern=='pattern9.png'){echo $selected3;} ?>>Pattern 9</option>
              <option value="pattern10.png" <?php if($UniversumControl_body_bg_pattern=='pattern10.png'){echo $selected3;} ?>>Pattern 10</option>
              <option value="pattern11.png" <?php if($UniversumControl_body_bg_pattern=='pattern11.png'){echo $selected3;} ?>>Pattern 11</option>
              <option value="pattern12.png" <?php if($UniversumControl_body_bg_pattern=='pattern12.png'){echo $selected3;} ?>>Pattern 12</option>
              <option value="pattern13.png" <?php if($UniversumControl_body_bg_pattern=='pattern13.png'){echo $selected3;} ?>>Pattern 13</option>
              <option value="pattern14.png" <?php if($UniversumControl_body_bg_pattern=='pattern14.png'){echo $selected3;} ?>>Pattern 14</option>
              <option value="pattern15.png" <?php if($UniversumControl_body_bg_pattern=='pattern15.png'){echo $selected3;} ?>>Pattern 15</option>
              <option value="pattern16.png" <?php if($UniversumControl_body_bg_pattern=='pattern16.png'){echo $selected3;} ?>>Pattern 16</option>
              <option value="pattern17.png" <?php if($UniversumControl_body_bg_pattern=='pattern17.png'){echo $selected3;} ?>>Pattern 17</option>
              <option value="pattern18.png" <?php if($UniversumControl_body_bg_pattern=='pattern18.png'){echo $selected3;} ?>>Pattern 18</option>
              <option value="pattern19.png" <?php if($UniversumControl_body_bg_pattern=='pattern19.png'){echo $selected3;} ?>>Pattern 19</option>
              <option value="pattern20.png" <?php if($UniversumControl_body_bg_pattern=='pattern20.png'){echo $selected3;} ?>>Pattern 20</option>
              <option value="pattern21.png" <?php if($UniversumControl_body_bg_pattern=='pattern21.png'){echo $selected3;} ?>>Pattern 21</option>
              <option value="pattern22.png" <?php if($UniversumControl_body_bg_pattern=='pattern22.png'){echo $selected3;} ?>>Pattern 22</option>
              <option value="pattern23.png" <?php if($UniversumControl_body_bg_pattern=='pattern23.png'){echo $selected3;} ?>>Pattern 23</option>
              <option value="pattern24.png" <?php if($UniversumControl_body_bg_pattern=='pattern24.png'){echo $selected3;} ?>>Pattern 24</option>
              <option value="pattern25.png" <?php if($UniversumControl_body_bg_pattern=='pattern25.png'){echo $selected3;} ?>>Pattern 25</option>
              <option value="pattern26.png" <?php if($UniversumControl_body_bg_pattern=='pattern26.png'){echo $selected3;} ?>>Pattern 26</option>
              <option value="pattern27.png" <?php if($UniversumControl_body_bg_pattern=='pattern27.png'){echo $selected3;} ?>>Pattern 27</option>
              <option value="pattern28.png" <?php if($UniversumControl_body_bg_pattern=='pattern28.png'){echo $selected3;} ?>>Pattern 28</option>
              <option value="pattern29.png" <?php if($UniversumControl_body_bg_pattern=='pattern29.png'){echo $selected3;} ?>>Pattern 29</option>
              <option value="pattern30.gif" <?php if($UniversumControl_body_bg_pattern=='pattern30.gif'){echo $selected3;} ?>>Pattern 30</option>
              <option value="pattern31.png" <?php if($UniversumControl_body_bg_pattern=='pattern31.png'){echo $selected3;} ?>>Pattern 31</option>
              <option value="pattern32.png" <?php if($UniversumControl_body_bg_pattern=='pattern32.png'){echo $selected3;} ?>>Pattern 32</option>
              <option value="pattern33.png" <?php if($UniversumControl_body_bg_pattern=='pattern33.png'){echo $selected3;} ?>>Pattern 33</option>
              <option value="pattern34.png" <?php if($UniversumControl_body_bg_pattern=='pattern34.png'){echo $selected3;} ?>>Pattern 34</option>
              <option value="pattern35.png" <?php if($UniversumControl_body_bg_pattern=='pattern35.png'){echo $selected3;} ?>>Pattern 35</option>
              <option value="pattern36.png" <?php if($UniversumControl_body_bg_pattern=='pattern36.png'){echo $selected3;} ?>>Pattern 36</option>
              <option value="pattern37.png" <?php if($UniversumControl_body_bg_pattern=='pattern37.png'){echo $selected3;} ?>>Pattern 37</option>
              <option value="pattern38.png" <?php if($UniversumControl_body_bg_pattern=='pattern38.png'){echo $selected3;} ?>>Pattern 38</option>
              <option value="pattern39.png" <?php if($UniversumControl_body_bg_pattern=='pattern39.png'){echo $selected3;} ?>>Pattern 39</option>
              <option value="pattern40.png" <?php if($UniversumControl_body_bg_pattern=='pattern40.png'){echo $selected3;} ?>>Pattern 40</option>
              <?php } else { ?>
              <option value="pattern0.png" selected="selected">No pattern</option>
              <option value="pattern1.png">Pattern 1</option>
              <option value="pattern2.png">Pattern 2</option>
              <option value="pattern3.png">Pattern 3</option>
              <option value="pattern4.png">Pattern 4</option>
              <option value="pattern5.png">Pattern 5</option>
              <option value="pattern6.png">Pattern 6</option>
              <option value="pattern7.png">Pattern 7</option>
              <option value="pattern8.png">Pattern 8</option>
              <option value="pattern9.png">Pattern 9</option>
              <option value="pattern10.png">Pattern 10</option>
              <option value="pattern11.png">Pattern 11</option>
              <option value="pattern12.png">Pattern 12</option>
              <option value="pattern13.png">Pattern 13</option>
              <option value="pattern14.png">Pattern 14</option>
              <option value="pattern15.png">Pattern 15</option>
              <option value="pattern16.png">Pattern 16</option>
              <option value="pattern17.png">Pattern 17</option>
              <option value="pattern18.png">Pattern 18</option>
              <option value="pattern19.png">Pattern 19</option>
              <option value="pattern20.png">Pattern 20</option>
              <option value="pattern21.png">Pattern 21</option>
              <option value="pattern22.png">Pattern 22</option>
              <option value="pattern23.png">Pattern 23</option>
              <option value="pattern24.png">Pattern 24</option>
              <option value="pattern25.png">Pattern 25</option>
              <option value="pattern26.png">Pattern 26</option>
              <option value="pattern27.png">Pattern 27</option>
              <option value="pattern28.png">Pattern 28</option>
              <option value="pattern29.png">Pattern 29</option>
              <option value="pattern30.gif">Pattern 30</option>
              <option value="pattern31.png">Pattern 31</option>
              <option value="pattern32.png">Pattern 32</option>
              <option value="pattern33.png">Pattern 33</option>
              <option value="pattern34.png">Pattern 34</option>
              <option value="pattern35.png">Pattern 35</option>
              <option value="pattern36.png">Pattern 36</option>
              <option value="pattern37.png">Pattern 37</option>
              <option value="pattern38.png">Pattern 38</option>
              <option value="pattern39.png">Pattern 39</option>
              <option value="pattern40.png">Pattern 40</option>
              <?php } ?>
            </select>
            </td>
        </tr>
        <tr>
          <td><?php echo $text_pattern_samples; ?></td>
          <td><span class="preview prev1"><b>1</b></span> <span class="preview prev2"><b>2</b></span> <span class="preview prev3"><b>3</b></span> <span class="preview prev4"><b>4</b></span> <span class="preview prev5"><b>5</b></span> <span class="preview prev6"><b>6</b></span> <span class="preview prev7"><b>7</b></span> <span class="preview prev8"><b>8</b></span> <span class="preview prev9"><b>9</b></span> <span class="preview prev10"><b>10</b></span> <span class="preview prev11"><b>11</b></span> <span class="preview prev12"><b>12</b></span> <span class="preview prev13"><b>13</b></span> <span class="preview prev14"><b>14</b></span> <span class="preview prev15"><b>15</b></span> <span class="preview prev16"><b>16</b></span> <span class="preview prev17"><b>17</b></span> <span class="preview prev18"><b>18</b></span> <span class="preview prev19"><b>19</b></span> <span class="preview prev20"><b>20</b></span> <span class="preview prev21"><b>21</b></span> <span class="preview prev22"><b>22</b></span> <span class="preview prev23"><b>23</b></span> <span class="preview prev24"><b>24</b></span> <span class="preview prev25"><b>25</b></span> <span class="preview prev26"><b>26</b></span> <span class="preview prev27"><b>27</b></span> <span class="preview prev28"><b>28</b></span> <span class="preview prev29"><b>29</b></span> <span class="preview prev30"><b>30</b></span> <span class="preview prev31"><b>31</b></span> <span class="preview prev32"><b>32</b></span> <span class="preview prev33"><b>33</b></span> <span class="preview prev34"><b>34</b></span> <span class="preview prev35"><b>35</b></span> <span class="preview prev36"><b>36</b></span> <span class="preview prev37"><b>37</b></span> <span class="preview prev38"><b>38</b></span> <span class="preview prev39"><b>39</b></span> <span class="preview prev40"><b>40</b></span></td>
        </tr>
        <tr>
          <td><?php echo $text_headings_color; ?>:</td>
          <td><input id="UniversumControl_headings_color" type="text" name="UniversumControl_headings_color" value="<?php echo $UniversumControl_headings_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_body_text_color; ?>:</td>
          <td><input id="UniversumControl_text_color" type="text" name="UniversumControl_text_color" value="<?php echo $UniversumControl_text_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_links_color; ?>:</td>
          <td><input id="UniversumControl_links_color" type="text" name="UniversumControl_links_color" value="<?php echo $UniversumControl_links_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_links_hover_color; ?>:</td>
          <td><input id="UniversumControl_links_color_hover" type="text" name="UniversumControl_links_color_hover" value="<?php echo $UniversumControl_links_color_hover; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_buttons_color; ?></td>
          <td><input id="UniversumControl_buttons_color" type="text" name="UniversumControl_buttons_color" value="<?php echo $UniversumControl_buttons_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_buttons_hover_color; ?></td>
          <td><input id="UniversumControl_buttons_color_hover" type="text" name="UniversumControl_buttons_color_hover" value="<?php echo $UniversumControl_buttons_color_hover; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_new_color; ?></td>
          <td><input id="UniversumControl_new_label_color" type="text" name="UniversumControl_new_label_color" value="<?php echo $UniversumControl_new_label_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_sale_color; ?></td>
          <td><input id="UniversumControl_sale_label_color" type="text" name="UniversumControl_sale_label_color" value="<?php echo $UniversumControl_sale_label_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_save_color; ?></td>
          <td><input id="UniversumControl_save_label_color" type="text" name="UniversumControl_save_label_color" value="<?php echo $UniversumControl_save_label_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_cat_back; ?></td>
          <td><input id="UniversumControl_cat_title_background" type="text" name="UniversumControl_cat_title_background" value="<?php echo $UniversumControl_cat_title_background; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_cat_color; ?></td>
          <td><input id="UniversumControl_cat_title_color" type="text" name="UniversumControl_cat_title_color" value="<?php echo $UniversumControl_cat_title_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_headings_accent; ?>:</td>
          <td><input id="UniversumControl_headings_accent" type="text" name="UniversumControl_headings_accent" value="<?php echo $UniversumControl_headings_accent; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_breadcrumb_color; ?></td>
          <td><input id="UniversumControl_breadcrumb_color" type="text" name="UniversumControl_breadcrumb_color" value="<?php echo $UniversumControl_breadcrumb_color; ?>" class="spicy" >
            </td>
        </tr>
      </table>
      <!--  <input type="hidden" name="UniversumControl_module" value="<?php //echo $UniversumControl_module; ?>" /> --> 
    </div>
    <div class="htabs-content"  id="tab_header">
      <h2 class="colors"><span><?php echo $text_header_settings; ?></span></h2>
      <p><?php echo $text_color_helper; ?></p>
      <table class="form">
      <tr>
          <td><?php echo $text_header_color; ?></td>
          <td><input id="UniversumControl_header_bg_color" type="text" name="UniversumControl_header_bg_color" value="<?php echo $UniversumControl_header_bg_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_header_pattern; ?></td>
          <td><select name="UniversumControl_header_bg_pattern" class="spicy">
              <?php if (isset($UniversumControl_header_bg_pattern)) {
                    $selected313 = 'selected="selected"';
            ?>
              <option value="pattern0.png" <?php if($UniversumControl_header_bg_pattern=='pattern0.png'){echo $selected313;} ?>>No pattern</option>
              <option value="pattern1.png" <?php if($UniversumControl_header_bg_pattern=='pattern1.png'){echo $selected313;} ?>>Pattern 1</option>
              <option value="pattern2.png" <?php if($UniversumControl_header_bg_pattern=='pattern2.png'){echo $selected313;} ?>>Pattern 2</option>
              <option value="pattern3.png" <?php if($UniversumControl_header_bg_pattern=='pattern3.png'){echo $selected313;} ?>>Pattern 3</option>
              <option value="pattern4.png" <?php if($UniversumControl_header_bg_pattern=='pattern4.png'){echo $selected313;} ?>>Pattern 4</option>
              <option value="pattern5.png" <?php if($UniversumControl_header_bg_pattern=='pattern5.png'){echo $selected313;} ?>>Pattern 5</option>
              <option value="pattern6.png" <?php if($UniversumControl_header_bg_pattern=='pattern6.png'){echo $selected313;} ?>>Pattern 6</option>
              <option value="pattern7.png" <?php if($UniversumControl_header_bg_pattern=='pattern7.png'){echo $selected313;} ?>>Pattern 7</option>
              <option value="pattern8.png" <?php if($UniversumControl_header_bg_pattern=='pattern8.png'){echo $selected313;} ?>>Pattern 8</option>
              <option value="pattern9.png" <?php if($UniversumControl_header_bg_pattern=='pattern9.png'){echo $selected313;} ?>>Pattern 9</option>
              <option value="pattern10.png" <?php if($UniversumControl_header_bg_pattern=='pattern10.png'){echo $selected313;} ?>>Pattern 10</option>
              <option value="pattern11.png" <?php if($UniversumControl_header_bg_pattern=='pattern11.png'){echo $selected313;} ?>>Pattern 11</option>
              <option value="pattern12.png" <?php if($UniversumControl_header_bg_pattern=='pattern12.png'){echo $selected313;} ?>>Pattern 12</option>
              <option value="pattern13.png" <?php if($UniversumControl_header_bg_pattern=='pattern13.png'){echo $selected313;} ?>>Pattern 13</option>
              <option value="pattern14.png" <?php if($UniversumControl_header_bg_pattern=='pattern14.png'){echo $selected313;} ?>>Pattern 14</option>
              <option value="pattern15.png" <?php if($UniversumControl_header_bg_pattern=='pattern15.png'){echo $selected313;} ?>>Pattern 15</option>
              <option value="pattern16.png" <?php if($UniversumControl_header_bg_pattern=='pattern16.png'){echo $selected313;} ?>>Pattern 16</option>
              <option value="pattern17.png" <?php if($UniversumControl_header_bg_pattern=='pattern17.png'){echo $selected313;} ?>>Pattern 17</option>
              <option value="pattern18.png" <?php if($UniversumControl_header_bg_pattern=='pattern18.png'){echo $selected313;} ?>>Pattern 18</option>
              <option value="pattern19.png" <?php if($UniversumControl_header_bg_pattern=='pattern19.png'){echo $selected313;} ?>>Pattern 19</option>
              <option value="pattern20.png" <?php if($UniversumControl_header_bg_pattern=='pattern20.png'){echo $selected313;} ?>>Pattern 20</option>
              <option value="pattern21.png" <?php if($UniversumControl_header_bg_pattern=='pattern21.png'){echo $selected313;} ?>>Pattern 21</option>
              <option value="pattern22.png" <?php if($UniversumControl_header_bg_pattern=='pattern22.png'){echo $selected313;} ?>>Pattern 22</option>
              <option value="pattern23.png" <?php if($UniversumControl_header_bg_pattern=='pattern23.png'){echo $selected313;} ?>>Pattern 23</option>
              <option value="pattern24.png" <?php if($UniversumControl_header_bg_pattern=='pattern24.png'){echo $selected313;} ?>>Pattern 24</option>
              <option value="pattern25.png" <?php if($UniversumControl_header_bg_pattern=='pattern25.png'){echo $selected313;} ?>>Pattern 25</option>
              <option value="pattern26.png" <?php if($UniversumControl_header_bg_pattern=='pattern26.png'){echo $selected313;} ?>>Pattern 26</option>
              <option value="pattern27.png" <?php if($UniversumControl_header_bg_pattern=='pattern27.png'){echo $selected313;} ?>>Pattern 27</option>
              <option value="pattern28.png" <?php if($UniversumControl_header_bg_pattern=='pattern28.png'){echo $selected313;} ?>>Pattern 28</option>
              <option value="pattern29.png" <?php if($UniversumControl_header_bg_pattern=='pattern29.png'){echo $selected313;} ?>>Pattern 29</option>
              <option value="pattern30.gif" <?php if($UniversumControl_header_bg_pattern=='pattern30.gif'){echo $selected313;} ?>>Pattern 30</option>
              <option value="pattern31.png" <?php if($UniversumControl_header_bg_pattern=='pattern31.png'){echo $selected313;} ?>>Pattern 31</option>
              <option value="pattern32.png" <?php if($UniversumControl_header_bg_pattern=='pattern32.png'){echo $selected313;} ?>>Pattern 32</option>
              <option value="pattern33.png" <?php if($UniversumControl_header_bg_pattern=='pattern33.png'){echo $selected313;} ?>>Pattern 33</option>
              <option value="pattern34.png" <?php if($UniversumControl_header_bg_pattern=='pattern34.png'){echo $selected313;} ?>>Pattern 34</option>
              <option value="pattern35.png" <?php if($UniversumControl_header_bg_pattern=='pattern35.png'){echo $selected313;} ?>>Pattern 35</option>
              <option value="pattern36.png" <?php if($UniversumControl_header_bg_pattern=='pattern36.png'){echo $selected313;} ?>>Pattern 36</option>
              <option value="pattern37.png" <?php if($UniversumControl_header_bg_pattern=='pattern37.png'){echo $selected313;} ?>>Pattern 37</option>
              <option value="pattern38.png" <?php if($UniversumControl_header_bg_pattern=='pattern38.png'){echo $selected313;} ?>>Pattern 38</option>
              <option value="pattern39.png" <?php if($UniversumControl_header_bg_pattern=='pattern39.png'){echo $selected313;} ?>>Pattern 39</option>
              <option value="pattern40.png" <?php if($UniversumControl_header_bg_pattern=='pattern40.png'){echo $selected313;} ?>>Pattern 40</option>
              <?php } else { ?>
              <option value="pattern0.png" selected="selected">No pattern</option>
              <option value="pattern1.png">Pattern 1</option>
              <option value="pattern2.png">Pattern 2</option>
              <option value="pattern3.png">Pattern 3</option>
              <option value="pattern4.png">Pattern 4</option>
              <option value="pattern5.png">Pattern 5</option>
              <option value="pattern6.png">Pattern 6</option>
              <option value="pattern7.png">Pattern 7</option>
              <option value="pattern8.png">Pattern 8</option>
              <option value="pattern9.png">Pattern 9</option>
              <option value="pattern10.png">Pattern 10</option>
              <option value="pattern11.png">Pattern 11</option>
              <option value="pattern12.png">Pattern 12</option>
              <option value="pattern13.png">Pattern 13</option>
              <option value="pattern14.png">Pattern 14</option>
              <option value="pattern15.png">Pattern 15</option>
              <option value="pattern16.png">Pattern 16</option>
              <option value="pattern17.png">Pattern 17</option>
              <option value="pattern18.png">Pattern 18</option>
              <option value="pattern19.png">Pattern 19</option>
              <option value="pattern20.png">Pattern 20</option>
              <option value="pattern21.png">Pattern 21</option>
              <option value="pattern22.png">Pattern 22</option>
              <option value="pattern23.png">Pattern 23</option>
              <option value="pattern24.png">Pattern 24</option>
              <option value="pattern25.png">Pattern 25</option>
              <option value="pattern26.png">Pattern 26</option>
              <option value="pattern27.png">Pattern 27</option>
              <option value="pattern28.png">Pattern 28</option>
              <option value="pattern29.png">Pattern 29</option>
              <option value="pattern30.gif">Pattern 30</option>
              <option value="pattern31.png">Pattern 31</option>
              <option value="pattern32.png">Pattern 32</option>
              <option value="pattern33.png">Pattern 33</option>
              <option value="pattern34.png">Pattern 34</option>
              <option value="pattern35.png">Pattern 35</option>
              <option value="pattern36.png">Pattern 36</option>
              <option value="pattern37.png">Pattern 37</option>
              <option value="pattern38.png">Pattern 38</option>
              <option value="pattern39.png">Pattern 39</option>
              <option value="pattern40.png">Pattern 40</option>
              <?php } ?>
            </select>
            </td>
        </tr>
        <tr>
          <td><?php echo $text_pattern_samples; ?></td>
          <td><span class="preview prev1"><b>1</b></span> <span class="preview prev2"><b>2</b></span> <span class="preview prev3"><b>3</b></span> <span class="preview prev4"><b>4</b></span> <span class="preview prev5"><b>5</b></span> <span class="preview prev6"><b>6</b></span> <span class="preview prev7"><b>7</b></span> <span class="preview prev8"><b>8</b></span> <span class="preview prev9"><b>9</b></span> <span class="preview prev10"><b>10</b></span> <span class="preview prev11"><b>11</b></span> <span class="preview prev12"><b>12</b></span> <span class="preview prev13"><b>13</b></span> <span class="preview prev14"><b>14</b></span> <span class="preview prev15"><b>15</b></span> <span class="preview prev16"><b>16</b></span> <span class="preview prev17"><b>17</b></span> <span class="preview prev18"><b>18</b></span> <span class="preview prev19"><b>19</b></span> <span class="preview prev20"><b>20</b></span> <span class="preview prev21"><b>21</b></span> <span class="preview prev22"><b>22</b></span> <span class="preview prev23"><b>23</b></span> <span class="preview prev24"><b>24</b></span> <span class="preview prev25"><b>25</b></span> <span class="preview prev26"><b>26</b></span> <span class="preview prev27"><b>27</b></span> <span class="preview prev28"><b>28</b></span> <span class="preview prev29"><b>29</b></span> <span class="preview prev30"><b>30</b></span> <span class="preview prev31"><b>31</b></span> <span class="preview prev32"><b>32</b></span> <span class="preview prev33"><b>33</b></span> <span class="preview prev34"><b>34</b></span> <span class="preview prev35"><b>35</b></span> <span class="preview prev36"><b>36</b></span> <span class="preview prev37"><b>37</b></span> <span class="preview prev38"><b>38</b></span> <span class="preview prev39"><b>39</b></span> <span class="preview prev40"><b>40</b></span></td>
        </tr>
        <tr>
          <td><?php echo $text_header_top_color; ?>:</td>
          <td><input id="UniversumControl_header_top_color" type="text" name="UniversumControl_header_top_color" value="<?php echo $UniversumControl_header_top_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_header_text_color; ?>:</td>
          <td><input id="UniversumControl_header_text_color" type="text" name="UniversumControl_header_text_color" value="<?php echo $UniversumControl_header_text_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_header_bottom_color; ?>:</td>
          <td><input id="UniversumControl_header_bottom_color" type="text" name="UniversumControl_header_bottom_color" value="<?php echo $UniversumControl_header_bottom_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_header_bottom_border; ?>:</td>
          <td><input id="UniversumControl_header_bottom_border" type="text" name="UniversumControl_header_bottom_border" value="<?php echo $UniversumControl_header_bottom_border; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_menu_link_color; ?>:</td>
          <td><input id="UniversumControl_main_menu_color" type="text" name="UniversumControl_main_menu_color" value="<?php echo $UniversumControl_main_menu_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_menu_link_hover_color; ?>:</td>
          <td><input id="UniversumControl_main_menu_hover_color" type="text" name="UniversumControl_main_menu_hover_color" value="<?php echo $UniversumControl_main_menu_hover_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_menu_link_hover_back; ?>:</td>
          <td><input id="UniversumControl_main_menu_hover_background" type="text" name="UniversumControl_main_menu_hover_background" value="<?php echo $UniversumControl_main_menu_hover_background; ?>" class="spicy" >
            </td>
        </tr>        
        <tr>
          <td><?php echo $text_category_link_color; ?>:</td>
          <td><input id="UniversumControl_category_menu_color" type="text" name="UniversumControl_category_menu_color" value="<?php echo $UniversumControl_category_menu_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_category_link_hover_color; ?>:</td>
          <td><input id="UniversumControl_category_menu_hover_color" type="text" name="UniversumControl_category_menu_hover_color" value="<?php echo $UniversumControl_category_menu_hover_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_category_link_hover_back; ?>:</td>
          <td><input id="UniversumControl_category_menu_hover_background" type="text" name="UniversumControl_category_menu_hover_background" value="<?php echo $UniversumControl_category_menu_hover_background; ?>" class="spicy" >
            </td>
        </tr>
        
        
        <tr>
          <td><?php echo $text_menu_icon_back; ?>:</td>
          <td><input id="UniversumControl_menu_icon_back" type="text" name="UniversumControl_menu_icon_back" value="<?php echo $UniversumControl_menu_icon_back; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_cart_icon_back; ?>:</td>
          <td><input id="UniversumControl_cart_icon_back" type="text" name="UniversumControl_cart_icon_back" value="<?php echo $UniversumControl_cart_icon_back; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_drop_border; ?>:</td>
          <td><input id="UniversumControl_drop_border" type="text" name="UniversumControl_drop_border" value="<?php echo $UniversumControl_drop_border; ?>" class="spicy" >
            </td>
        </tr>
      </table>
      <h2 class="colors"><span><?php echo $UniversumControl_custom_menu_heading; ?></span></h2>
      <p><?php echo $UniversumControl_custom_menu_helper; ?></p>
      <table class="form">
        <tr>
          <td><h3><?php echo $UniversumControl_custom_menu; ?> 1</h3></td>
        </tr>
        <tr>
          <td><p><?php echo $UniversumControl_custom_title; ?> 1</p>
            <br />
            <input id="UniversumControl_custom_menu_1" type="text" name="UniversumControl_custom_menu_1" value="<?php echo $UniversumControl_custom_menu_1; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><p><?php echo $UniversumControl_custom_link; ?> 1</p>
            <br />
            <input id="UniversumControl_custom_link_1" type="text" name="UniversumControl_custom_link_1" value="<?php echo $UniversumControl_custom_link_1; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><p><?php echo $UniversumControl_custom_submenu; ?> 1</p>
            <br />
            <textarea id="UniversumControl_custom_submenu_1" name="UniversumControl_custom_submenu_1" cols="80" rows="8" class="spicy"><?php echo $UniversumControl_custom_submenu_1; ?></textarea></td>
        </tr>
      </table>
      <table class="form">
        <tr>
          <td><h3><?php echo $UniversumControl_custom_menu; ?> 2</h3></td>
        </tr>
        <tr>
          <td><p><?php echo $UniversumControl_custom_title; ?> 2</p>
            <br />
            <input id="UniversumControl_custom_menu_2" type="text" name="UniversumControl_custom_menu_2" value="<?php echo $UniversumControl_custom_menu_2; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><p><?php echo $UniversumControl_custom_link; ?> 2</p>
            <br />
            <input id="UniversumControl_custom_link_2" type="text" name="UniversumControl_custom_link_2" value="<?php echo $UniversumControl_custom_link_2; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><p><?php echo $UniversumControl_custom_submenu; ?> 2</p>
            <br />
            <textarea id="UniversumControl_custom_submenu_2" name="UniversumControl_custom_submenu_2" cols="80" rows="8" class="spicy"><?php echo $UniversumControl_custom_submenu_2; ?></textarea></td>
        </tr>
      </table>
      <table class="form">
        <tr>
          <td><h3><?php echo $UniversumControl_custom_menu; ?> 3</h3></td>
        </tr>
        <tr>
          <td><p><?php echo $UniversumControl_custom_title; ?> 3</p>
            <br />
            <input id="UniversumControl_custom_menu_3" type="text" name="UniversumControl_custom_menu_3" value="<?php echo $UniversumControl_custom_menu_3; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><p><?php echo $UniversumControl_custom_link; ?> 3</p>
            <br />
            <input id="UniversumControl_custom_link_3" type="text" name="UniversumControl_custom_link_3" value="<?php echo $UniversumControl_custom_link_3; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><p><?php echo $UniversumControl_custom_submenu; ?> 3</p>
            <br />
            <textarea id="UniversumControl_custom_submenu_3" name="UniversumControl_custom_submenu_3" cols="80" rows="8" class="spicy"><?php echo $UniversumControl_custom_submenu_3; ?></textarea></td>
        </tr>
      </table>
    </div>
    <div class="htabs-content"  id="tab_footer">
      <h2 class="colors"><span><?php echo $text_footer_settings; ?></span></h2>
      <p><?php echo $text_color_helper; ?></span></p>
      <table class="form">
        <tr>
          <td><?php echo $text_footer_back_color; ?>:</td>
          <td><input id="UniversumControl_footer_bg_color" type="text" name="UniversumControl_footer_bg_color" value="<?php echo $UniversumControl_footer_bg_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_footer_pattern; ?></td>
          <td><select name="UniversumControl_footer_bg_pattern" class="spicy">
              <?php if (isset($UniversumControl_footer_bg_pattern)) {
                    $selected373 = 'selected="selected"';
            ?>
              <option value="pattern0.png" <?php if($UniversumControl_footer_bg_pattern=='pattern0.png'){echo $selected373;} ?>>No pattern</option>
              <option value="pattern1.png" <?php if($UniversumControl_footer_bg_pattern=='pattern1.png'){echo $selected373;} ?>>Pattern 1</option>
              <option value="pattern2.png" <?php if($UniversumControl_footer_bg_pattern=='pattern2.png'){echo $selected373;} ?>>Pattern 2</option>
              <option value="pattern3.png" <?php if($UniversumControl_footer_bg_pattern=='pattern3.png'){echo $selected373;} ?>>Pattern 3</option>
              <option value="pattern4.png" <?php if($UniversumControl_footer_bg_pattern=='pattern4.png'){echo $selected373;} ?>>Pattern 4</option>
              <option value="pattern5.png" <?php if($UniversumControl_footer_bg_pattern=='pattern5.png'){echo $selected373;} ?>>Pattern 5</option>
              <option value="pattern6.png" <?php if($UniversumControl_footer_bg_pattern=='pattern6.png'){echo $selected373;} ?>>Pattern 6</option>
              <option value="pattern7.png" <?php if($UniversumControl_footer_bg_pattern=='pattern7.png'){echo $selected373;} ?>>Pattern 7</option>
              <option value="pattern8.png" <?php if($UniversumControl_footer_bg_pattern=='pattern8.png'){echo $selected373;} ?>>Pattern 8</option>
              <option value="pattern9.png" <?php if($UniversumControl_footer_bg_pattern=='pattern9.png'){echo $selected373;} ?>>Pattern 9</option>
              <option value="pattern10.png" <?php if($UniversumControl_footer_bg_pattern=='pattern10.png'){echo $selected373;} ?>>Pattern 10</option>
              <option value="pattern11.png" <?php if($UniversumControl_footer_bg_pattern=='pattern11.png'){echo $selected373;} ?>>Pattern 11</option>
              <option value="pattern12.png" <?php if($UniversumControl_footer_bg_pattern=='pattern12.png'){echo $selected373;} ?>>Pattern 12</option>
              <option value="pattern13.png" <?php if($UniversumControl_footer_bg_pattern=='pattern13.png'){echo $selected373;} ?>>Pattern 13</option>
              <option value="pattern14.png" <?php if($UniversumControl_footer_bg_pattern=='pattern14.png'){echo $selected373;} ?>>Pattern 14</option>
              <option value="pattern15.png" <?php if($UniversumControl_footer_bg_pattern=='pattern15.png'){echo $selected373;} ?>>Pattern 15</option>
              <option value="pattern16.png" <?php if($UniversumControl_footer_bg_pattern=='pattern16.png'){echo $selected373;} ?>>Pattern 16</option>
              <option value="pattern17.png" <?php if($UniversumControl_footer_bg_pattern=='pattern17.png'){echo $selected373;} ?>>Pattern 17</option>
              <option value="pattern18.png" <?php if($UniversumControl_footer_bg_pattern=='pattern18.png'){echo $selected373;} ?>>Pattern 18</option>
              <option value="pattern19.png" <?php if($UniversumControl_footer_bg_pattern=='pattern19.png'){echo $selected373;} ?>>Pattern 19</option>
              <option value="pattern20.png" <?php if($UniversumControl_footer_bg_pattern=='pattern20.png'){echo $selected373;} ?>>Pattern 20</option>
              <option value="pattern21.png" <?php if($UniversumControl_footer_bg_pattern=='pattern21.png'){echo $selected373;} ?>>Pattern 21</option>
              <option value="pattern22.png" <?php if($UniversumControl_footer_bg_pattern=='pattern22.png'){echo $selected373;} ?>>Pattern 22</option>
              <option value="pattern23.png" <?php if($UniversumControl_footer_bg_pattern=='pattern23.png'){echo $selected373;} ?>>Pattern 23</option>
              <option value="pattern24.png" <?php if($UniversumControl_footer_bg_pattern=='pattern24.png'){echo $selected373;} ?>>Pattern 24</option>
              <option value="pattern25.png" <?php if($UniversumControl_footer_bg_pattern=='pattern25.png'){echo $selected373;} ?>>Pattern 25</option>
              <option value="pattern26.png" <?php if($UniversumControl_footer_bg_pattern=='pattern26.png'){echo $selected373;} ?>>Pattern 26</option>
              <option value="pattern27.png" <?php if($UniversumControl_footer_bg_pattern=='pattern27.png'){echo $selected373;} ?>>Pattern 27</option>
              <option value="pattern28.png" <?php if($UniversumControl_footer_bg_pattern=='pattern28.png'){echo $selected373;} ?>>Pattern 28</option>
              <option value="pattern29.png" <?php if($UniversumControl_footer_bg_pattern=='pattern29.png'){echo $selected373;} ?>>Pattern 29</option>
              <option value="pattern30.gif" <?php if($UniversumControl_footer_bg_pattern=='pattern30.gif'){echo $selected373;} ?>>Pattern 30</option>
              <option value="pattern31.png" <?php if($UniversumControl_footer_bg_pattern=='pattern31.png'){echo $selected373;} ?>>Pattern 31</option>
              <option value="pattern32.png" <?php if($UniversumControl_footer_bg_pattern=='pattern32.png'){echo $selected373;} ?>>Pattern 32</option>
              <option value="pattern33.png" <?php if($UniversumControl_footer_bg_pattern=='pattern33.png'){echo $selected373;} ?>>Pattern 33</option>
              <option value="pattern34.png" <?php if($UniversumControl_footer_bg_pattern=='pattern34.png'){echo $selected373;} ?>>Pattern 34</option>
              <option value="pattern35.png" <?php if($UniversumControl_footer_bg_pattern=='pattern35.png'){echo $selected373;} ?>>Pattern 35</option>
              <option value="pattern36.png" <?php if($UniversumControl_footer_bg_pattern=='pattern36.png'){echo $selected373;} ?>>Pattern 36</option>
              <option value="pattern37.png" <?php if($UniversumControl_footer_bg_pattern=='pattern37.png'){echo $selected373;} ?>>Pattern 37</option>
              <option value="pattern38.png" <?php if($UniversumControl_footer_bg_pattern=='pattern38.png'){echo $selected373;} ?>>Pattern 38</option>
              <option value="pattern39.png" <?php if($UniversumControl_footer_bg_pattern=='pattern39.png'){echo $selected373;} ?>>Pattern 39</option>
              <option value="pattern40.png" <?php if($UniversumControl_footer_bg_pattern=='pattern40.png'){echo $selected373;} ?>>Pattern 40</option>
              <?php } else { ?>
              <option value="pattern0.png" selected="selected">No pattern</option>
              <option value="pattern1.png">Pattern 1</option>
              <option value="pattern2.png">Pattern 2</option>
              <option value="pattern3.png">Pattern 3</option>
              <option value="pattern4.png">Pattern 4</option>
              <option value="pattern5.png">Pattern 5</option>
              <option value="pattern6.png">Pattern 6</option>
              <option value="pattern7.png">Pattern 7</option>
              <option value="pattern8.png">Pattern 8</option>
              <option value="pattern9.png">Pattern 9</option>
              <option value="pattern10.png">Pattern 10</option>
              <option value="pattern11.png">Pattern 11</option>
              <option value="pattern12.png">Pattern 12</option>
              <option value="pattern13.png">Pattern 13</option>
              <option value="pattern14.png">Pattern 14</option>
              <option value="pattern15.png">Pattern 15</option>
              <option value="pattern16.png">Pattern 16</option>
              <option value="pattern17.png">Pattern 17</option>
              <option value="pattern18.png">Pattern 18</option>
              <option value="pattern19.png">Pattern 19</option>
              <option value="pattern20.png">Pattern 20</option>
              <option value="pattern21.png">Pattern 21</option>
              <option value="pattern22.png">Pattern 22</option>
              <option value="pattern23.png">Pattern 23</option>
              <option value="pattern24.png">Pattern 24</option>
              <option value="pattern25.png">Pattern 25</option>
              <option value="pattern26.png">Pattern 26</option>
              <option value="pattern27.png">Pattern 27</option>
              <option value="pattern28.png">Pattern 28</option>
              <option value="pattern29.png">Pattern 29</option>
              <option value="pattern30.gif">Pattern 30</option>
              <option value="pattern31.png">Pattern 31</option>
              <option value="pattern32.png">Pattern 32</option>
              <option value="pattern33.png">Pattern 33</option>
              <option value="pattern34.png">Pattern 34</option>
              <option value="pattern35.png">Pattern 35</option>
              <option value="pattern36.png">Pattern 36</option>
              <option value="pattern37.png">Pattern 37</option>
              <option value="pattern38.png">Pattern 38</option>
              <option value="pattern39.png">Pattern 39</option>
              <option value="pattern40.png">Pattern 40</option>
              <?php } ?>
            </select>
            </td>
        </tr>
        <tr>
          <td><?php echo $text_pattern_samples; ?></td>
          <td><span class="preview prev1"><b>1</b></span> <span class="preview prev2"><b>2</b></span> <span class="preview prev3"><b>3</b></span> <span class="preview prev4"><b>4</b></span> <span class="preview prev5"><b>5</b></span> <span class="preview prev6"><b>6</b></span> <span class="preview prev7"><b>7</b></span> <span class="preview prev8"><b>8</b></span> <span class="preview prev9"><b>9</b></span> <span class="preview prev10"><b>10</b></span> <span class="preview prev11"><b>11</b></span> <span class="preview prev12"><b>12</b></span> <span class="preview prev13"><b>13</b></span> <span class="preview prev14"><b>14</b></span> <span class="preview prev15"><b>15</b></span> <span class="preview prev16"><b>16</b></span> <span class="preview prev17"><b>17</b></span> <span class="preview prev18"><b>18</b></span> <span class="preview prev19"><b>19</b></span> <span class="preview prev20"><b>20</b></span> <span class="preview prev21"><b>21</b></span> <span class="preview prev22"><b>22</b></span> <span class="preview prev23"><b>23</b></span> <span class="preview prev24"><b>24</b></span> <span class="preview prev25"><b>25</b></span> <span class="preview prev26"><b>26</b></span> <span class="preview prev27"><b>27</b></span> <span class="preview prev28"><b>28</b></span> <span class="preview prev29"><b>29</b></span> <span class="preview prev30"><b>30</b></span> <span class="preview prev31"><b>31</b></span> <span class="preview prev32"><b>32</b></span> <span class="preview prev33"><b>33</b></span> <span class="preview prev34"><b>34</b></span> <span class="preview prev35"><b>35</b></span> <span class="preview prev36"><b>36</b></span> <span class="preview prev37"><b>37</b></span> <span class="preview prev38"><b>38</b></span> <span class="preview prev39"><b>39</b></span> <span class="preview prev40"><b>40</b></span></td>
        </tr>
        <tr>
          <td><?php echo $text_footer_titles_color; ?>:</td>
          <td><input id="UniversumControl_footer_link_color" type="text" name="UniversumControl_footer_link_color" value="<?php echo $UniversumControl_footer_link_color; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_footer_borders_color; ?>:</td>
          <td><input id="UniversumControl_footer_link_border" type="text" name="UniversumControl_footer_link_border" value="<?php echo $UniversumControl_footer_link_border; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_pre_footer_top_border_color; ?>:</td>
          <td><input id="UniversumControl_prefooter_border_top" type="text" name="UniversumControl_prefooter_border_top" value="<?php echo $UniversumControl_prefooter_border_top; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_copyright_back_color; ?>:</td>
          <td><input id="UniversumControl_powered_bg" type="text" name="UniversumControl_powered_bg" value="<?php echo $UniversumControl_powered_bg; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_copyright_text_color; ?>:</td>
          <td><input id="UniversumControl_powered_text" type="text" name="UniversumControl_powered_text" value="<?php echo $UniversumControl_powered_text; ?>" class="spicy" >
            </td>
        </tr>
        <tr>
          <td><?php echo $text_footer_time; ?>:</td>
          <td><input id="UniversumControl_footer_time" type="text" name="UniversumControl_footer_time" value="<?php echo $UniversumControl_footer_time ; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><?php echo $text_footer_address; ?>:</td>
          <td><input id="UniversumControl_footer_address" type="text" name="UniversumControl_footer_address" value="<?php echo $UniversumControl_footer_address ; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><?php echo $text_footer_phone; ?>:</td>
          <td><input id="UniversumControl_footer_phone" type="text" name="UniversumControl_footer_phone" value="<?php echo $UniversumControl_footer_phone ; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><?php echo $text_footer_fax; ?>:</td>
          <td><input id="UniversumControl_footer_fax" type="text" name="UniversumControl_footer_fax" value="<?php echo $UniversumControl_footer_fax ; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><?php echo $text_footer_mail; ?>:</td>
          <td><input id="UniversumControl_footer_mail" type="text" name="UniversumControl_footer_mail" value="<?php echo $UniversumControl_footer_mail ; ?>" class="spicy" ></td>
        </tr>
        <tr>
          <td><?php echo $text_footer_seals; ?>:</td>
          <td><textarea id="UniversumControl_seals" name="UniversumControl_seals" cols="140" rows="8" class="spicy"><?php echo $UniversumControl_seals; ?></textarea></td>
        </tr>
        <tr>
          <td><?php echo $text_footer_copyright; ?>:</td>
          <td><textarea id="UniversumControl_copyright" name="UniversumControl_copyright" cols="140" rows="4" class="spicy"><?php echo $UniversumControl_copyright; ?></textarea></td>
        </tr>
      </table>
    </div>
    <div class="htabs-content"  id="tab_fonts">
      <h2 class="fonts"><span><?php echo $text_font_settings; ?></span></h2>
      <table class="form">
        <tr>
          <td><?php echo $text_body_font; ?></td>
          <td><select name="UniversumControl_body_font" class="spicy">
              <?php if (isset($UniversumControl_body_font)) {
              $selected = 'selected="selected"';
              ?>
              <option value="Arial" <?php if($UniversumControl_body_font=='Arial'){echo $selected;} ?>>Arial</option>
              <option value="Verdana" <?php if($UniversumControl_body_font=='Verdana'){echo $selected;} ?>>Verdana</option>
              <option value="Helvetica" <?php if($UniversumControl_body_font=='Helvetica'){echo $selected;} ?>>Helvetica</option>
              <option value="Lucida Grande" <?php if($UniversumControl_body_font=='Lucida Grande'){echo $selected;} ?>>Lucida Grande</option>
              <option value="Trebuchet MS" <?php if($UniversumControl_body_font=='Trebuchet MS'){echo $selected;} ?>>Trebuchet MS</option>
              <option value="Times New Roman" <?php if($UniversumControl_body_font=='Times New Roman'){echo $selected;} ?>>Times New Roman</option>
              <option value="Tahoma" <?php if($UniversumControl_body_font=='Tahoma'){echo $selected;} ?>>Tahoma</option>
              <option value="Georgia" <?php if($UniversumControl_body_font=='Georgia'){echo $selected;} ?>>Georgia</option>
              <?php } else { ?>
              <option value="Arial">Arial</option>
              <option value="Verdana">Verdana</option>
              <option value="Helvetica">Helvetica</option>
              <option value="Lucida Grande">Lucida Grande</option>
              <option value="Trebuchet MS" selected="selected">Trebuchet MS</option>
              <option value="Times New Roman">Times New Roman</option>
              <option value="Tahoma">Tahoma</option>
              <option value="Georgia">Georgia</option>
              <?php } ?>
            </select>
            <span class="default_value"><?php echo $text_default_value; ?>: Trebuchet MS</span></td>
        </tr>
        <tr>
          <td><?php echo $text_headings_font; ?></td>
          <td><select name="UniversumControl_headings_font" class="spicy">
              <?php if (isset($UniversumControl_headings_font)) {
                	$selected2 = 'selected="selected"';
            ?>
              <option value="Arial" <?php if($UniversumControl_headings_font=='Arial'){echo $selected2;} ?>>Arial</option>
              <option value="Aclonica" <?php if($UniversumControl_headings_font=='Aclonica'){echo $selected2;} ?>>Aclonica</option>
              <option value="Allan" <?php if($UniversumControl_headings_font=='Allan'){echo $selected2;} ?>>Allan</option>
              <option value="Annie+Use+Your+Telescope" <?php if($UniversumControl_headings_font=='Annie+Use+Your+Telescope'){echo $selected2;} ?>>Annie Use Your Telescope</option>
              <option value="Anonymous+Pro" <?php if($UniversumControl_headings_font=='Anonymous+Pro'){echo $selected2;} ?>>Anonymous Pro</option>
              <option value="Allerta+Stencil" <?php if($UniversumControl_headings_font=='Allerta+Stencil'){echo $selected2;} ?>>Allerta Stencil</option>
              <option value="Allerta" <?php if($UniversumControl_headings_font=='Allerta'){echo $selected2;} ?>>Allerta</option>
              <option value="Amaranth" <?php if($UniversumControl_headings_font=='Amaranth'){echo $selected2;} ?>>Amaranth</option>
              <option value="Anton" <?php if($UniversumControl_headings_font=='Anton'){echo $selected2;} ?>>Anton</option>
              <option value="Architects+Daughter" <?php if($UniversumControl_headings_font=='Architects+Daughter'){echo $selected2;} ?>>Architects Daughter</option>
              <option value="Arimo" <?php if($UniversumControl_headings_font=='Arimo'){echo $selected2;} ?>>Arimo</option>
              <option value="Artifika" <?php if($UniversumControl_headings_font=='Artifika'){echo $selected2;} ?>>Artifika</option>
              <option value="Arvo" <?php if($UniversumControl_headings_font=='Arvo'){echo $selected2;} ?>>Arvo</option>
              <option value="Asset" <?php if($UniversumControl_headings_font=='Asset'){echo $selected2;} ?>>Asset</option>
              <option value="Astloch" <?php if($UniversumControl_headings_font=='Astloch'){echo $selected2;} ?>>Astloch</option>
              <option value="Bangers" <?php if($UniversumControl_headings_font=='Bangers'){echo $selected2;} ?>>Bangers</option>
              <option value="Bentham" <?php if($UniversumControl_headings_font=='Bentham'){echo $selected2;} ?>>Bentham</option>
              <option value="Bevan" <?php if($UniversumControl_headings_font=='Bevan'){echo $selected2;} ?>>Bevan</option>
              <option value="Bigshot+One" <?php if($UniversumControl_headings_font=='Bigshot+One'){echo $selected2;} ?>>Bigshot One</option>
              <option value="Bowlby+One" <?php if($UniversumControl_headings_font=='Bowlby+One'){echo $selected2;} ?>>Bowlby One</option>
              <option value="Bowlby+One+SC" <?php if($UniversumControl_headings_font=='Bowlby+One+SC'){echo $selected2;} ?>>Bowlby One SC</option>
              <option value="Brawler" <?php if($UniversumControl_headings_font=='Brawler'){echo $selected2;} ?>>Brawler </option>
              <option value="Buda" <?php if($UniversumControl_headings_font=='Buda'){echo $selected2;} ?>>Buda</option>
              <option value="Cabin" <?php if($UniversumControl_headings_font=='Cabin'){echo $selected2;} ?>>Cabin</option>
              <option value="Calligraffitti" <?php if($UniversumControl_headings_font=='Calligraffitti'){echo $selected2;} ?>>Calligraffitti</option>
              <option value="Candal" <?php if($UniversumControl_headings_font=='Candal'){echo $selected2;} ?>>Candal</option>
              <option value="Cantarell" <?php if($UniversumControl_headings_font=='Cantarell'){echo $selected2;} ?>>Cantarell</option>
              <option value="Cardo" <?php if($UniversumControl_headings_font=='Cardo'){echo $selected2;} ?>>Cardo</option>
              <option value="Carter+One" <?php if($UniversumControl_headings_font=='Carter+One'){echo $selected2;} ?>>Carter One</option>
              <option value="Caudex" <?php if($UniversumControl_headings_font=='Caudex'){echo $selected2;} ?>>Caudex</option>
              <option value="Cedarville+Cursive" <?php if($UniversumControl_headings_font=='Cedarville+Cursive'){echo $selected2;} ?>>Cedarville Cursive</option>
              <option value="Cherry+Cream+Soda" <?php if($UniversumControl_headings_font=='Cherry+Cream+Soda'){echo $selected2;} ?>>Cherry Cream Soda</option>
              <option value="Chewy" <?php if($UniversumControl_headings_font=='Chewy'){echo $selected2;} ?>>Chewy</option>
              <option value="Coda" <?php if($UniversumControl_headings_font=='Coda'){echo $selected2;} ?>>Coda</option>
              <option value="Coming+Soon" <?php if($UniversumControl_headings_font=='Coming+Soon'){echo $selected2;} ?>>Coming Soon</option>
              <option value="Copse" <?php if($UniversumControl_headings_font=='Copse'){echo $selected2;} ?>>Copse</option>
              <option value="Corben" <?php if($UniversumControl_headings_font=='Corben'){echo $selected2;} ?>>Corben</option>
              <option value="Cousine" <?php if($UniversumControl_headings_font=='Cousine'){echo $selected2;} ?>>Cousine</option>
              <option value="Covered+By+Your+Grace" <?php if($UniversumControl_headings_font=='Covered+By+Your+Grace'){echo $selected2;} ?>>Covered By Your Grace</option>
              <option value="Crafty+Girls" <?php if($UniversumControl_headings_font=='Crafty+Girls'){echo $selected2;} ?>>Crafty Girls</option>
              <option value="Crimson+Text" <?php if($UniversumControl_headings_font=='Crimson+Text'){echo $selected2;} ?>>Crimson Text</option>
              <option value="Crushed" <?php if($UniversumControl_headings_font=='Crushed'){echo $selected2;} ?>>Crushed</option>
              <option value="Cuprum" <?php if($UniversumControl_headings_font=='Cuprum'){echo $selected2;} ?>>Cuprum</option>
              <option value="Damion" <?php if($UniversumControl_headings_font=='Damion'){echo $selected2;} ?>>Damion</option>
              <option value="Dancing+Script" <?php if($UniversumControl_headings_font=='Dancing+Script'){echo $selected2;} ?>>Dancing Script</option>
              <option value="Dawning+of+a+New+Day" <?php if($UniversumControl_headings_font=='Dawning+of+a+New+Day'){echo $selected2;} ?>>Dawning of a New Day</option>
              <option value="Didact+Gothic" <?php if($UniversumControl_headings_font=='Didact+Gothic'){echo $selected2;} ?>>Didact Gothic</option>
              <option value="Droid+Sans" <?php if($UniversumControl_headings_font=='Droid+Sans'){echo $selected2;} ?>>Droid Sans</option>
              <option value="Droid+Sans+Mono" <?php if($UniversumControl_headings_font=='Droid+Sans+Mono'){echo $selected2;} ?>>Droid Sans Mono</option>
              <option value="Droid+Serif" <?php if($UniversumControl_headings_font=='Droid+Serif'){echo $selected2;} ?>>Droid Serif</option>
              <option value="EB+Garamond" <?php if($UniversumControl_headings_font=='EB+Garamond'){echo $selected2;} ?>>EB Garamond</option>
              <option value="Expletus+Sans" <?php if($UniversumControl_headings_font=='Expletus+Sans'){echo $selected2;} ?>>Expletus Sans</option>
              <option value="Fontdiner+Swanky" <?php if($UniversumControl_headings_font=='Fontdiner+Swanky'){echo $selected2;} ?>>Fontdiner Swanky</option>
              <option value="Forum" <?php if($UniversumControl_headings_font=='Forum'){echo $selected2;} ?>>Forum</option>
              <option value="Francois+One" <?php if($UniversumControl_headings_font=='Francois+One'){echo $selected2;} ?>>Francois One</option>
              <option value="Federo" <?php if($UniversumControl_headings_font=='Federo'){echo $selected2;} ?>>Federo</option>
              <option value="Geo" <?php if($UniversumControl_headings_font=='Geo'){echo $selected2;} ?>>Geo</option>
              <option value="Give+You+Glory" <?php if($UniversumControl_headings_font=='Give+You+Glory'){echo $selected2;} ?>>Give You Glory</option>
              <option value="Goblin+One" <?php if($UniversumControl_headings_font=='Goblin+One'){echo $selected2;} ?>>Goblin One</option>
              <option value="Goudy+Bookletter+1911" <?php if($UniversumControl_headings_font=='Goudy+Bookletter+1911'){echo $selected2;} ?>>Goudy Bookletter 1911</option>
              <option value="Gravitas+One" <?php if($UniversumControl_headings_font=='Gravitas+One'){echo $selected2;} ?>>Gravitas One</option>
              <option value="Gruppo" <?php if($UniversumControl_headings_font=='Gruppo'){echo $selected2;} ?>>Gruppo</option>
              <option value="Hammersmith+One" <?php if($UniversumControl_headings_font=='Hammersmith+One'){echo $selected2;} ?>>Hammersmith One</option>
              <option value="Holtwood+One+SC" <?php if($UniversumControl_headings_font=='Holtwood+One+SC'){echo $selected2;} ?>>Holtwood One SC</option>
              <option value="Homemade+Apple" <?php if($UniversumControl_headings_font=='Homemade+Apple'){echo $selected2;} ?>>Homemade Apple</option>
              <option value="Inconsolata" <?php if($UniversumControl_headings_font=='Inconsolata'){echo $selected2;} ?>>Inconsolata</option>
              <option value="Indie+Flower" <?php if($UniversumControl_headings_font=='Indie+Flower'){echo $selected2;} ?>>Indie Flower</option>
              <option value="IM+Fell+DW+Pica" <?php if($UniversumControl_headings_font=='IM+Fell+DW+Pica'){echo $selected2;} ?>>IM Fell DW Pica</option>
              <option value="IM+Fell+DW+Pica+SC" <?php if($UniversumControl_headings_font=='IM+Fell+DW+Pica+SC'){echo $selected2;} ?>>IM Fell DW Pica SC</option>
              <option value="IM+Fell+Double+Pica" <?php if($UniversumControl_headings_font=='IM+Fell+Double+Pica'){echo $selected2;} ?>>IM Fell Double Pica</option>
              <option value="IM+Fell+Double+Pica+SC" <?php if($UniversumControl_headings_font=='IM+Fell+Double+Pica+SC'){echo $selected2;} ?>>IM Fell Double Pica SC</option>
              <option value="IM+Fell+English" <?php if($UniversumControl_headings_font=='IM+Fell+English'){echo $selected2;} ?>>IM Fell English</option>
              <option value="IM+Fell+English+SC" <?php if($UniversumControl_headings_font=='IM+Fell+English+SC'){echo $selected2;} ?>>IM Fell English SC</option>
              <option value="IM+Fell+French+Canon" <?php if($UniversumControl_headings_font=='IM+Fell+French+Canon'){echo $selected2;} ?>>IM Fell French Canon</option>
              <option value="IM+Fell+French+Canon+SC" <?php if($UniversumControl_headings_font=='IM+Fell+French+Canon+SC'){echo $selected2;} ?>>IM Fell French Canon SC</option>
              <option value="IM+Fell+Great+Primer" <?php if($UniversumControl_headings_font=='IM+Fell+Great+Primer'){echo $selected2;} ?>>IM Fell Great Primer</option>
              <option value="IM+Fell+Great+Primer+SC" <?php if($UniversumControl_headings_font=='IM+Fell+Great+Primer+SC'){echo $selected2;} ?>>IM Fell Great Primer SC</option>
              <option value="Irish+Grover" <?php if($UniversumControl_headings_font=='Irish+Grover'){echo $selected2;} ?>>Irish Grover</option>
              <option value="Irish+Growler" <?php if($UniversumControl_headings_font=='Irish+Growler'){echo $selected2;} ?>>Irish Growler</option>
              <option value="Istok+Web" <?php if($UniversumControl_headings_font=='Istok+Web'){echo $selected2;} ?>>Istok Web</option>
              <option value="Josefin+Sans" <?php if($UniversumControl_headings_font=='Josefin+Sans'){echo $selected2;} ?>>Josefin Sans Regular 400</option>
              <option value="Josefin+Slab" <?php if($UniversumControl_headings_font=='Josefin+Slab'){echo $selected2;} ?>>Josefin Slab Regular 400</option>
              <option value="Judson" <?php if($UniversumControl_headings_font=='Judson'){echo $selected2;} ?>>Judson</option>
              <option value="Jura" <?php if($UniversumControl_headings_font=='Jura'){echo $selected2;} ?>> Jura Regular</option>
              <option value="Just+Another+Hand" <?php if($UniversumControl_headings_font=='Just+Another+Hand'){echo $selected2;} ?>>Just Another Hand</option>
              <option value="Just+Me+Again+Down+Here" <?php if($UniversumControl_headings_font=='Just+Me+Again+Down+Here'){echo $selected2;} ?>>Just Me Again Down Here</option>
              <option value="Kameron" <?php if($UniversumControl_headings_font=='Kameron'){echo $selected2;} ?>>Kameron</option>
              <option value="Kenia" <?php if($UniversumControl_headings_font=='Kenia'){echo $selected2;} ?>>Kenia</option>
              <option value="Kranky" <?php if($UniversumControl_headings_font=='Kranky'){echo $selected2;} ?>>Kranky</option>
              <option value="Kreon" <?php if($UniversumControl_headings_font=='Kreon'){echo $selected2;} ?>>Kreon</option>
              <option value="Kristi" <?php if($UniversumControl_headings_font=='Kristi'){echo $selected2;} ?>>Kristi</option>
              <option value="La+Belle+Aurore" <?php if($UniversumControl_headings_font=='La+Belle+Aurore'){echo $selected2;} ?>>La Belle Aurore</option>
              <option value="Lato" <?php if($UniversumControl_headings_font=='Lato'){echo $selected2;} ?>>Lato</option>
              <option value="League+Script" <?php if($UniversumControl_headings_font=='League+Script'){echo $selected2;} ?>>League Script</option>
              <option value="Lekton" <?php if($UniversumControl_headings_font=='Lekton'){echo $selected2;} ?>> Lekton </option>
              <option value="Limelight" <?php if($UniversumControl_headings_font=='Limelight'){echo $selected2;} ?>> Limelight </option>
              <option value="Lobster" <?php if($UniversumControl_headings_font=='Lobster'){echo $selected2;} ?>>Lobster</option>
              <option value="Lobster+Two" <?php if($UniversumControl_headings_font=='Lobster+Two'){echo $selected2;} ?>>Lobster Two</option>
              <option value="Lora" <?php if($UniversumControl_headings_font=='Lora'){echo $selected2;} ?>>Lora</option>
              <option value="Love+Ya+Like+A+Sister" <?php if($UniversumControl_headings_font=='Love+Ya+Like+A+Sister'){echo $selected2;} ?>>Love Ya Like A Sister</option>
              <option value="Loved+by+the+King" <?php if($UniversumControl_headings_font=='Loved+by+the+King'){echo $selected2;} ?>>Loved by the King</option>
              <option value="Luckiest+Guy" <?php if($UniversumControl_headings_font=='Luckiest+Guy'){echo $selected2;} ?>>Luckiest Guy</option>
              <option value="Maiden+Orange" <?php if($UniversumControl_headings_font=='Maiden+Orange'){echo $selected2;} ?>>Maiden Orange</option>
              <option value="Mako" <?php if($UniversumControl_headings_font=='Mako'){echo $selected2;} ?>>Mako</option>
              <option value="Maven+Pro" <?php if($UniversumControl_headings_font=='Maven+Pro'){echo $selected2;} ?>> Maven Pro</option>
              <option value="Meddon" <?php if($UniversumControl_headings_font=='Meddon'){echo $selected2;} ?>>Meddon</option>
              <option value="MedievalSharp" <?php if($UniversumControl_headings_font=='MedievalSharp'){echo $selected2;} ?>>MedievalSharp</option>
              <option value="Megrim" <?php if($UniversumControl_headings_font=='Megrim'){echo $selected2;} ?>>Megrim</option>
              <option value="Merriweather" <?php if($UniversumControl_headings_font=='Merriweather'){echo $selected2;} ?>>Merriweather</option>
              <option value="Metrophobic" <?php if($UniversumControl_headings_font=='Metrophobic'){echo $selected2;} ?>>Metrophobic</option>
              <option value="Michroma" <?php if($UniversumControl_headings_font=='Michroma'){echo $selected2;} ?>>Michroma</option>
              <option value="Miltonian+Tattoo" <?php if($UniversumControl_headings_font=='Miltonian+Tattoo'){echo $selected2;} ?>>Miltonian Tattoo</option>
              <option value="Miltonian" <?php if($UniversumControl_headings_font=='Miltonian'){echo $selected2;} ?>>Miltonian</option>
              <option value="Modern+Antiqua" <?php if($UniversumControl_headings_font=='Modern+Antiqua'){echo $selected2;} ?>>Modern Antiqua</option>
              <option value="Monofett" <?php if($UniversumControl_headings_font=='Monofett'){echo $selected2;} ?>>Monofett</option>
              <option value="Molengo" <?php if($UniversumControl_headings_font=='Molengo'){echo $selected2;} ?>>Molengo</option>
              <option value="Mountains+of+Christmas" <?php if($UniversumControl_headings_font=='Mountains+of+Christmas'){echo $selected2;} ?>>Mountains of Christmas</option>
              <option value="Muli" <?php if($UniversumControl_headings_font=='Muli'){echo $selected2;} ?>>Muli Regular</option>
              <option value="Neucha" <?php if($UniversumControl_headings_font=='Neucha'){echo $selected2;} ?>>Neucha</option>
              <option value="Neuton" <?php if($UniversumControl_headings_font=='Neuton'){echo $selected2;} ?>>Neuton</option>
              <option value="News+Cycle" <?php if($UniversumControl_headings_font=='News+Cycle'){echo $selected2;} ?>>News Cycle</option>
              <option value="Nixie+One" <?php if($UniversumControl_headings_font=='Nixie+One'){echo $selected2;} ?>>Nixie One</option>
              <option value="Nobile" <?php if($UniversumControl_headings_font=='Nobile'){echo $selected2;} ?>>Nobile</option>
              <option value="Nova+Cut" <?php if($UniversumControl_headings_font=='Nova+Cut'){echo $selected2;} ?>>Nova Cut</option>
              <option value="Nova+Flat" <?php if($UniversumControl_headings_font=='Nova+Flat'){echo $selected2;} ?>>Nova Flat</option>
              <option value="Nova+Mono" <?php if($UniversumControl_headings_font=='Nova+Mono'){echo $selected2;} ?>>Nova Mono</option>
              <option value="Nova+Oval" <?php if($UniversumControl_headings_font=='Nova+Oval'){echo $selected2;} ?>>Nova Oval</option>
              <option value="Nova+Round" <?php if($UniversumControl_headings_font=='Nova+Round'){echo $selected2;} ?>>Nova Round</option>
              <option value="Nova+Script" <?php if($UniversumControl_headings_font=='Nova+Script'){echo $selected2;} ?>>Nova Script</option>
              <option value="Nova+Slim" <?php if($UniversumControl_headings_font=='Nova+Slim'){echo $selected2;} ?>>Nova Slim</option>
              <option value="Nova+Square" <?php if($UniversumControl_headings_font=='Nova+Square'){echo $selected2;} ?>>Nova Square</option>
              <option value="Nunito" <?php if($UniversumControl_headings_font=='Nunito'){echo $selected2;} ?>> Nunito Regular</option>
              <option value="OFL+Sorts+Mill+Goudy+TT" <?php if($UniversumControl_headings_font=='OFL+Sorts+Mill+Goudy+TT'){echo $selected2;} ?>>OFL Sorts Mill Goudy TT</option>
              <option value="Old+Standard+TT" <?php if($UniversumControl_headings_font=='Old+Standard+TT'){echo $selected2;} ?>>Old Standard TT</option>
              <option value="Open+Sans" <?php if($UniversumControl_headings_font=='Open+Sans'){echo $selected2;} ?>>Open Sans regular</option>
              <option value="Open+Sans+Condensed" <?php if($UniversumControl_headings_font=='Open+Sans+Condensed'){echo $selected2;} ?>>Open Sans Condensed</option>
              <option value="Orbitron" <?php if($UniversumControl_headings_font=='Orbitron'){echo $selected2;} ?>>Orbitron Regular (400)</option>
              <option value="Oswald" <?php if($UniversumControl_headings_font=='Oswald'){echo $selected2;} ?>>Oswald</option>
              <option value="Over+the+Rainbow" <?php if($UniversumControl_headings_font=='Over+the+Rainbow'){echo $selected2;} ?>>Over the Rainbow</option>
              <option value="Reenie+Beanie" <?php if($UniversumControl_headings_font=='Reenie+Beanie'){echo $selected2;} ?>>Reenie Beanie</option>
              <option value="Pacifico" <?php if($UniversumControl_headings_font=='Pacifico'){echo $selected2;} ?>>Pacifico</option>
              <option value="Patrick+Hand" <?php if($UniversumControl_headings_font=='Patrick+Hand'){echo $selected2;} ?>>Patrick Hand</option>
              <option value="Paytone+One" <?php if($UniversumControl_headings_font=='Paytone+One'){echo $selected2;} ?>>Paytone One</option>
              <option value="Permanent+Marker" <?php if($UniversumControl_headings_font=='Permanent+Marker'){echo $selected2;} ?>>Permanent Marker</option>
              <option value="Philosopher" <?php if($UniversumControl_headings_font=='Philosopher'){echo $selected2;} ?>>Philosopher</option>
              <option value="Play" <?php if($UniversumControl_headings_font=='Play'){echo $selected2;} ?>>Play</option>
              <option value="Playfair+Display" <?php if($UniversumControl_headings_font=='Playfair+Display'){echo $selected2;} ?>> Playfair Display </option>
              <option value="Podkova" <?php if($UniversumControl_headings_font=='Podkova'){echo $selected2;} ?>> Podkova </option>
              <option value="PT+Sans" <?php if($UniversumControl_headings_font=='PT+Sans'){echo $selected2;} ?>>PT Sans</option>
              <option value="PT+Sans+Narrow" <?php if($UniversumControl_headings_font=='PT+Sans+Narrow'){echo $selected2;} ?>>PT Sans Narrow</option>
              <option value="PT+Serif" <?php if($UniversumControl_headings_font=='PT+Serif'){echo $selected2;} ?>>PT Serif</option>
              <option value="Puritan" <?php if($UniversumControl_headings_font=='Puritan'){echo $selected2;} ?>>Puritan</option>
              <option value="Quattrocento" <?php if($UniversumControl_headings_font=='Quattrocento'){echo $selected2;} ?>>Quattrocento</option>
              <option value="Quattrocento+Sans" <?php if($UniversumControl_headings_font=='Quattrocento+Sans'){echo $selected2;} ?>>Quattrocento Sans</option>
              <option value="Radley" <?php if($UniversumControl_headings_font=='Radley'){echo $selected2;} ?>>Radley</option>
              <option value="Raleway" <?php if($UniversumControl_headings_font=='Raleway'){echo $selected2;} ?>>Raleway</option>
              <option value="Redressed" <?php if($UniversumControl_headings_font=='Redressed'){echo $selected2;} ?>>Redressed</option>
              <option value="Rock+Salt" <?php if($UniversumControl_headings_font=='Rock+Salt'){echo $selected2;} ?>>Rock Salt</option>
              <option value="Rokkitt" <?php if($UniversumControl_headings_font=='Rokkitt'){echo $selected2;} ?>>Rokkitt</option>
              <option value="Ruslan+Display" <?php if($UniversumControl_headings_font=='Ruslan+Display'){echo $selected2;} ?>>Ruslan Display</option>
              <option value="Schoolbell" <?php if($UniversumControl_headings_font=='Schoolbell'){echo $selected2;} ?>>Schoolbell</option>
              <option value="Shadows+Into+Light" <?php if($UniversumControl_headings_font=='Shadows+Into+Light'){echo $selected2;} ?>>Shadows Into Light</option>
              <option value="Shanti" <?php if($UniversumControl_headings_font=='Shanti'){echo $selected2;} ?>>Shanti</option>
              <option value="Sigmar+One" <?php if($UniversumControl_headings_font=='Sigmar+One'){echo $selected2;} ?>>Sigmar One</option>
              <option value="Six+Caps" <?php if($UniversumControl_headings_font=='Six+Caps'){echo $selected2;} ?>>Six Caps</option>
              <option value="Slackey" <?php if($UniversumControl_headings_font=='Slackey'){echo $selected2;} ?>>Slackey</option>
              <option value="Smythe" <?php if($UniversumControl_headings_font=='Smythe'){echo $selected2;} ?>>Smythe</option>
              <option value="Sniglet" <?php if($UniversumControl_headings_font=='Sniglet'){echo $selected2;} ?>>Sniglet</option>
              <option value="Special+Elite" <?php if($UniversumControl_headings_font=='Special+Elite'){echo $selected2;} ?>>Special Elite</option>
              <option value="Stardos+Stencil" <?php if($UniversumControl_headings_font=='Stardos+Stencil'){echo $selected2;} ?>>Stardos Stencil</option>
              <option value="Sue+Ellen+Francisco" <?php if($UniversumControl_headings_font=='Sue+Ellen+Francisco'){echo $selected2;} ?>>Sue Ellen Francisco</option>
              <option value="Sunshiney" <?php if($UniversumControl_headings_font=='Sunshiney'){echo $selected2;} ?>>Sunshiney</option>
              <option value="Swanky+and+Moo+Moo" <?php if($UniversumControl_headings_font=='Swanky+and+Moo+Moo'){echo $selected2;} ?>>Swanky and Moo Moo</option>
              <option value="Syncopate" <?php if($UniversumControl_headings_font=='Syncopate'){echo $selected2;} ?>>Syncopate</option>
              <option value="Tangerine" <?php if($UniversumControl_headings_font=='Tangerine'){echo $selected2;} ?>>Tangerine</option>
              <option value="Tenor+Sans" <?php if($UniversumControl_headings_font=='Tenor+Sans'){echo $selected2;} ?>> Tenor Sans </option>
              <option value="Terminal+Dosis+Light" <?php if($UniversumControl_headings_font=='Terminal+Dosis+Light'){echo $selected2;} ?>>Terminal Dosis Light</option>
              <option value="The+Girl+Next+Door" <?php if($UniversumControl_headings_font=='The+Girl+Next+Door'){echo $selected2;} ?>>The Girl Next Door</option>
              <option value="Tinos" <?php if($UniversumControl_headings_font=='Tinos'){echo $selected2;} ?>>Tinos</option>
              <option value="Ubuntu+Condensed" <?php if($UniversumControl_headings_font=='Ubuntu+Condensed'){echo $selected2;} ?>>Ubuntu Condensed</option>
              <option value="Ultra" <?php if($UniversumControl_headings_font=='Ultra'){echo $selected2;} ?>>Ultra</option>
              <option value="Unkempt" <?php if($UniversumControl_headings_font=='Unkempt'){echo $selected2;} ?>>Unkempt</option>
              <option value="UnifrakturCook:bold" <?php if($UniversumControl_headings_font=='UnifrakturCook:bold'){echo $selected2;} ?>>UnifrakturCook</option>
              <option value="UnifrakturMaguntia" <?php if($UniversumControl_headings_font=='UnifrakturMaguntia'){echo $selected2;} ?>>UnifrakturMaguntia</option>
              <option value="Varela" <?php if($UniversumControl_headings_font=='Varela'){echo $selected2;} ?>>Varela</option>
              <option value="Varela+Round" <?php if($UniversumControl_headings_font=='Varela+Round'){echo $selected2;} ?>>Varela Round</option>
              <option value="Vibur" <?php if($UniversumControl_headings_font=='Vibur'){echo $selected2;} ?>>Vibur</option>
              <option value="Vollkorn" <?php if($UniversumControl_headings_font=='Vollkorn'){echo $selected2;} ?>>Vollkorn</option>
              <option value="Waiting+for+the+Sunrise" <?php if($UniversumControl_headings_font=='Waiting+for+the+Sunrise'){echo $selected2;} ?>>Waiting for the Sunrise</option>
              <option value="Wallpoet" <?php if($UniversumControl_headings_font=='Wallpoet'){echo $selected2;} ?>>Wallpoet</option>
              <option value="Walter+Turncoat" <?php if($UniversumControl_headings_font=='Walter+Turncoat'){echo $selected2;} ?>>Walter Turncoat</option>
              <option value="Wire+One" <?php if($UniversumControl_headings_font=='Wire+One'){echo $selected2;} ?>>Wire One</option>
              <option value="Yanone+Kaffeesatz" <?php if($UniversumControl_headings_font=='Yanone+Kaffeesatz'){echo $selected2;} ?>>Yanone Kaffeesatz</option>
              <option value="Yeseva+One" <?php if($UniversumControl_headings_font=='Yeseva+One'){echo $selected2;} ?>>Yeseva One</option>
              <option value="Yellowtail" <?php if($UniversumControl_headings_font=='Yellowtail'){echo $selected2;} ?>>Yellowtail</option>
              <option value="Zeyada" <?php if($UniversumControl_headings_font=='Zeyada'){echo $selected2;} ?>>Zeyada</option>
              <option value="Rochester" <?php if($UniversumControl_headings_font=='Rochester'){echo $selected2;} ?>>Rochester</option>
              <?php } else { ?>
              <option value="Arial">Arial</option>
              <option value="Aclonica">Aclonica</option>
              <option value="Allan">Allan</option>
              <option value="Annie+Use+Your+Telescope">Annie Use Your Telescope</option>
              <option value="Anonymous+Pro">Anonymous Pro</option>
              <option value="Allerta+Stencil">Allerta Stencil</option>
              <option value="Allerta">Allerta</option>
              <option value="Amaranth">Amaranth</option>
              <option value="Anton">Anton</option>
              <option value="Architects+Daughter">Architects Daughter</option>
              <option value="Arimo">Arimo</option>
              <option value="Artifika">Artifika</option>
              <option value="Arvo">Arvo</option>
              <option value="Asset">Asset</option>
              <option value="Astloch">Astloch</option>
              <option value="Bangers">Bangers</option>
              <option value="Bentham">Bentham</option>
              <option value="Bevan">Bevan</option>
              <option value="Bigshot+One">Bigshot One</option>
              <option value="Bowlby+One">Bowlby One</option>
              <option value="Bowlby+One+SC">Bowlby One SC</option>
              <option value="Brawler">Brawler </option>
              <option value="Buda">Buda</option>
              <option value="Cabin">Cabin</option>
              <option value="Calligraffitti">Calligraffitti</option>
              <option value="Candal">Candal</option>
              <option value="Cantarell">Cantarell</option>
              <option value="Cardo">Cardo</option>
              <option value="Carter+One">Carter One</option>
              <option value="Caudex">Caudex</option>
              <option value="Cedarville+Cursive">Cedarville Cursive</option>
              <option value="Cherry+Cream+Soda">Cherry Cream Soda</option>
              <option value="Chewy">Chewy</option>
              <option value="Coda">Coda</option>
              <option value="Coming+Soon">Coming Soon</option>
              <option value="Copse">Copse</option>
              <option value="Corben">Corben</option>
              <option value="Cousine">Cousine</option>
              <option value="Covered+By+Your+Grace">Covered By Your Grace</option>
              <option value="Crafty+Girls">Crafty Girls</option>
              <option value="Crimson+Text">Crimson Text</option>
              <option value="Crushed">Crushed</option>
              <option value="Cuprum">Cuprum</option>
              <option value="Damion">Damion</option>
              <option value="Dancing+Script">Dancing Script</option>
              <option value="Dawning+of+a+New+Day">Dawning of a New Day</option>
              <option value="Didact+Gothic">Didact Gothic</option>
              <option value="Droid+Sans">Droid Sans</option>
              <option value="Droid+Sans+Mono">Droid Sans Mono</option>
              <option value="Droid+Serif">Droid Serif</option>
              <option value="EB+Garamond">EB Garamond</option>
              <option value="Expletus+Sans">Expletus Sans</option>
              <option value="Fontdiner+Swanky">Fontdiner Swanky</option>
              <option value="Forum">Forum</option>
              <option value="Francois+One">Francois One</option>
              <option value="Federo">Federo</option>
              <option value="Geo">Geo</option>
              <option value="Give+You+Glory">Give You Glory</option>
              <option value="Goblin+One">Goblin One</option>
              <option value="Goudy+Bookletter+1911">Goudy Bookletter 1911</option>
              <option value="Gravitas+One">Gravitas One</option>
              <option value="Gruppo">Gruppo</option>
              <option value="Hammersmith+One">Hammersmith One</option>
              <option value="Holtwood+One+SC">Holtwood One SC</option>
              <option value="Homemade+Apple">Homemade Apple</option>
              <option value="Inconsolata">Inconsolata</option>
              <option value="Indie+Flower">Indie Flower</option>
              <option value="IM+Fell+DW+Pica">IM Fell DW Pica</option>
              <option value="IM+Fell+DW+Pica+SC">IM Fell DW Pica SC</option>
              <option value="IM+Fell+Double+Pica">IM Fell Double Pica</option>
              <option value="IM+Fell+Double+Pica+SC">IM Fell Double Pica SC</option>
              <option value="IM+Fell+English">IM Fell English</option>
              <option value="IM+Fell+English+SC">IM Fell English SC</option>
              <option value="IM+Fell+French+Canon">IM Fell French Canon</option>
              <option value="IM+Fell+French+Canon+SC">IM Fell French Canon SC</option>
              <option value="IM+Fell+Great+Primer">IM Fell Great Primer</option>
              <option value="IM+Fell+Great+Primer+SC">IM Fell Great Primer SC</option>
              <option value="Irish+Grover">Irish Grover</option>
              <option value="Irish+Growler">Irish Growler</option>
              <option value="Istok+Web">Istok Web</option>
              <option value="Josefin+Sans">Josefin Sans Regular 400</option>
              <option value="Josefin+Slab">Josefin Slab Regular 400</option>
              <option value="Judson">Judson</option>
              <option value="Jura"> Jura Regular</option>
              <option value="Just+Another+Hand">Just Another Hand</option>
              <option value="Just+Me+Again+Down+Here">Just Me Again Down Here</option>
              <option value="Kameron">Kameron</option>
              <option value="Kenia">Kenia</option>
              <option value="Kranky">Kranky</option>
              <option value="Kreon">Kreon</option>
              <option value="Kristi">Kristi</option>
              <option value="La+Belle+Aurore">La Belle Aurore</option>
              <option value="Lato">Lato</option>
              <option value="League+Script">League Script</option>
              <option value="Lekton"> Lekton </option>
              <option value="Limelight"> Limelight </option>
              <option value="Lobster">Lobster</option>
              <option value="Lobster+Two">Lobster Two</option>
              <option value="Lora">Lora</option>
              <option value="Love+Ya+Like+A+Sister">Love Ya Like A Sister</option>
              <option value="Loved+by+the+King">Loved by the King</option>
              <option value="Luckiest+Guy">Luckiest Guy</option>
              <option value="Maiden+Orange">Maiden Orange</option>
              <option value="Mako">Mako</option>
              <option value="Maven+Pro"> Maven Pro</option>
              <option value="Meddon">Meddon</option>
              <option value="MedievalSharp">MedievalSharp</option>
              <option value="Megrim">Megrim</option>
              <option value="Merriweather">Merriweather</option>
              <option value="Metrophobic">Metrophobic</option>
              <option value="Michroma">Michroma</option>
              <option value="Miltonian+Tattoo">Miltonian Tattoo</option>
              <option value="Miltonian">Miltonian</option>
              <option value="Modern+Antiqua">Modern Antiqua</option>
              <option value="Monofett">Monofett</option>
              <option value="Molengo">Molengo</option>
              <option value="Mountains+of+Christmas">Mountains of Christmas</option>
              <option value="Muli">Muli Regular</option>
              <option value="Neucha">Neucha</option>
              <option value="Neuton">Neuton</option>
              <option value="News+Cycle">News Cycle</option>
              <option value="Nixie+One">Nixie One</option>
              <option value="Nobile">Nobile</option>
              <option value="Nova+Cut">Nova Cut</option>
              <option value="Nova+Flat">Nova Flat</option>
              <option value="Nova+Mono">Nova Mono</option>
              <option value="Nova+Oval">Nova Oval</option>
              <option value="Nova+Round">Nova Round</option>
              <option value="Nova+Script">Nova Script</option>
              <option value="Nova+Slim">Nova Slim</option>
              <option value="Nova+Square">Nova Square</option>
              <option value="Nunito"> Nunito Regular</option>
              <option value="OFL+Sorts+Mill+Goudy+TT">OFL Sorts Mill Goudy TT</option>
              <option value="Old+Standard+TT">Old Standard TT</option>
              <option value="Open+Sans">Open Sans regular</option>
              <option value="Open+Sans+Condensed">Open Sans Condensed</option>
              <option value="Orbitron">Orbitron Regular (400)</option>
              <option value="Oswald">Oswald</option>
              <option value="Over+the+Rainbow">Over the Rainbow</option>
              <option value="Reenie+Beanie">Reenie Beanie</option>
              <option value="Pacifico">Pacifico</option>
              <option value="Patrick+Hand">Patrick Hand</option>
              <option value="Paytone+One">Paytone One</option>
              <option value="Permanent+Marker">Permanent Marker</option>
              <option value="Philosopher">Philosopher</option>
              <option value="Play">Play</option>
              <option value="Playfair+Display"> Playfair Display </option>
              <option value="Podkova"> Podkova </option>
              <option value="PT+Sans">PT Sans</option>
              <option value="PT+Sans+Narrow">PT Sans Narrow</option>
              <option value="PT+Serif">PT Serif</option>
              <option value="Puritan">Puritan</option>
              <option value="Quattrocento">Quattrocento</option>
              <option value="Quattrocento+Sans">Quattrocento Sans</option>
              <option value="Radley">Radley</option>
              <option value="Raleway">Raleway</option>
              <option value="Redressed">Redressed</option>
              <option value="Rock+Salt">Rock Salt</option>
              <option value="Rokkitt">Rokkitt</option>
              <option value="Ruslan+Display">Ruslan Display</option>
              <option value="Schoolbell">Schoolbell</option>
              <option value="Shadows+Into+Light">Shadows Into Light</option>
              <option value="Shanti">Shanti</option>
              <option value="Sigmar+One">Sigmar One</option>
              <option value="Six+Caps">Six Caps</option>
              <option value="Slackey">Slackey</option>
              <option value="Smythe">Smythe</option>
              <option value="Sniglet">Sniglet</option>
              <option value="Special+Elite">Special Elite</option>
              <option value="Stardos+Stencil">Stardos Stencil</option>
              <option value="Sue+Ellen+Francisco">Sue Ellen Francisco</option>
              <option value="Sunshiney">Sunshiney</option>
              <option value="Swanky+and+Moo+Moo">Swanky and Moo Moo</option>
              <option value="Syncopate">Syncopate</option>
              <option value="Tangerine">Tangerine</option>
              <option value="Tenor+Sans"> Tenor Sans </option>
              <option value="Terminal+Dosis+Light">Terminal Dosis Light</option>
              <option value="The+Girl+Next+Door">The Girl Next Door</option>
              <option value="Tinos">Tinos</option>
              <option value="Ubuntu+Condensed" selected="selected">Ubuntu Condensed</option>
              <option value="Ultra">Ultra</option>
              <option value="Unkempt">Unkempt</option>
              <option value="UnifrakturCook:bold">UnifrakturCook</option>
              <option value="UnifrakturMaguntia">UnifrakturMaguntia</option>
              <option value="Varela">Varela</option>
              <option value="Varela+Round">Varela Round</option>
              <option value="Vibur">Vibur</option>
              <option value="Vollkorn">Vollkorn</option>
              <option value="Waiting+for+the+Sunrise">Waiting for the Sunrise</option>
              <option value="Wallpoet">Wallpoet</option>
              <option value="Walter+Turncoat">Walter Turncoat</option>
              <option value="Wire+One">Wire One</option>
              <option value="Yanone+Kaffeesatz">Yanone Kaffeesatz</option>
              <option value="Yeseva+One">Yeseva One</option>
              <option value="Yellowtail">Yellowtail</option>
              <option value="Zeyada">Zeyada</option>
              <option value="Rochester">Rochester</option>
              <?php } ?>
            </select>
            <span class="default_value"><?php echo $text_default_value; ?>: Ubuntu Condensed</span></td>
        </tr>
        <tr>
          <td><?php echo $text_headings1_size; ?>:</td>
          <td><input id="UniversumControl_headings1_size" type="text" name="UniversumControl_headings1_size" value="<?php echo $UniversumControl_headings1_size; ?>" class="spicy" >px</td>
        </tr>
        <tr>
          <td><?php echo $text_headings2_size; ?>:</td>
          <td><input id="UniversumControl_headings2_size" type="text" name="UniversumControl_headings2_size" value="<?php echo $UniversumControl_headings2_size; ?>" class="spicy" >px</td>
        </tr>
        <tr>
          <td><?php echo $text_headings3_size; ?>:</td>
          <td><input id="UniversumControl_headings3_size" type="text" name="UniversumControl_headings3_size" value="<?php echo $UniversumControl_headings3_size; ?>" class="spicy" >px</td>
        </tr>
        <tr>
          <td><?php echo $text_headings4_size; ?>:</td>
          <td><input id="UniversumControl_headings4_size" type="text" name="UniversumControl_headings4_size" value="<?php echo $UniversumControl_headings4_size; ?>" class="spicy" >px</td>
        </tr>
        <tr>
          <td><?php echo $text_price_size; ?>:</td>
          <td><input id="UniversumControl_price_size" type="text" name="UniversumControl_price_size" value="<?php echo $UniversumControl_price_size; ?>" class="spicy" >px</td>
        </tr>
        <tr>
          <td><?php echo $text_module_title_size; ?>:</td>
          <td><input id="UniversumControl_module_title_size" type="text" name="UniversumControl_module_title_size" value="<?php echo $UniversumControl_module_title_size; ?>" class="spicy" >px</td>
        </tr>
        <tr>
          <td><?php echo $text_column_title_size; ?>:</td>
          <td><input id="UniversumControl_column_title_size" type="text" name="UniversumControl_column_title_size" value="<?php echo $UniversumControl_column_title_size; ?>" class="spicy" >px</td>
        </tr>
        <tr>
          <td><?php echo $text_category_item_size; ?>:</td>
          <td><input id="UniversumControl_category_item_size" type="text" name="UniversumControl_category_item_size" value="<?php echo $UniversumControl_category_item_size; ?>" class="spicy" >px</td>
        </tr>
      </table>
      <h2 class="fonts"><span><?php echo $text_custom_font; ?></span></h2>
      <table class="form">
        <tr>
          <td><?php echo $text_custom_font_code; ?>:</td>
          <td><input id="UniversumControl_custom_font" type="text" name="UniversumControl_custom_font" value="<?php echo $UniversumControl_custom_font; ?>" class="spicy" >
          <span class="default_value">example: https://fonts.googleapis.com/css?family=Ubuntu+Condensed</span></td>
        </tr>
        <tr>
          <td><?php echo $text_custom_font_family; ?>:</td>
          <td><input id="UniversumControl_custom_font_family" type="text" name="UniversumControl_custom_font_family" value="<?php echo $UniversumControl_custom_font_family; ?>" class="spicy" >
          <span class="default_value">example: Ubuntu Condensed</span></td>
        </tr>
       </table>
    </div>
    <div class="htabs-content" id="tab_social">
      <div>
        <h2 class="twitter"><span><?php echo $text_twitter; ?></span></h2>
        <table class="form">
          <tr>
            <td><input id="UniversumControl_twitter_id" type="text" name="UniversumControl_twitter_id" value="<?php echo $UniversumControl_twitter_id ; ?>" class="spicy" >
              <span class="default_value"><?php echo $text_twitter_helper; ?></span></td>
          </tr>
        </table>
      </div>
      <div>
        <h2 class="facebook"><span><?php echo $text_facebook; ?></span></h2>
        <table class="form">
          <tr>
            <td><input id="UniversumControl_facebook_id" type="text" name="UniversumControl_facebook_id" value="<?php echo $UniversumControl_facebook_id ; ?>" class="spicy" >
              <span class="default_value"><?php echo $text_facebook_helper; ?>.</span></td>
          </tr>
        </table>
      </div>
      <div>
        <h2 class="skype"><span><?php echo $text_skype; ?></span></h2>
        <table class="form">
          <tr>
            <td><input id="UniversumControl_skype" type="text" name="UniversumControl_skype" value="<?php echo $UniversumControl_skype ; ?>" class="spicy" >
              <span class="default_value"><?php echo $text_skype_helper; ?>.</span></td>
          </tr>
        </table>
        <table class="form">
          <tr>
            <td><?php echo $text_skype_mode; ?></td>
          </tr>
          <tr>
            <td><select name="UniversumControl_skype_mode" class="spicy">
                <?php if (isset($UniversumControl_skype_mode)) {
              $selected11 = 'selected="selected"';
              ?>
                <option value="chat" <?php if($UniversumControl_skype_mode=='chat'){echo $selected11;} ?>>Chat</option>
                <option value="call" <?php if($UniversumControl_skype_mode=='call'){echo $selected11;} ?>>Call</option>
                <?php } else { ?>
                <option value="chat" selected="selected">Chat</option>
                <option value="call">Call</option>
                <?php } ?>
              </select>
              </td>
          </tr>
        </table>
      </div>
    </div>
    <div class="htabs-content" id="tab_cards">
      <div>
        <h2 class="cards"><span><?php echo $text_icons; ?></span></h2>
        <table class="form">
          <tr>
            <td class="paypal" style="width:40px;"></td>
            <td><select name="UniversumControl_paypal" class="spicy">
                <?php if (isset($UniversumControl_paypal)) {
              $selected113 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_paypal=='0'){echo $selected113;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_paypal=='1'){echo $selected113;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="visa" style="width:40px;"></td>
            <td><select name="UniversumControl_visa" class="spicy">
                <?php if (isset($UniversumControl_visa)) {
              $selected111 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_visa=='0'){echo $selected111;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_visa=='1'){echo $selected111;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="electron" style="width:40px;"></td>
            <td><select name="UniversumControl_electron" class="spicy">
                <?php if (isset($UniversumControl_electron)) {
              $selected112 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_electron=='0'){echo $selected112;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_electron=='1'){echo $selected112;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="master" style="width:40px;"></td>
            <td><select name="UniversumControl_master" class="spicy">
                <?php if (isset($UniversumControl_master)) {
              $selected114 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_master=='0'){echo $selected114;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_master=='1'){echo $selected114;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="maestro" style="width:40px;"></td>
            <td><select name="UniversumControl_maestro" class="spicy">
                <?php if (isset($UniversumControl_maestro)) {
              $selected115 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_maestro=='0'){echo $selected115;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_maestro=='1'){echo $selected115;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="american" style="width:40px;"></td>
            <td><select name="UniversumControl_american" class="spicy">
                <?php if (isset($UniversumControl_american)) {
              $selected116 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_american=='0'){echo $selected116;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_american=='1'){echo $selected116;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="cirrus" style="width:40px;"></td>
            <td><select name="UniversumControl_cirrus" class="spicy">
                <?php if (isset($UniversumControl_cirrus)) {
              $selected117 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_cirrus=='0'){echo $selected117;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_cirrus=='1'){echo $selected117;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="two_checkout" style="width:40px;"></td>
            <td><select name="UniversumControl_2checkout" class="spicy">
                <?php if (isset($UniversumControl_2checkout)) {
              $selected118 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_2checkout=='0'){echo $selected118;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_2checkout=='1'){echo $selected118;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="delta" style="width:40px;"></td>
            <td><select name="UniversumControl_delta" class="spicy">
                <?php if (isset($UniversumControl_delta)) {
              $selected119 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_delta=='0'){echo $selected119;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_delta=='1'){echo $selected119;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="discover" style="width:40px;"></td>
            <td><select name="UniversumControl_discover" class="spicy">
                <?php if (isset($UniversumControl_discover)) {
              $selected120 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_discover=='0'){echo $selected120;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_discover=='1'){echo $selected120;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="google" style="width:40px;"></td>
            <td><select name="UniversumControl_google" class="spicy">
                <?php if (isset($UniversumControl_google)) {
              $selected121 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_google=='0'){echo $selected121;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_google=='1'){echo $selected121;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="moneybookers" style="width:40px;"></td>
            <td><select name="UniversumControl_moneybookers" class="spicy">
                <?php if (isset($UniversumControl_moneybookers)) {
              $selected122 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_moneybookers=='0'){echo $selected122;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_moneybookers=='1'){echo $selected122;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="sage" style="width:40px;"></td>
            <td><select name="UniversumControl_sage" class="spicy">
                <?php if (isset($UniversumControl_sage)) {
              $selected123 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_sage=='0'){echo $selected123;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_sage=='1'){echo $selected123;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="solo" style="width:40px;"></td>
            <td><select name="UniversumControl_solo" class="spicy">
                <?php if (isset($UniversumControl_solo)) {
              $selected124 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_solo=='0'){echo $selected124;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_solo=='1'){echo $selected124;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="switch" style="width:40px;"></td>
            <td><select name="UniversumControl_switch" class="spicy">
                <?php if (isset($UniversumControl_switch)) {
              $selected125 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_switch=='0'){echo $selected125;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_switch=='1'){echo $selected125;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td class="western" style="width:40px;"></td>
            <td><select name="UniversumControl_western" class="spicy">
                <?php if (isset($UniversumControl_western)) {
              $selected126 = 'selected="selected"';
              ?>
                <option value="0" <?php if($UniversumControl_western=='0'){echo $selected126;} ?>><?php echo $text_disabled; ?></option>
                <option value="1" <?php if($UniversumControl_western=='1'){echo $selected126;} ?>><?php echo $text_enabled; ?></option>
                <?php } else { ?>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <option value="1"><?php echo $text_enabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
        </table>
      </div>
    </div>
    </div>
    <div class="box fixed">
    <div class="content_full">
    <h2 class="on_off"><span>Settings ON/OFF</span></h2>
    <table class="form">
      <tr> </tr>
      <tr>
        <td>Disable / Enable custom options? </td>
        <td><select name="UniversumControl_status" class="spicy">
            <?php
														if ($UniversumControl_status) {
															?>
            <option value="1" selected="selected">
            <?php
															echo $text_enabled;
															?>
            </option>
            <option value="0">
            <?php
															echo $text_disabled;
															?>
            </option>
            <?php
														} else {
															?>
            <option value="1">
            <?php
															echo $text_enabled;
															?>
            </option>
            <option value="0" selected="selected">
            <?php
															echo $text_disabled;
															?>
            </option>
            <?php
														}
														?>
          </select></td>
      </tr>
    </table>
  </form>
</div>
</div>
<script type="text/javascript">

$(document).ready(function() {

	$('	#UniversumControl_headings_color,	#UniversumControl_text_color, #UniversumControl_links_color, #UniversumControl_links_color_hover, #UniversumControl_body_bg_color, #UniversumControl_button_color, #UniversumControl_button_color_hover, #UniversumControl_price_color,	#UniversumControl_footer_bg_color, #UniversumControl_header_top_color, #UniversumControl_header_bottom_color, #UniversumControl_menu_icon_back, #UniversumControl_cart_icon_back, #UniversumControl_main_menu_hover_background, #UniversumControl_main_menu_hover_color, #UniversumControl_content_background_color, #UniversumControl_powered_bg, #UniversumControl_prefooter_borders, #UniversumControl_prefooter_border_top, #UniversumControl_prefooter_titles, #UniversumControl_column_box_color, #UniversumControl_container_bg_color, #UniversumControl_column_box_title, #UniversumControl_footer_box_title, #UniversumControl_footer_link_color, #UniversumControl_footer_link_border, #UniversumControl_main_menu_color, #UniversumControl_category_menu_color, #UniversumControl_category_menu_hover_background, #UniversumControl_category_menu_hover_color, #UniversumControl_prefooter_bg, #UniversumControl_header_text_color, #UniversumControl_main_price_color, #UniversumControl_old_price_color, #UniversumControl_cart_button_color, #UniversumControl_buttons_color_hover, #UniversumControl_cat_title_background, #UniversumControl_cat_title_color, #UniversumControl_breadcrumb_color, #UniversumControl_new_label_color, #UniversumControl_sale_label_color, #UniversumControl_save_label_color, #UniversumControl_boxtop_border, #UniversumControl_Featuredtop_border, #UniversumControl_buttons_color, #UniversumControl_wish_button_color, #UniversumControl_compare_button_color, #UniversumControl_product_tab_color, #UniversumControl_header_bg_color, #UniversumControl_header_bottom_border, #UniversumControl_powered_text, #UniversumControl_drop_border, #UniversumControl_headings_accent').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$(el).val(hex);
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor(this.value);
		}
	})
	.bind('keyup', function(){
		$(this).ColorPickerSetColor(this.value);
	});
	 });
</script> 
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>',
					type: 'POST',
					data: 'image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" class="image" onclick="image_upload(\'' + field + '\', \'' + preview + '\');" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<?php echo $footer; ?> 