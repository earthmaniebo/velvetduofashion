<?php 
class ControllerProductCategory extends Controller {  
	public function index() { 
		$this->language->load('product/category');
		
		$this->load->model('catalog/category');
		
		$this->load->model('catalog/product');
		
		$this->load->model('tool/image'); 
		
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.sort_order';
		}

		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else { 
			$page = 1;
		}	
							
		if (isset($this->request->get['limit'])) {
			$limit = $this->request->get['limit'];
		} else {
			$limit = $this->config->get('config_catalog_limit');
		}
					
		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
       		'separator' => false
   		);	
			
		if (isset($this->request->get['path'])) {
			$path = '';
		
			$parts = explode('_', (string)$this->request->get['path']);
		
			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
				} else {
					$path .= '_' . (int)$path_id;
				}
									
				$category_info = $this->model_catalog_category->getCategory($path_id);
				
				if ($category_info) {
	       			$this->data['breadcrumbs'][] = array(
   	    				'text'      => $category_info['name'],
						'href'      => $this->url->link('product/category', 'path=' . $path),
        				'separator' => $this->language->get('text_separator')
        			);
				}
			}		
		
			$category_id = (int)array_pop($parts);
		} else {
			$category_id = 0;
		}
				
		if ((isset($this->request->get['price_min']) && isset($this->session->data['shopbypricefilter']['price_min']) && $this->request->get['price_min'] != $this->session->data['shopbypricefilter']['price_min']) ||
			(isset($this->request->get['price_max']) && isset($this->session->data['shopbypricefilter']['price_max']) && $this->request->get['price_max'] != $this->session->data['shopbypricefilter']['price_max'])) {
				$this->request->get['page'] = 1;
		}

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} elseif (isset($this->session->data['shopbypricefilter']) && $this->session->data['shopbypricefilter']['category_id'] == $category_id && isset($this->session->data['shopbypricefilter']['page'])) {
			$page = $this->session->data['shopbypricefilter']['page'];
		} else {
			$page = 1;
		} 
		            
		$category_info = $this->model_catalog_category->getCategory($category_id);
	
		if ($category_info) {
	  		$this->document->setTitle($category_info['name']);
			$this->document->setDescription($category_info['meta_description']);
			$this->document->setKeywords($category_info['meta_keyword']);
			
			$this->data['heading_title'] = $category_info['name'];
			
			$this->data['text_refine'] = $this->language->get('text_refine');
			$this->data['text_empty'] = $this->language->get('text_empty');			
			$this->data['text_quantity'] = $this->language->get('text_quantity');
			$this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
			$this->data['text_model'] = $this->language->get('text_model');
			$this->data['text_price'] = $this->language->get('text_price');
			$this->data['text_tax'] = $this->language->get('text_tax');
			$this->data['text_points'] = $this->language->get('text_points');
			$this->data['text_compare'] = sprintf($this->language->get('text_compare'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
			$this->data['text_display'] = $this->language->get('text_display');
			$this->data['text_list'] = $this->language->get('text_list');
			$this->data['text_grid'] = $this->language->get('text_grid');
			$this->data['text_sort'] = $this->language->get('text_sort');
			$this->data['text_limit'] = $this->language->get('text_limit');
					
			$this->data['button_cart'] = $this->language->get('button_cart');
			$this->data['button_wishlist'] = $this->language->get('button_wishlist');
			$this->data['button_compare'] = $this->language->get('button_compare');
			$this->data['button_continue'] = $this->language->get('button_continue');
					
			if ($category_info['image']) {
				$this->data['thumb'] = $this->model_tool_image->resize($category_info['image'], $this->config->get('config_image_category_width'), $this->config->get('config_image_category_height'));
			} else {
				$this->data['thumb'] = '';
			}
									
			$this->data['description'] = html_entity_decode($category_info['description'], ENT_QUOTES, 'UTF-8');
			$this->data['compare'] = $this->url->link('product/compare');
			
			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}	
			
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
											
			$filter = array();

			if (isset($this->request->get['price_min'])) {
				$filter['price_min'] = $this->data['price_min'] = $this->request->get['price_min'];
			} elseif (isset($this->session->data['shopbypricefilter']) && $this->session->data['shopbypricefilter']['category_id'] == $category_id && isset($this->session->data['shopbypricefilter']['price_min'])) {
				$filter['price_min'] = $this->data['price_min'] = $this->session->data['shopbypricefilter']['price_min'];
			}

			if (isset($this->request->get['price_max'])) {
				$filter['price_max'] = $this->data['price_max'] = $this->request->get['price_max'];
			} elseif (isset($this->session->data['shopbypricefilter']) && $this->session->data['shopbypricefilter']['category_id'] == $category_id && isset($this->session->data['shopbypricefilter']['price_max'])) {
				$filter['price_max'] = $this->data['price_max'] = $this->session->data['shopbypricefilter']['price_max'];
			}

			$this->session->data['shopbypricefilter'] = array(
				'category_id' => $category_id,
				'page' => $page
			);

			if (isset($filter['price_min'])) {
				$this->session->data['shopbypricefilter']['price_min'] = $filter['price_min'];
			}

			if (isset($filter['price_max'])) {
				$this->session->data['shopbypricefilter']['price_max'] = $filter['price_max'];
			}
			
			
			$this->data['categories'] = array();
			
			$results = $this->model_catalog_category->getCategories($category_id);
			
			foreach ($results as $result) {
				$data = array(
					'filter_category_id'  => $result['category_id'],
					'filter_sub_category' => true
				);
				
				$product_total = $this->model_catalog_product->getTotalProducts($data);				
				
				$this->data['categories'][] = array(
					'name'  => $result['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '_' . $result['category_id'] . $url),
					'pic'	=> $this->model_tool_image->resize($result['image'], 80, 80)
				);
			}
						
			$data = array(
				'filter_category_id' => $category_id, 
				'sort'               => $sort,
				'order'              => $order,
				'start'              => ($page - 1) * $limit,
				'limit'              => $limit
			);
			
			$this->document->addScript('catalog/view/javascript/jquery/ui/minified/jquery.ui.slider.min.js');

			$this->document->addStyle('catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery.ui.all.css');

			$this->data['shopbypricefilter_url'] = $this->data['breadcrumbs'][count($this->data['breadcrumbs']) - 1]['href'];
			$this->data['shopbypricefilter_url'] .= (strpos($this->data['shopbypricefilter_url'], '?') === false ? '?' : '&');

			$this->data['shopbypricefilter_loading'] = HTTP_SERVER . 'loading3.gif';

			$sql = $this->db->query("SELECT `symbol_left`, `symbol_right` FROM `" . DB_PREFIX . "currency` WHERE currency_id = " . (int)$this->currency->getId() . " LIMIT 1");

			$this->data['shopbypricefilter_format'] = array(
				'symbol_left'    => $sql->row['symbol_left'],
				'symbol_right'   => $sql->row['symbol_right'],
				'decimal_point'  => $this->language->get('decimal_point'),
				'thousand_point' => $this->language->get('thousand_point')
			);

			$products = array();

			$this->data['shopbypricefilter_min'] = FALSE;
			$this->data['shopbypricefilter_max'] = 0;
			
			
			
			
			$results = $this->model_catalog_product->getProducts($data, TRUE); 
			
			
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
					$image_big = $this->model_tool_image->resize($result['image'],  ($this->config->get('config_image_product_width') * 2), ($this->config->get('config_image_product_height') * 2));
				} else {
					$image = false;
				}
				
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));

					$filter_price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), NULL, NULL, FALSE);
			
				} else {
					$price = false;
				}
				
				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));

					$filter_price = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), NULL, NULL, FALSE); 
			
				} else {
					$special = false;
				}	
				
				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}				
				
				
				if ($this->data['shopbypricefilter_min'] === FALSE || $filter_price < $this->data['shopbypricefilter_min']) {
					$this->data['shopbypricefilter_min'] = floor($filter_price);
				}

				if ($filter_price > $this->data['shopbypricefilter_max']) {
					$this->data['shopbypricefilter_max'] = ceil($filter_price);
				}

				if (isset($filter['price_min']) && $filter_price < $filter['price_min']) {
					continue;
				}

				if (isset($filter['price_max']) && $filter_price > $filter['price_max']) {
					continue;
				}
							
				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
				
		    /*------------------------------------------------------------------------
			Countdown by Dimitar Koev
			-------------------------------------------------------------------------*/
			$this->load->model('catalog/UniversumGraboCount');
			
			
			
			$specials_date = $this->model_catalog_UniversumGraboCount->getProductDiscountDates($result['product_id']);
			$specials_purchased = $this->model_catalog_UniversumGraboCount->getVouchersBought($result['product_id']);
			
			$this->data['quantity_start'] = $result['quantity'];
			$this->data['quantity_left'] = $result['quantity'] - $specials_purchased['quantity_purchased'];
			
			if ($specials_date['date_end']) {				
				list($year,$month,$day)    =    explode('-',$specials_date['date_end']);
				$stringDate = $year.', '.$month.' - 1, '.$day;
			}else{
				$stringDate = 0;
			}
			
			/*------------------------------------------------------------------------
			
			-------------------------------------------------------------------------*/
												
				 $products[] = array( 
			
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'big_feature'   => $image_big,
					'startdate'    	 => $result['date_added'],
					'name'        => $result['name'],
					'date_end'  => $stringDate,
					'quantity' => $result['quantity'],
					'quantity_start' =>  $specials_purchased['quantity_purchased'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $result['rating'],
					'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'        => $this->url->link('product/product', 'path=' . $this->request->get['path'] . '&product_id=' . $result['product_id'])
				);
			}
			
			$product_total = count($products);

			$this->data['products'] = array_slice($products, (($page - 1) *  $limit), $limit);
						
			
			$url = '';
	
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
							
			
			$this->data['shopbypricefilter_sorts'] = array();

			$this->data['shopbypricefilter_sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => 'sort=p.sort_order&order=ASC'
			);

			$this->data['shopbypricefilter_sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => 'sort=pd.name&order=ASC'
			);

			$this->data['shopbypricefilter_sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => 'sort=pd.name&order=DESC'
			);

			$this->data['shopbypricefilter_sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => 'sort=p.price&order=ASC'
			);

			$this->data['shopbypricefilter_sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => 'sort=p.price&order=DESC'
			);

			if ($this->config->get('config_review_status')) {
				$this->data['shopbypricefilter_sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => 'sort=rating&order=DESC'
				);

				$this->data['shopbypricefilter_sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => 'sort=rating&order=ASC'
				);
			}

			$this->data['shopbypricefilter_sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => 'sort=p.model&order=ASC'
			);

			$this->data['shopbypricefilter_sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => 'sort=p.model&order=DESC'
			);
			

			
			$this->data['sorts'] = array();
			
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_default'),
				'value' => 'p.sort_order-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.sort_order&order=ASC' . $url)
			);
			
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_name_asc'),
				'value' => 'pd.name-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=ASC' . $url)
			);

			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_name_desc'),
				'value' => 'pd.name-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=pd.name&order=DESC' . $url)
			);

			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_price_asc'),
				'value' => 'p.price-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=ASC' . $url)
			); 

			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_price_desc'),
				'value' => 'p.price-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.price&order=DESC' . $url)
			); 
			
			if ($this->config->get('config_review_status')) {
				$this->data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_desc'),
					'value' => 'rating-DESC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=DESC' . $url)
				); 
				
				$this->data['sorts'][] = array(
					'text'  => $this->language->get('text_rating_asc'),
					'value' => 'rating-ASC',
					'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=rating&order=ASC' . $url)
				);
			}
			
			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_model_asc'),
				'value' => 'p.model-ASC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=ASC' . $url)
			);

			$this->data['sorts'][] = array(
				'text'  => $this->language->get('text_model_desc'),
				'value' => 'p.model-DESC',
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . '&sort=p.model&order=DESC' . $url)
			);
			
			$url = '';
	
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			
			
			$this->data['shopbypricefilter_limits'] = array();

			$this->data['shopbypricefilter_limits'][] = array(
				'text'  => $this->config->get('config_catalog_limit'),
				'value' => $this->config->get('config_catalog_limit'),
				'href'  => 'limit=' . $this->config->get('config_catalog_limit')
			);

			$this->data['shopbypricefilter_limits'][] = array(
				'text'  => 25,
				'value' => 25,
				'href'  => 'limit=25'
			);

			$this->data['shopbypricefilter_limits'][] = array(
				'text'  => 50,
				'value' => 50,
				'href'  => 'limit=50'
			);

			$this->data['shopbypricefilter_limits'][] = array(
				'text'  => 75,
				'value' => 75,
				'href'  => 'limit=75'
			);

			$this->data['shopbypricefilter_limits'][] = array(
				'text'  => 100,
				'value' => 100,
				'href'  => 'limit=100'
			);
			
			
			$this->data['limits'] = array();
			
			$this->data['limits'][] = array(
				'text'  => $this->config->get('config_catalog_limit'),
				'value' => $this->config->get('config_catalog_limit'),
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=' . $this->config->get('config_catalog_limit'))
			);
						
			$this->data['limits'][] = array(
				'text'  => 25,
				'value' => 25,
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=25')
			);
			
			$this->data['limits'][] = array(
				'text'  => 50,
				'value' => 50,
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=50')
			);

			$this->data['limits'][] = array(
				'text'  => 75,
				'value' => 75,
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=75')
			);
			
			$this->data['limits'][] = array(
				'text'  => 100,
				'value' => 100,
				'href'  => $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&limit=100')
			);
						
			$url = '';
	
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
	
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
					
			$pagination = new Pagination();
			$pagination->total = $product_total;
			$pagination->page = $page;
			$pagination->limit = $limit;
			$pagination->text = $this->language->get('text_pagination');
			$pagination->url = $this->url->link('product/category', 'path=' . $this->request->get['path'] . $url . '&page={page}');
		
			$this->data['pagination'] = $pagination->render();
		
			$this->data['sort'] = $sort;
			$this->data['order'] = $order;
			$this->data['limit'] = $limit;
		
			$this->data['continue'] = $this->url->link('common/home');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/category.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/product/category.tpl';
			} else {
				$this->template = 'default/template/product/category.tpl';
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
			
			if (isset($this->request->get['path'])) {
				$url .= '&path=' . $this->request->get['path'];
			}
									
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}	

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
				
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
						
			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}
						
			$this->data['breadcrumbs'][] = array(
				'text'      => $this->language->get('text_error'),
				'href'      => $this->url->link('product/category', $url),
				'separator' => $this->language->get('text_separator')
			);
				
			$this->document->setTitle($this->language->get('text_error'));

      		$this->data['heading_title'] = $this->language->get('text_error');

      		$this->data['text_error'] = $this->language->get('text_error');

      		$this->data['button_continue'] = $this->language->get('button_continue');

      		$this->data['continue'] = $this->url->link('common/home');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/error/not_found.tpl';
			} else {
				$this->template = 'default/template/error/not_found.tpl';
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