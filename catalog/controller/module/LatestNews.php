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
?>
<?php

class ControllerModuleLatestNews extends Controller {

	private $_name = 'LatestNews';

	protected function index($setting) {
		static $module = 0;
	
		$this->language->load('module/' . $this->_name);

      	$this->data['heading_title'] = $this->language->get('heading_title');

		$this->load->model('localisation/language');

		$languages = $this->model_localisation_language->getLanguages();
		
		foreach ($languages as $language) {
			if (isset($this->request->post[$this->_name . '_customtitle' . $language['language_id']])) {
				$this->data[$this->_name . '_customtitle' . $language['language_id']] = $this->request->post[$this->_name . '_customtitle' . $language['language_id']];
			} else {
				$this->data[$this->_name . '_customtitle' . $language['language_id']] = $this->config->get($this->_name . '_customtitle' . $language['language_id']);
			}
		}
		
		$this->data['customtitle'] = $this->config->get($this->_name . '_customtitle' . $this->config->get('config_language_id'));
		$this->data['header'] = $this->config->get($this->_name . '_header');
		
		if (!$this->data['customtitle']) { $this->data['customtitle'] = $this->data['heading_title']; } 
		if (!$this->data['header']) { $this->data['customtitle'] = ''; }
		
		$this->data['icon'] = $this->config->get($this->_name . '_icon');
		$this->data['box'] = $this->config->get($this->_name . '_box');
		$this->data['setting'] = $setting;
		$this->load->model('catalog/LatestNews');
		
		$this->load->model('tool/image');

		$this->data['text_more'] = $this->language->get('text_more');
		$this->data['text_posted'] = $this->language->get('text_posted');

		$this->data['show_headline'] = $this->config->get($this->_name . '_headline_module');

		$this->data['LatestNews_count'] = $this->model_catalog_LatestNews->getTotalLatestNews();
		$this->data['LatestNews_limit'] = $setting['limit'];
		
		if ($this->data['LatestNews_count'] > $this->data['LatestNews_limit']) { $this->data['showbutton'] = true; } else { $this->data['showbutton'] = false; }
		
		$this->data['buttonlist'] = $this->language->get('buttonlist');
		
		$this->data['LatestNewslist'] = $this->url->link('information/LatestNews');

		$this->data['LatestNews'] = array();

		$results = $this->model_catalog_LatestNews->getLatestNewsShorts($setting['limit']);

		foreach ($results as $result) {
			$this->data['LatestNews'][] = array(
				'title'        => mb_substr(html_entity_decode($result['title']), 0, 25, 'UTF-8'),
				'thumb'        => $result['image'],
				'description'  => mb_substr(html_entity_decode($result['description']), 0, $setting['numchars'], 'UTF-8'),
				'href'         => $this->url->link('information/LatestNews', 'LatestNews_id=' . $result['LatestNews_id']),
				'posted'   => date($this->language->get('date_format_short'), strtotime($result['date_added']))
			);
		}

		$this->data['module'] = $module++; 

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/' . $this->_name . '.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/' . $this->_name . '.tpl';
		} else {
			$this->template = 'default/template/module/' . $this->_name . '.tpl';
		}

		$this->render();
	}
}
?>
