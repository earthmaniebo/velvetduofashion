<?php
class ControllerModuleUniversumControl extends Controller {
	
	private $error = array(); 
	
	public function index() {   
		
		$this->load->language('module/UniversumControl');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
		
		$this->load->model('tool/image');
		
		$this->document->addScript('view/javascript/jquery/colorpicker.js');
		$this->document->addScript('view/javascript/jquery/jquery.ibutton.min.js');
		$this->document->addStyle('view/stylesheet/css/colorpicker.css');
		$this->document->addStyle('view/stylesheet/css/UniversumControl.css');
		
		$this->data['text_general_settings'] = $this->language->get('text_general_settings');
		$this->data['text_menu_type'] = $this->language->get('text_menu_type');
		$this->data['text_site_mode'] = $this->language->get('text_site_mode');
		$this->data['text_mode_store'] = $this->language->get('text_mode_store');
		$this->data['text_mode_catalog'] = $this->language->get('text_mode_catalog');
		$this->data['text_header_settings'] = $this->language->get('text_header_settings');
		$this->data['text_layout_type'] = $this->language->get('text_layout_type');
		$this->data['text_layout_full'] = $this->language->get('text_layout_full');
		$this->data['text_layout_boxed'] = $this->language->get('text_layout_boxed');
		$this->data['text_footer_settings'] = $this->language->get('text_footer_settings');
		$this->data['text_content_settings'] = $this->language->get('text_content_settings');
		$this->data['text_common_colors'] = $this->language->get('text_common_colors');
		$this->data['text_titles_teasers'] = $this->language->get('text_titles_teasers');
		$this->data['text_fonts'] = $this->language->get('text_fonts');
		$this->data['text_social'] = $this->language->get('text_social');
		$this->data['text_icons'] = $this->language->get('text_icons');
		$this->data['text_color_helper'] = $this->language->get('text_color_helper');
		$this->data['text_body_color'] = $this->language->get('text_body_color');
		$this->data['text_header_color'] = $this->language->get('text_header_color');
		$this->data['text_header_bottom_border'] = $this->language->get('text_header_bottom_border');
		$this->data['text_body_pattern'] = $this->language->get('text_body_pattern');
		$this->data['text_header_pattern'] = $this->language->get('text_header_pattern');
		$this->data['text_footer_pattern'] = $this->language->get('text_footer_pattern');
		$this->data['text_default_value'] = $this->language->get('text_default_value');
		$this->data['text_pattern_samples'] = $this->language->get('text_pattern_samples');
		$this->data['text_headings_color'] = $this->language->get('text_headings_color');
		$this->data['text_body_text_color'] = $this->language->get('text_body_text_color');
		$this->data['text_right_column_background'] = $this->language->get('text_right_column_background');
		$this->data['text_right_column_titles'] = $this->language->get('text_right_column_titles');
		$this->data['text_links_color'] = $this->language->get('text_links_color');
		$this->data['text_links_hover_color'] = $this->language->get('text_links_hover_color');
		$this->data['text_buttons_color'] = $this->language->get('text_buttons_color');
		$this->data['text_buttons_hover_color'] = $this->language->get('text_buttons_hover_color');
		$this->data['text_new_color'] = $this->language->get('text_new_color');
		$this->data['text_sale_color'] = $this->language->get('text_sale_color');
		$this->data['text_save_color'] = $this->language->get('text_save_color');
		$this->data['text_cat_back'] = $this->language->get('text_cat_back');
		$this->data['text_cat_color'] = $this->language->get('text_cat_color');
		$this->data['text_breadcrumb_color'] = $this->language->get('text_breadcrumb_color');
		$this->data['text_box_border'] = $this->language->get('text_box_border');
		$this->data['text_header_top_color'] = $this->language->get('text_header_top_color');
		$this->data['text_header_bottom_color'] = $this->language->get('text_header_bottom_color');
		$this->data['text_header_text_color'] = $this->language->get('text_header_text_color');
		$this->data['text_box_featured_border'] = $this->language->get('text_box_featured_border');
		$this->data['text_menu_link_color'] = $this->language->get('text_menu_link_color');
		$this->data['text_menu_link_hover_color'] = $this->language->get('text_menu_link_hover_color');
		$this->data['text_menu_link_hover_back'] = $this->language->get('text_menu_link_hover_back');
		$this->data['text_drop_border'] = $this->language->get('text_drop_border');
		
		$this->data['text_category_link_color'] = $this->language->get('text_category_link_color');
		$this->data['text_headings_accent'] = $this->language->get('text_headings_accent');
		$this->data['text_category_link_hover_color'] = $this->language->get('text_category_link_hover_color');
		$this->data['text_category_link_hover_back'] = $this->language->get('text_category_link_hover_back');
		
		$this->data['text_menu_icon_back'] = $this->language->get('text_menu_icon_back');
		$this->data['text_cart_icon_back'] = $this->language->get('text_cart_icon_back');
		
		$this->data['text_footer_back_color'] = $this->language->get('text_footer_back_color');
		$this->data['text_footer_titles_color'] = $this->language->get('text_footer_titles_color');
		$this->data['text_footer_borders_color'] = $this->language->get('text_footer_borders_color');
		$this->data['text_pre_footer_back_color'] = $this->language->get('text_pre_footer_back_color');
		$this->data['text_pre_footer_top_border_color'] = $this->language->get('text_pre_footer_top_border_color');
		$this->data['text_pre_footer_titles_color'] = $this->language->get('text_pre_footer_titles_color');
		$this->data['text_pre_footer_titles_border'] = $this->language->get('text_pre_footer_titles_border');
		$this->data['text_copyright_back_color'] = $this->language->get('text_copyright_back_color');
		$this->data['text_copyright_text_color'] = $this->language->get('text_copyright_text_color');
		$this->data['text_footer_time'] = $this->language->get('text_footer_time');
		$this->data['text_footer_address'] = $this->language->get('text_footer_address');
		$this->data['text_footer_phone'] = $this->language->get('text_footer_phone');
		$this->data['text_footer_fax'] = $this->language->get('text_footer_fax');
		$this->data['text_footer_mail'] = $this->language->get('text_footer_mail');
		$this->data['text_footer_seals'] = $this->language->get('text_footer_seals');
		$this->data['text_footer_copyright'] = $this->language->get('text_footer_copyright');
		
		$this->data['text_titles_teasers_warning'] = $this->language->get('text_titles_teasers_warning');
		$this->data['text_titles_news_warning'] = $this->language->get('text_titles_news_warning');
		$this->data['text_titles_title'] = $this->language->get('text_titles_title');
		$this->data['text_titles_teaser'] = $this->language->get('text_titles_teaser');
		$this->data['text_titles_featured'] = $this->language->get('text_titles_featured');
		$this->data['text_titles_latest'] = $this->language->get('text_titles_latest');
		$this->data['text_titles_specials'] = $this->language->get('text_titles_specials');
		$this->data['text_titles_bestseller'] = $this->language->get('text_titles_bestseller');
		$this->data['text_titles_news'] = $this->language->get('text_titles_news');
		
		$this->data['text_font_settings'] = $this->language->get('text_font_settings');
		$this->data['text_headings_font'] = $this->language->get('text_headings_font');
		$this->data['text_body_font'] = $this->language->get('text_body_font');
		
		$this->data['text_twitter'] = $this->language->get('text_twitter');
		$this->data['text_twitter_helper'] = $this->language->get('text_twitter_helper');
		$this->data['text_facebook'] = $this->language->get('text_facebook');
		$this->data['text_facebook_helper'] = $this->language->get('text_facebook_helper');
		$this->data['text_skype'] = $this->language->get('text_skype');
		$this->data['text_skype_helper'] = $this->language->get('text_skype_helper');
		$this->data['text_skype_mode'] = $this->language->get('text_skype_mode');
		
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_responsive'] = $this->language->get('text_responsive');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_countdown'] = $this->language->get('text_countdown');
		$this->data['text_news_link'] = $this->language->get('text_news_link');
		$this->data['text_specials_link'] = $this->language->get('text_specials_link');
		$this->data['text_rss_link'] = $this->language->get('text_rss_link');
		$this->data['text_opened'] = $this->language->get('text_opened');
		$this->data['text_hidden'] = $this->language->get('text_hidden');
		$this->data['text_header_state'] = $this->language->get('text_header_state');
		$this->data['text_new_label'] = $this->language->get('text_new_label');
		$this->data['text_css'] = $this->language->get('text_css');
		$this->data['text_skype_click'] = $this->language->get('text_skype_click');
		$this->data['text_map'] = $this->language->get('text_map');
		$this->data['text_support_block'] = $this->language->get('text_support_block');
		
		$this->data['UniversumControl_custom_menu_heading'] = $this->language->get('UniversumControl_custom_menu_heading');
		$this->data['UniversumControl_custom_menu_helper'] = $this->language->get('UniversumControl_custom_menu_helper');
		$this->data['UniversumControl_custom_menu'] = $this->language->get('UniversumControl_custom_menu');
		$this->data['UniversumControl_custom_title'] = $this->language->get('UniversumControl_custom_title');
		$this->data['UniversumControl_custom_link'] = $this->language->get('UniversumControl_custom_link');
		$this->data['UniversumControl_custom_submenu'] = $this->language->get('UniversumControl_custom_submenu');
		$this->data['text_opencart_menu'] = $this->language->get('text_opencart_menu');
		$this->data['text_universum_menu'] = $this->language->get('text_universum_menu');
		$this->data['text_menu_brands'] = $this->language->get('text_menu_brands');
		$this->data['text_product_page'] = $this->language->get('text_product_page');
		$this->data['text_zoom'] = $this->language->get('text_zoom');
		$this->data['text_colorbox'] = $this->language->get('text_colorbox');
		$this->data['text_preview_type'] = $this->language->get('text_preview_type');
		$this->data['text_cart_button_color'] = $this->language->get('text_cart_button_color');
		$this->data['text_wish_button_color'] = $this->language->get('text_wish_button_color');
		$this->data['text_compare_button_color'] = $this->language->get('text_compare_button_color');
		$this->data['text_main_price'] = $this->language->get('text_main_price');
		$this->data['text_old_price'] = $this->language->get('text_old_price');
		$this->data['text_tab_color'] = $this->language->get('text_tab_color');
		
		$this->data['text_headings1_size'] = $this->language->get('text_headings1_size');
		$this->data['text_headings2_size'] = $this->language->get('text_headings2_size');
		$this->data['text_headings3_size'] = $this->language->get('text_headings3_size');
		$this->data['text_headings4_size'] = $this->language->get('text_headings4_size');
		
		$this->data['text_price_size'] = $this->language->get('text_price_size');
		$this->data['text_module_title_size'] = $this->language->get('text_module_title_size');
		$this->data['text_column_title_size'] = $this->language->get('text_column_title_size');
		$this->data['text_category_item_size'] = $this->language->get('text_category_item_size');
		
		$this->data['text_custom_font'] = $this->language->get('text_custom_font');
		$this->data['text_custom_font_code'] = $this->language->get('text_custom_font_code');
		$this->data['text_custom_font_family'] = $this->language->get('text_custom_font_family');
		$this->data['text_blog_link'] = $this->language->get('text_blog_link');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('UniversumControl', $this->request->post);	

				
					
			$this->session->data['success'] = $this->language->get('text_success');
		
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
			$this->data['text_image_manager'] = 'Image manager';
			$this->data['token'] = $this->session->data['token'];		
		
		$text_strings = array(
				'heading_title',
				'text_enabled',
				'text_disabled',
				'text_content_top',
				'text_content_bottom',
				'text_column_left',
				'text_column_right',
				'entry_layout',
				'entry_position',
				'entry_status',
				'entry_sort_order',
				'button_save',
				'button_cancel',
				'button_add_module',
				'button_remove',
				'entry_example' 
		);
		
		foreach ($text_strings as $text) {
			$this->data[$text] = $this->language->get($text);
		}
		
		
		$config_data = array(
		'UniversumControl_status',
		'UniversumControl_blog_link',
		'UniversumControl_layout',
		'UniversumControl_skin',
		'UniversumControl_menu',
		'UniversumControl_site_mode',
		'UniversumControl_preheader',
		'UniversumControl_countdown',
		'UniversumControl_news_link',
		'UniversumControl_specials_link',
		'UniversumControl_header_state',
		'UniversumControl_new_label',
		'UniversumControl_custom_css',
		'UniversumControl_headings_color',
		'UniversumControl_text_color',
		'UniversumControl_links_color',
		'UniversumControl_links_color_hover',
		'UniversumControl_main_menu_color',
		'UniversumControl_main_menu_hover_color',
		'UniversumControl_main_menu_hover_background',
		'UniversumControl_category_menu_color',
		'UniversumControl_category_menu_hover_color',
		'UniversumControl_category_menu_hover_background',
		'UniversumControl_menu_icon_back',
		'UniversumControl_cart_icon_back',
		'UniversumControl_powered_bg',
		'UniversumControl_powered_text',
		'UniversumControl_prefooter_borders',
		'UniversumControl_body_bg_color',
		'UniversumControl_header_bg_color',
		'UniversumControl_body_bg_pattern',
		'UniversumControl_header_bg_pattern',
		'UniversumControl_prefooter_titles',
		'UniversumControl_prefooter_border_top',
		'UniversumControl_container_bg_color',
		'UniversumControl_footer_bg_color',
		'UniversumControl_header_top_color',
		'UniversumControl_header_bottom_color',
		'UniversumControl_content_background_color',
		'UniversumControl_content_bg_pattern',
		'UniversumControl_header_text_color',
		'UniversumControl_category_menu_bg',
		'UniversumControl_prefooter_bg',
		'UniversumControl_column_box_color',
		'UniversumControl_column_box_title',
		'UniversumControl_footer_link_color',
		'UniversumControl_footer_link_border',
		'UniversumControl_old_price_color',
		'UniversumControl_main_price_color',
		'UniversumControl_cart_button_color',
		'UniversumControl_wish_button_color',
		'UniversumControl_compare_button_color',
		'UniversumControl_buttons_color_hover',
		'UniversumControl_new_label_color',
		'UniversumControl_cat_title_background',
		'UniversumControl_cat_title_color',
		'UniversumControl_breadcrumb_color',
		'UniversumControl_boxtop_border',
		'UniversumControl_Featuredtop_border',
		'UniversumControl_map',
		'UniversumControl_sale_label_color',
		'UniversumControl_save_label_color',
		'UniversumControl_buttons_color',
		'UniversumControl_featured_custom_title',
		'UniversumControl_featured_custom_teaser',
		'UniversumControl_latest_custom_title',
		'UniversumControl_latest_custom_teaser',
		'UniversumControl_specials_custom_title',
		'UniversumControl_specials_custom_teaser',
		'UniversumControl_bestseller_custom_title',
		'UniversumControl_bestseller_custom_teaser',
		'UniversumControl_news_custom_teaser',
		'UniversumControl_rss_link',
		'UniversumControl_headings_font',
		'UniversumControl_body_font',
		'UniversumControl_twitter_id',
		'UniversumControl_facebook_id',
		'UniversumControl_skype_mode',
		'UniversumControl_skype',
		'UniversumControl_western',
		'UniversumControl_switch',
		'UniversumControl_solo',
		'UniversumControl_sage',
		'UniversumControl_moneybookers',
		'UniversumControl_google',
		'UniversumControl_discover',
		'UniversumControl_delta',
		'UniversumControl_2checkout',
		'UniversumControl_cirrus',
		'UniversumControl_american',
		'UniversumControl_maestro',
		'UniversumControl_master',
		'UniversumControl_electron',
		'UniversumControl_visa',
		'UniversumControl_paypal',
		'UniversumControl_footer_time',
		'UniversumControl_footer_address',
		'UniversumControl_footer_phone',
		'UniversumControl_footer_fax',
		'UniversumControl_footer_mail',
		'UniversumControl_seals',
		'UniversumControl_copyright',
		'UniversumControl_custom_menu_1',
		'UniversumControl_custom_link_1',
		'UniversumControl_custom_submenu_1',
		'UniversumControl_custom_menu_2',
		'UniversumControl_custom_link_2',
		'UniversumControl_custom_submenu_2',
		'UniversumControl_custom_menu_3',
		'UniversumControl_custom_link_3',
		'UniversumControl_custom_submenu_3',
		'UniversumControl_support_block',
		'UniversumControl_preview',
		'UniversumControl_brands',
		'UniversumControl_brands',
		'UniversumControl_header_bottom_border',
		'UniversumControl_drop_border',
		'UniversumControl_product_tab_color',
		'UniversumControl_headings1_size',
		'UniversumControl_headings2_size',
		'UniversumControl_headings3_size',
		'UniversumControl_headings4_size',
		'UniversumControl_price_size',
		'UniversumControl_module_title_size',
		'UniversumControl_column_title_size',
		'UniversumControl_category_item_size',
		'UniversumControl_custom_font',
		'UniversumControl_custom_font_family',
		'UniversumControl_headings_accent',
		'UniversumControl_responsive'			
		);
		
		foreach ($config_data as $conf) {
			if (isset($this->request->post[$conf])) {
				$this->data[$conf] = $this->request->post[$conf];
			} else {
				$this->data[$conf] = $this->config->get($conf);
			}
		}
		
		
		
	

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/UniversumControl', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/UniversumControl', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

	

		if (isset($this->request->post['UniversumControl_module'])) {
			$modules = explode(',', $this->request->post['UniversumControl_module']);
		} elseif ($this->config->get('UniversumControl_module') != '') {
			$modules = explode(',', $this->config->get('UniversumControl_module'));
		} else {
			$modules = array();
		}			
				
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();
				
		foreach ($modules as $module) {
			if (isset($this->request->post['UniversumControl_' . $module . '_layout_id'])) {
				$this->data['UniversumControl_' . $module . '_layout_id'] = $this->request->post['UniversumControl_' . $module . '_layout_id'];
			} else {
				$this->data['UniversumControl_' . $module . '_layout_id'] = $this->config->get('UniversumControl_' . $module . '_layout_id');
			}	
			
			if (isset($this->request->post['UniversumControl_' . $module . '_position'])) {
				$this->data['UniversumControl_' . $module . '_position'] = $this->request->post['UniversumControl_' . $module . '_position'];
			} else {
				$this->data['UniversumControl_' . $module . '_position'] = $this->config->get('UniversumControl_' . $module . '_position');
			}	
			
			if (isset($this->request->post['UniversumControl_' . $module . '_status'])) {
				$this->data['UniversumControl_' . $module . '_status'] = $this->request->post['UniversumControl_' . $module . '_status'];
			} else {
				$this->data['UniversumControl_' . $module . '_status'] = $this->config->get('UniversumControl_' . $module . '_status');
			}	
						
			if (isset($this->request->post['UniversumControl_' . $module . '_sort_order'])) {
				$this->data['UniversumControl_' . $module . '_sort_order'] = $this->request->post['UniversumControl_' . $module . '_sort_order'];
			} else {
				$this->data['UniversumControl_' . $module . '_sort_order'] = $this->config->get('UniversumControl_' . $module . '_sort_order');
			}				
		}
		

		
		$this->data['modules'] = $modules;
		
		if (isset($this->request->post['UniversumControl_module'])) {
			$this->data['UniversumControl_module'] = $this->request->post['UniversumControl_module'];
		} else {
			$this->data['UniversumControl_module'] = $this->config->get('UniversumControl_module');
		}

		$this->template = 'module/UniversumControl.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
		


		$this->response->setOutput($this->render());
	}

	
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/UniversumControl')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}


}
?>