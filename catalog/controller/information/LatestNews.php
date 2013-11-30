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

class ControllerInformationLatestNews extends Controller {
	

	public function index() {
		
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$this->data['base'] = $this->config->get('config_ssl');
		} else {
			$this->data['base'] = $this->config->get('config_url');
		}
	
    	$this->load->language('information/LatestNews');
		
		$this->load->model('catalog/LatestNews');
		
		$this->data['app_id']         = $this->config->get('facebook_comments_app_id');

		$this->data['breadcrumbs'] = array();

		$this->data['breadcrumbs'][] = array(
			'href'      => $this->url->link('common/home'),
			'text'      => $this->language->get('text_home'),
			'separator' => FALSE
		);

		if (isset($this->request->get['LatestNews_id'])) {
			$LatestNews_id = $this->request->get['LatestNews_id'];
		} else {
			$LatestNews_id = 0;
		}

		$LatestNews_info = $this->model_catalog_LatestNews->getLatestNewsStory($LatestNews_id);

		if ($LatestNews_info) {
	  		$this->document->setTitle($LatestNews_info['title']);

			$this->data['breadcrumbs'][] = array(
				'href'      => $this->url->link('information/LatestNews'),
				'text'      => $this->language->get('heading_title'),
				'separator' => $this->language->get('text_separator')
			);

			$this->data['breadcrumbs'][] = array(
				'href'      => $this->url->link('information/LatestNews', 'LatestNews_id=' . $this->request->get['LatestNews_id']),
				'text'      => $LatestNews_info['title'],
				'separator' => $this->language->get('text_separator')
			);

     		$this->data['LatestNews_info'] = $LatestNews_info;

     		$this->data['heading_title'] = $LatestNews_info['title'];
			
			$this->document->setDescription($LatestNews_info['meta_description']);

			$this->data['description'] = html_entity_decode($LatestNews_info['description'], ENT_QUOTES, 'UTF-8');

			$this->data['text_share'] = $this->language->get('text_share');
			
			$this->data['addthis'] = $this->config->get('LatestNews_LatestNewspage_addthis');
			
			$this->data['min_height'] = $this->config->get('LatestNews_thumb_height');
			
			$this->load->model('tool/image');

			if ($LatestNews_info['image']) { $this->data['image'] = TRUE; } else { $this->data['image'] = FALSE; }

			$this->data['thumb'] = $this->model_tool_image->resize($LatestNews_info['image'], $this->config->get('LatestNews_thumb_width'), $this->config->get('LatestNews_thumb_height'));
			$this->data['popup'] = $this->model_tool_image->resize($LatestNews_info['image'], $this->config->get('LatestNews_popup_width'), $this->config->get('LatestNews_popup_height'));
			

     		$this->data['button_LatestNews'] = $this->language->get('button_LatestNews');
			$this->data['button_continue'] = $this->language->get('button_continue');
			$this->data['comments'] = $this->language->get('text_comments');

			$this->data['LatestNews'] = $this->url->link('information/LatestNews');
			$this->data['continue'] = $this->url->link('common/home');
			
			$this->document->addFBMeta('fb:app_id', $this->config->get('facebook_comments_app_id'));
		
		
			$route = $this->request->get['route'];
			
			if ( $route == 'information/LatestNews' && isset($this->request->get['LatestNews_id'])){
			$current_url = $this->url->link('information/LatestNews', 'LatestNews_id=' . $this->request->get['LatestNews_id'], 'SSL'); 
			$LatestNews_id = $this->request->get['LatestNews_id'];
			$LatestNews_info = $this->model_catalog_LatestNews->getLatestNewsStory($LatestNews_id);
			$this->document->addFBMeta('og:title', trim(strip_tags(html_entity_decode($LatestNews_info['title'], ENT_QUOTES, 'UTF-8'))));
			$this->document->addFBMeta('og:type', 'news');
			$this->document->addFBMeta('og:url', $this->url->link('information/LatestNews', 'LatestNews_id=' . $LatestNews_id, 'SSL'));
			$this->document->addFBMeta('og:image', '');
			$this->document->addFBMeta('og:description', trim(strip_tags(html_entity_decode($LatestNews_info['description'], ENT_QUOTES, 'UTF-8'))));
		
		} else {
				$current_url = 'http';
	   
				/*
				if ($this->request->server["HTTPS"] == "on") {
					$current_url .= "s";
				}
				*/
				
				$current_url .= "://";
				
				if ($this->request->server["SERVER_PORT"] != "80") {
					$current_url .= $this->request->server["SERVER_NAME"] . ":" . $this->request->server["SERVER_PORT"] . $this->request->server["REQUEST_URI"];
				} else {
					$current_url .= $this->request->server["SERVER_NAME"] . $this->request->server["REQUEST_URI"];
				}
		  }
		 
		
		$this->data['current_url'] = $current_url;

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/LatestNews.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/information/LatestNews.tpl';
			} else {
				$this->template = 'default/template/information/LatestNews.tpl';
			}

			$this->children = array(
				'common/column_left',
				'common/column_right',
				'common/content_top',
				'common/content_bottom',
				'common/footer',
				'common/header'
			);

			$this->response->setOutput($this->render());
			
	  	} else {
			
		$url = '';
			
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
			$url .= '&page=' . $this->request->get['page'];
		} else { 
			$page = 1;
		}
		
		$data = array(
			'page' => $page,
			'limit' => 10,
			'start' => 10 * ($page - 1),
		);		
		
		$total = $this->model_catalog_LatestNews->countLatestNews();
		$pagination = new Pagination();
		$pagination->total = $total;
		$pagination->page = $page;
		$pagination->limit = 10;
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('information/LatestNews', '&page={page}', 'SSL');
		
		$this->data['pagination'] = $pagination->render();
					
		$this->document->setTitle($this->language->get('heading_title'));

		$this->data['breadcrumbs'][] = array(
					'href'      => $this->url->link('information/LatestNews'),
					'text'      => $this->language->get('heading_title'),
					'separator' => $this->language->get('text_separator')
		);

		$this->data['heading_title'] = $this->language->get('heading_title');
				
		$this->load->model('tool/image');

		$this->data['text_more'] = $this->language->get('text_more');
		$this->data['text_posted'] = $this->language->get('text_posted');
		$this->data['button_continue'] = $this->language->get('button_continue');
		$this->data['continue'] = $this->url->link('common/home');
		
		$LatestNews_data = $this->model_catalog_LatestNews->getLatestNews($data);		
		$this->data['all_LatestNews'] = array();	
				
				foreach ($LatestNews_data as $LatestNews) {
					$this->data['LatestNews_data'][] = array(
						'id'  	=> $LatestNews['LatestNews_id'],
						'title'        => $LatestNews['title'],
						'thumb'        => $LatestNews['image'],
						'description'  => mb_substr(html_entity_decode($LatestNews['description']), 0, 370, 'UTF-8'),
						'href'         => $this->url->link('information/LatestNews', 'LatestNews_id=' . $LatestNews['LatestNews_id']),
						'posted'   => date($this->language->get('date_format_short'), strtotime($LatestNews['date_added']))
					);
				}

				
				

				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/LatestNews.tpl')) {
					$this->template = $this->config->get('config_template') . '/template/information/LatestNews.tpl';
				} else {
					$this->template = 'default/template/information/LatestNews.tpl';
				}

				$this->children = array(
					'common/column_left',
					'common/column_right',
					'common/content_top',
					'common/content_bottom',
					'common/footer',
					'common/header'
				);

				$this->response->setOutput($this->render());

		}
	}
}
?>
