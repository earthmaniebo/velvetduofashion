<?php 
 
$this->load->model('catalog/category');
$this->load->model('tool/image');
 
$categories_1 = $this->model_catalog_category->getCategories(0);  											
 
if ($categories_1) {$output = '<ul id="topnav">';}  															
 
foreach ($categories_1 as $category_1) {																			
	$output .= '<li>';
    $testPath = $base.'image/';
	if ($category_1['image']) {
    $picCat = $this->model_tool_image->resize($category_1['image'],  80, 80);
    } else {
    $picCat = $base.'image/data/empty_pic_80x80.jpg';
    };
	$unrewritten  = $this->url->link('product/category', 'path=' . $category_1['category_id']);
    $output .= '<a href="'.($unrewritten).'">' . $category_1['name'] . '</a>';								
 
	$categories_2 = $this->model_catalog_category->getCategories($category_1['category_id']);
 
	if ($categories_2) {$output .= '<ul class="children"><li class="pic_name"><h3><a href="'.($unrewritten).'"><img src="'.$picCat.'" alt="' . $category_1['name'].'"/><span>' . $category_1['name'] . '</span></a></h3></li>';}												
 
	foreach ($categories_2 as $category_2) {
    	$subTestPath = $base.'image/';
        if ($category_2['image']) {
    $picSubCat = $this->model_tool_image->resize($category_2['image'],  70, 70);
    } else {
    $picSubCat = $base.'image/data/empty_pic_70x70.jpg';
    };
    																	
		$output .= '<li>';
		$sub_unrewritten = $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id']);
		$output .= '<a href="'.($sub_unrewritten).'"><img src="'.$picSubCat.'" alt="' . $category_2['name'].'"/><span>' . $category_2['name'] . '</span></a>';
 		
		$categories_3 = $this->model_catalog_category->getCategories($category_2['category_id']);
 
		if ($categories_3) {$output .= '<ul class="children2">';}
 
		foreach ($categories_3 as $category_3) {
			$output .= '<li>';
			$third_sub_unrewritten = $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'] . '_' . $category_3['category_id']);
			$output .= '<a href="'.($third_sub_unrewritten).'">'.$category_3['name'].'</a>';
			$output .= '</li>';
		}
 
		if ($categories_3) {$output .= '</ul>';}
			$output .= '</li>';
	}
	if ($categories_2) {$output .= '</ul>';}
		$output .= '</li>';
}

if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_specials_link') == '1')){
	$output .= '<li><a href="'. $special . '">' .$text_special. '</a></li>';
}

if (($this->config->get('UniversumControl_status') == '1') && ($this->config->get('UniversumControl_brands') == '1')) {
$brands_1 = $this->model_catalog_manufacturer->getManufacturers(0);
    if ($brands_1) {$output .= '<li><a href="'. $brand . '">'.$text_brands.'</a><ul class="children">';} 
    foreach ($brands_1 as $brand_1) {
		if ($brand_1['image']) {
		$picBrand = $this->model_tool_image->resize($brand_1['image'],  70, 70);
		} else {
    $picBrand = $base.'image/data/empty_pic_70x70.jpg';
    };
    $output .= '<li>';
    $brands_unrewritten  = $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $brand_1['manufacturer_id']);
    $output .= '<a href="'.($brands_unrewritten).'"><img src="'.$picBrand.'" alt="' . $brand_1['name'].'"/><span>' . $brand_1['name'] . '</span></a>';
    $output .= '</li>';
    }
    if ($brands_1) {$output .= '</ul></li>';}
	}
	
	if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_custom_menu_1') != null)){
	$output .= '<li class="custom_link_one">';
	$output .= '<a href="'.$this->config->get('UniversumControl_custom_link_1').'">' . $this->config->get('UniversumControl_custom_menu_1') . '</a>';
	if(($this->config->get('UniversumControl_custom_submenu_1') != null)){
		$output .= '<div>' . html_entity_decode($this->config->get('UniversumControl_custom_submenu_1')) .'</div>';}
	$output .= '</li>';
	}
	
	if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_custom_menu_2') != null)){
	$output .= '<li class="custom_link_two">';
	$output .= '<a href="'.$this->config->get('UniversumControl_custom_link_2').'">' . $this->config->get('UniversumControl_custom_menu_2') . '</a>';
	if(($this->config->get('UniversumControl_custom_submenu_2') != null)){
		$output .= '<div>' . html_entity_decode($this->config->get('UniversumControl_custom_submenu_2')) .'</div>';}
	$output .= '</li>';
	}
	
	if(($this->config->get('UniversumControl_status') == '1') && ( $this->config->get('UniversumControl_custom_menu_3') != null)){
	$output .= '<li class="custom_link_three">';
	$output .= '<a href="'.$this->config->get('UniversumControl_custom_link_3').'">' . $this->config->get('UniversumControl_custom_menu_3') . '</a>';
	if(($this->config->get('UniversumControl_custom_submenu_3') != null)){
		$output .= '<div>' . html_entity_decode($this->config->get('UniversumControl_custom_submenu_3')) .'</div>';}
	$output .= '</li>';
	}


if ($categories_1) {$output .= '</ul>';}
echo $output;
?>