<ul class="topnav2">
<?php if ($categories) { ?>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
    <?php } ?>
    <?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_specials_link') == '1')){	?>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
      <?php } ?>
    
    <?php
	if (($this->config->get('UniversumControl_status') == '1') && ($this->config->get('UniversumControl_brands') == '1')) {
	$brands_1 = $this->model_catalog_manufacturer->getManufacturers(0);
    if ($brands_1) {$output = '<li><a href="'. $brand . '">' .$text_brands. '</a><div><ul>';} 
    foreach ($brands_1 as $brand_1) {
    $output .= '<li>';
    $unrewritten  = $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $brand_1['manufacturer_id']);
    $output .= '<a href="'.($unrewritten).'">' . $brand_1['name'] . '</a>';
    $output .= '</li>';
    }
    if ($brands_1) {$output .= '</ul></div></li>';}
echo $output;
	}
    ?>
    
    <?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_custom_menu_1') != null)){	?>
    <li class="custom_link_one">
    <a href="<?php echo $this->config->get('UniversumControl_custom_link_1') ?>"><?php echo $this->config->get('UniversumControl_custom_menu_1') ?></a>
    <?php if(($this->config->get('UniversumControl_custom_submenu_1') != null)){	?>
    <div>
    <?php echo html_entity_decode($this->config->get('UniversumControl_custom_submenu_1')); ?>
    </div>
    <?php } ?>
    </li>
    <?php } ?>
    <?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_custom_menu_2') != null)){	?>
    <li class="custom_link_two">
    <a href="<?php echo $this->config->get('UniversumControl_custom_link_2') ?>"><?php echo $this->config->get('UniversumControl_custom_menu_2') ?></a>
    <?php if(($this->config->get('UniversumControl_custom_submenu_2') != null)){	?>
    <div>
    <?php echo html_entity_decode($this->config->get('UniversumControl_custom_submenu_2')); ?>
    </div>
    <?php } ?>
    </li>
    <?php } ?>
    <?php if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_custom_menu_3') != null)){	?>
    <li class="custom_link_three">
    <a href="<?php echo $this->config->get('UniversumControl_custom_link_3') ?>"><?php echo $this->config->get('UniversumControl_custom_menu_3') ?></a>
    <?php if(($this->config->get('UniversumControl_custom_submenu_3') != null)){	?>
    <div>
    <?php echo html_entity_decode($this->config->get('UniversumControl_custom_submenu_3')); ?>
    </div>
    <?php } ?>
    </li>
    <?php } ?>
  </ul>