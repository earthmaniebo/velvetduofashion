<?php
/*------------------------------------------------------------------------
//-----------------------------------------------------
// LatestNews Module for Universum Premium theme by Dimitar Koev 
// Copyright (C) 2012 Dimitar Koev. All Rights Reserved!
// Author: Dimitar Koev
// Author websites: http://www.althemist.com  /  http://www.dimitarkoev.com
// @license - Copyrighted Commercial Software                           
// support@althemist.com                         
//-----------------------------------------------------
-------------------------------------------------------------------------*/

class ControllerModuleLatestNews extends Controller {
	private $error = array();
	private $_name = 'LatestNews';
	private $_version = '1.5.4'; 

	public function index() {
	
		$this->load->language('module/' . $this->_name);
		
		$this->data[$this->_name . '_version'] = $this->_version;
		
		$this->load->model('catalog/LatestNews');
		$this->document->addStyle('view/stylesheet/css/UniversumControl_LatestNews.css');

		$this->model_catalog_LatestNews->checkLatestNews();

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting($this->_name, $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->getModule();
	}

	public function insert() {
		$this->load->language('module/' . $this->_name);
		$this->load->model('catalog/LatestNews');

		$this->document->setTitle($this->language->get('heading_title'));

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validateForm())) {
			$this->model_catalog_LatestNews->addLatestNews($this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect($this->url->link('module/LatestNews/listing', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->getForm();
	}

	public function update() {
		$this->load->language('module/' . $this->_name);
		$this->load->model('catalog/LatestNews');

		$this->document->setTitle($this->language->get('heading_title'));

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validateForm())) {
			$this->model_catalog_LatestNews->editLatestNews($this->request->get['LatestNews_id'], $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect($this->url->link('module/LatestNews/listing', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->getForm();
	}

	public function delete() {
		$this->load->language('module/' . $this->_name);
		$this->load->model('catalog/LatestNews');

		$this->document->setTitle($this->language->get('heading_title'));

		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $LatestNews_id) {
				$this->model_catalog_LatestNews->deleteLatestNews($LatestNews_id);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$this->redirect($this->url->link('module/LatestNews/listing', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->getList();
	}

	public function listing() {
		$this->load->language('module/' . $this->_name);

		$this->document->setTitle($this->language->get('heading_title'));
		$this->document->addStyle('view/stylesheet/css/UniversumControl_LatestNews.css');

		$this->getList();
	}

	private function getModule() {
		$this->load->language('module/' . $this->_name);
		$this->load->model('catalog/LatestNews');

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_yes'] = $this->language->get('text_yes');
		$this->data['text_no'] = $this->language->get('text_no');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');
		$this->data['text_module_settings'] = $this->language->get('text_module_settings');

		$this->data['entry_customtitle'] = $this->language->get('entry_customtitle');
		$this->data['entry_header'] = $this->language->get('entry_header'); 
		$this->data['entry_icon'] = $this->language->get('entry_icon');
		$this->data['entry_box'] = $this->language->get('entry_box');
		$this->data['entry_yes'] = $this->language->get('entry_yes'); 
		$this->data['entry_no']	= $this->language->get('entry_no');
		
		$this->data['entry_template'] = $this->language->get('entry_template');

		$this->data['entry_headline_module'] = $this->language->get('entry_headline_module');
		$this->data['entry_LatestNewspage_thumb'] = $this->language->get('entry_LatestNewspage_thumb');
		$this->data['entry_LatestNewspage_popup'] = $this->language->get('entry_LatestNewspage_popup');
		$this->data['entry_LatestNewspage_addthis'] = $this->language->get('entry_LatestNewspage_addthis');
		$this->data['entry_headline_chars'] = $this->language->get('entry_headline_chars');
		
		$this->data['entry_limit'] = $this->language->get('entry_limit');
		$this->data['entry_headline'] = $this->language->get('entry_headline');
		$this->data['entry_app_id']        = $this->language->get('entry_app_id');
		$this->data['entry_numchars'] = $this->language->get('entry_numchars');	
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');

		$this->data['button_LatestNews'] = $this->language->get('button_LatestNews');
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->request->post['facebook_comments_app_id'])){
			$this->data['facebook_comments_app_id'] = $this->request->post['facebook_comments_app_id'];
		} elseif ($this->config->get('facebook_comments_app_id')) {
			$this->data['facebook_comments_app_id'] = $this->config->get('facebook_comments_app_id');
		} else {
			$this->data['facebook_comments_app_id'] = '';
		}

 		if (isset($this->error['numchars'])) {
			$this->data['error_numchars'] = $this->error['numchars'];
		} else {
			$this->data['error_numchars'] = '';
		}

		if (isset($this->error['LatestNewspage_thumb'])) {
			$this->data['error_LatestNewspage_thumb'] = $this->error['LatestNewspage_thumb'];
		} else {
			$this->data['error_LatestNewspage_thumb'] = '';
		}

		if (isset($this->error['LatestNewspage_popup'])) {
			$this->data['error_LatestNewspage_popup'] = $this->error['LatestNewspage_popup'];
		} else {
			$this->data['error_LatestNewspage_popup'] = '';
		}

		if (isset($this->error['module_chars'])) {
			$this->data['error_module_chars'] = $this->error['module_chars'];
		} else {
			$this->data['error_module_chars'] = array();
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
			'href'      => $this->url->link('module/' . $this->_name, 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);

		$this->data['LatestNews'] = $this->url->link('module/LatestNews/listing', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['action'] = $this->url->link('module/' . $this->_name, 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['templates'] = array();

		$directories = glob(DIR_CATALOG . 'view/theme/*', GLOB_ONLYDIR);
		
		foreach ($directories as $directory) {
			$this->data['templates'][] = basename($directory);
		}	
		
		if (isset($this->request->post['config_template'])) {
			$this->data['config_template'] = $this->request->post['config_template'];
		} else {
			$this->data['config_template'] = $this->config->get('config_template');			
		}	
		
		$this->load->model('localisation/language');
		
		$languages = $this->model_localisation_language->getLanguages();
		
		foreach ($languages as $language) {
			if (isset($this->request->post[$this->_name . '_customtitle' . $language['language_id']])) {
				$this->data[$this->_name . '_customtitle' . $language['language_id']] = $this->request->post[$this->_name . '_customtitle' . $language['language_id']];
			} else {
				$this->data[$this->_name . '_customtitle' . $language['language_id']] = $this->config->get($this->_name . '_customtitle' . $language['language_id']);
			}
		}
		
		$this->data['languages'] = $languages;
		
		if (isset($this->request->post[$this->_name . '_header'])) { 
			$this->data[$this->_name . '_header'] = $this->request->post[$this->_name . '_header']; 
		} else { 
			$this->data[$this->_name . '_header'] = $this->config->get($this->_name . '_header'); 
		} 		
		if (isset($this->request->post[$this->_name . '_icon'])) { 
			$this->data[$this->_name . '_icon'] = $this->request->post[$this->_name . '_icon']; 
		} else { 
			$this->data[$this->_name . '_icon'] = $this->config->get($this->_name . '_icon'); 
		} 
		if (isset($this->request->post[$this->_name . '_box'])) { 
			$this->data[$this->_name . '_box'] = $this->request->post[$this->_name . '_box']; 
		} else { 
			$this->data[$this->_name . '_box'] = $this->config->get($this->_name . '_box'); 
		} 
		
		if (isset($this->request->post[$this->_name . '_template'])) {
			$this->data[$this->_name . '_template'] = $this->request->post[$this->_name . '_template'];
		} else {
			$this->data[$this->_name . '_template'] = $this->config->get($this->_name . '_template');
		}

		if (isset($this->request->post[$this->_name . '_headline_module'])) {
			$this->data[$this->_name . '_headline_module'] = $this->request->post[$this->_name . '_headline_module'];
		} else {
			$this->data[$this->_name . '_headline_module'] = $this->config->get($this->_name . '_headline_module');
		}

		if (isset($this->request->post[$this->_name . '_thumb_width'])) {
			$this->data[$this->_name . '_thumb_width'] = $this->request->post[$this->_name . '_thumb_width'];
		} else {
			$this->data[$this->_name . '_thumb_width'] = $this->config->get($this->_name . '_thumb_width');
		}
		if (isset($this->request->post[$this->_name . '_thumb_height'])) {
			$this->data[$this->_name . '_thumb_height'] = $this->request->post[$this->_name . '_thumb_height'];
		} else {
			$this->data[$this->_name . '_thumb_height'] = $this->config->get($this->_name . '_thumb_height');
		}
		if (isset($this->request->post[$this->_name . '_popup_width'])) {
			$this->data[$this->_name . '_popup_width'] = $this->request->post[$this->_name . '_popup_width'];
		} else {
			$this->data[$this->_name . '_popup_width'] = $this->config->get($this->_name . '_popup_width');
		}
		if (isset($this->request->post[$this->_name . '_popup_height'])) {
			$this->data[$this->_name . '_popup_height'] = $this->request->post[$this->_name . '_popup_height'];
		} else {
			$this->data[$this->_name . '_popup_height'] = $this->config->get($this->_name . '_popup_height');
		}	
		if (isset($this->request->post[$this->_name . '_LatestNewspage_addthis'])) {
			$this->data[$this->_name . '_LatestNewspage_addthis'] = $this->request->post[$this->_name . '_LatestNewspage_addthis'];
		} else {
			$this->data[$this->_name . '_LatestNewspage_addthis'] = $this->config->get($this->_name . '_LatestNewspage_addthis');
		}
		
		if (isset($this->request->post[$this->_name . '_headline_chars'])) {
			$this->data[$this->_name . '_headline_chars'] = $this->request->post[$this->_name . '_headline_chars'];
		} else {
			$this->data[$this->_name . '_headline_chars'] = $this->config->get($this->_name . '_headline_chars');
		}

		$this->data['modules'] = array();
		
		if (isset($this->request->post[$this->_name . '_module'])) {
			$this->data['modules'] = $this->request->post[$this->_name . '_module'];
		} elseif ($this->config->get($this->_name . '_module')) { 
			$this->data['modules'] = $this->config->get($this->_name . '_module');
		}
	
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->template = 'module/LatestNews.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

	private function getList() {	
		$this->load->language('module/' . $this->_name);
		$this->load->model('catalog/LatestNews');

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_no_results'] = $this->language->get('text_no_results');

		$this->data['column_image'] = $this->language->get('column_image');		
		$this->data['column_title'] = $this->language->get('column_title');
		$this->data['column_date_added'] = $this->language->get('column_date_added');
		$this->data['column_status'] = $this->language->get('column_status');
		$this->data['column_action'] = $this->language->get('column_action');		

		$this->data['button_module'] = $this->language->get('button_module');
		$this->data['button_insert'] = $this->language->get('button_insert');
		$this->data['button_delete'] = $this->language->get('button_delete');

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'text'      => $this->language->get('text_home'),
			'separator' => FALSE
		);

		$this->data['breadcrumbs'][] = array(
			'href'      => $this->url->link('module/LatestNews/listing', 'token=' . $this->session->data['token'], 'SSL'),
			'text'      => $this->language->get('heading_title'),
			'separator' => ' :: '
		);

		$this->data['module'] = $this->url->link('module/LatestNews', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['insert'] = $this->url->link('module/LatestNews/insert', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['delete'] = $this->url->link('module/LatestNews/delete', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['totalLatestNews'] = $this->model_catalog_LatestNews->getTotalLatestNews();
		
		$this->load->model('tool/image');
		
		$this->data['LatestNews'] = array();

		$results = $this->model_catalog_LatestNews->getLatestNews();

    	foreach ($results as $result) {
			$action = array();

			$action[] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('module/LatestNews/update', 'token=' . $this->session->data['token'] . '&LatestNews_id=' . $result['LatestNews_id'], 'SSL')
			);
			
			if ($result['image'] && file_exists(DIR_IMAGE . $result['image'])) {
				$image = $this->model_tool_image->resize($result['image'], 40, 40);
			} else {
				$image = $this->model_tool_image->resize('no_image.jpg', 40, 40);
			}

			$this->data['LatestNews'][] = array(
				'LatestNews_id'     => $result['LatestNews_id'],
				'title'       	=> $result['title'],
				'image'      => $image,
				'date_added'  => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
				'status'      	=> ($result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled')),
				'selected'    => isset($this->request->post['selected']) && in_array($result['LatestNews_id'], $this->request->post['selected']),
				'action'      => $action
			);
		}

		$this->template = 'module/LatestNews/list.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

	private function getForm() {
		$this->load->language('module/' . $this->_name);
		$this->load->model('catalog/LatestNews');

		$this->data['heading_title'] = $this->language->get('heading_title');

    	$this->data['text_enabled'] = $this->language->get('text_enabled');
    	$this->data['text_disabled'] = $this->language->get('text_disabled');
    	$this->data['text_default'] = $this->language->get('text_default');
    	$this->data['text_image_manager'] = $this->language->get('text_image_manager');
		$this->data['text_browse'] = $this->language->get('text_browse');
		$this->data['text_clear'] = $this->language->get('text_clear');

		$this->data['entry_title'] = $this->language->get('entry_title');
		$this->data['entry_meta_description'] = $this->language->get('entry_meta_description');
		$this->data['entry_description'] = $this->language->get('entry_description');
		$this->data['entry_store'] = $this->language->get('entry_store');
		$this->data['entry_keyword'] = $this->language->get('entry_keyword');
		$this->data['entry_image'] = $this->language->get('entry_image');
		$this->data['entry_status'] = $this->language->get('entry_status');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');

		$this->data['tab_language'] = $this->language->get('tab_language');
		$this->data['tab_setting'] = $this->language->get('tab_setting');

		$this->data['token'] = $this->session->data['token'];

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		if (isset($this->error['title'])) {
			$this->data['error_title'] = $this->error['title'];
		} else {
			$this->data['error_title'] = '';
		}

		if (isset($this->error['description'])) {
			$this->data['error_description'] = $this->error['description'];
		} else {
			$this->data['error_description'] = '';
		}

		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'text'      => $this->language->get('text_home'),
			'separator' => FALSE
		);

		$this->data['breadcrumbs'][] = array(
			'href'      => $this->url->link('module/LatestNews/listing', 'token=' . $this->session->data['token'], 'SSL'),
			'text'      => $this->language->get('heading_title'),
			'separator' => ' :: '
		);

		if (!isset($this->request->get['LatestNews_id'])) {
			$this->data['action'] = $this->url->link('module/LatestNews/insert', 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$this->data['action'] = $this->url->link('module/LatestNews/update', 'token=' . $this->session->data['token'] . '&LatestNews_id=' . $this->request->get['LatestNews_id'], 'SSL');
		}

		$this->data['cancel'] = $this->url->link('module/LatestNews/listing', 'token=' . $this->session->data['token'], 'SSL');

		if ((isset($this->request->get['LatestNews_id'])) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$LatestNews_info = $this->model_catalog_LatestNews->getLatestNewsStory($this->request->get['LatestNews_id']);
		}

		$this->load->model('localisation/language');

		$this->data['languages'] = $this->model_localisation_language->getLanguages();

		if (isset($this->request->post['LatestNews_description'])) {
			$this->data['LatestNews_description'] = $this->request->post['LatestNews_description'];
		} elseif (isset($this->request->get['LatestNews_id'])) {
			$this->data['LatestNews_description'] = $this->model_catalog_LatestNews->getLatestNewsDescriptions($this->request->get['LatestNews_id']);
		} else {
			$this->data['LatestNews_description'] = array();
		}

		$this->load->model('setting/store');

		$this->data['stores'] = $this->model_setting_store->getStores();

		if (isset($this->request->post['LatestNews_store'])) {
			$this->data['LatestNews_store'] = $this->request->post['LatestNews_store'];
		} elseif (isset($LatestNews_info)) {
			$this->data['LatestNews_store'] = $this->model_catalog_LatestNews->getLatestNewsStores($this->request->get['LatestNews_id']);
		} else {
			$this->data['LatestNews_store'] = array(0);
		}			

		if (isset($this->request->post['keyword'])) {
			$this->data['keyword'] = $this->request->post['keyword'];
		} elseif (isset($LatestNews_info)) {
			$this->data['keyword'] = $LatestNews_info['keyword'];
		} else {
			$this->data['keyword'] = '';
		}

		if (isset($this->request->post['status'])) {
			$this->data['status'] = $this->request->post['status'];
		} elseif (isset($LatestNews_info)) {
			$this->data['status'] = $LatestNews_info['status'];
		} else {
			$this->data['status'] = '';
		}

		if (isset($this->request->post['image'])) {
			$this->data['image'] = $this->request->post['image'];
		} elseif (!empty($LatestNews_info)) {
			$this->data['image'] = $LatestNews_info['image'];
		} else {
			$this->data['image'] = '';
		}
		
		$this->load->model('tool/image');
		
		$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		
		if (isset($this->request->post['image']) && file_exists(DIR_IMAGE . $this->request->post['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
		} elseif (!empty($LatestNews_info) && $LatestNews_info['image'] && file_exists(DIR_IMAGE . $LatestNews_info['image'])) {
			$this->data['thumb'] = $this->model_tool_image->resize($LatestNews_info['image'], 100, 100);
		} else {
			$this->data['thumb'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}

		$this->template = 'module/LatestNews/form.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/LatestNews')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->request->post['LatestNews_headline_chars']) {
			$this->error['numchars'] = $this->language->get('error_numchars');
		}

		if (!$this->request->post['LatestNews_thumb_width'] || !$this->request->post['LatestNews_thumb_height']) {
			$this->error['LatestNewspage_thumb'] = $this->language->get('error_LatestNewspage_thumb');
		}

		if (!$this->request->post['LatestNews_popup_width'] || !$this->request->post['LatestNews_popup_height']) {
			$this->error['LatestNewspage_popup'] = $this->language->get('error_LatestNewspage_popup');
		}

		if (isset($this->request->post['LatestNews_module'])) {
			foreach ($this->request->post['LatestNews_module'] as $key => $value) {
				if (!$value['numchars']) {
					$this->error['module_chars'][$key] = $this->language->get('error_numchars');
				}
			}
		}		

		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

	private function validateForm() {
		if (!$this->user->hasPermission('modify', 'module/LatestNews')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		foreach ($this->request->post['LatestNews_description'] as $language_id => $value) {
			if ((mb_strlen($value['title']) < 3) || (mb_strlen($value['title']) > 64)) {
				$this->error['title'][$language_id] = $this->language->get('error_title');
			}

			if (mb_strlen($value['description']) < 3) {
				$this->error['description'][$language_id] = $this->language->get('error_description');
			}
		}

		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

	private function validateDelete() {
		if (!$this->user->hasPermission('modify', 'module/LatestNews')) {
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
