<?php
class ControllerModuleproductAccordion extends Controller {
	protected function index($setting) {
		$this->language->load('module/productAccordion'); 

      	$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['button_cart'] = $this->language->get('button_cart');
		
		$this->load->model('catalog/product'); 
		
		$this->load->model('tool/image');
		
		$this->data['setting'] = $setting;

		$this->data['products'] = array();

		$products = explode(',', $this->config->get('productAccordion_product'));		

		if (empty($setting['limit'])) {
			$setting['limit'] = 5;
		}
		
		$products = array_slice($products, 0, (int)$setting['limit']);
		
		foreach ($products as $product_id) {
			$product_info = $this->model_catalog_product->getProduct($product_id);
			
			if ($product_info) {
				if ($product_info['image']) {
					$image = $this->model_tool_image->resize($product_info['image'], $setting['image_width'], $setting['image_height']);
					$image_big = $this->model_tool_image->resize($product_info['image'],  ($this->config->get('config_image_product_width') * 2), ($this->config->get('config_image_product_height') * 2));
				} else {
					$image = false;
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
						
				if ((float)$product_info['special']) {
					$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}
				
				/*------------------------------------------------------------------------
			  Countdown by Dimitar Koev
			-------------------------------------------------------------------------*/
			$this->load->model('catalog/UniversumGraboCount');
			
			
			
			$specials_date = $this->model_catalog_UniversumGraboCount->getProductDiscountDates($product_info['product_id']);
			$specials_purchased = $this->model_catalog_UniversumGraboCount->getVouchersBought($product_info['product_id']);
			
			$this->data['quantity_start'] = $product_info['quantity'];
			$this->data['quantity_left'] = $product_info['quantity'] - $specials_purchased['quantity_purchased'];
			
			if ($specials_date['date_end']) {				
				list($year,$month,$day)    =    explode('-',$specials_date['date_end']);
				$stringDate = $year.', '.$month.' - 1, '.$day;
			}else{
				$stringDate = 0;
			}
			
			/*------------------------------------------------------------------------
			
			-------------------------------------------------------------------------*/
				
				if ($this->config->get('config_review_status')) {
					$rating = $product_info['rating'];
				} else {
					$rating = false;
				}
					
				$this->data['products'][] = array(
					'product_id' => $product_info['product_id'],
					'thumb'   	 => $image,
					'big_feature'   => $image_big,
					'startdate'    	 => $product_info['date_added'],
					'name'    	 => $product_info['name'],
					'description' => mb_substr(strip_tags(html_entity_decode($product_info['description'])), 0, 128, 'UTF-8') . '...',
					'date_end'  => $stringDate,
					'quantity' => $product_info['quantity'],
					'quantity_start' =>  $specials_purchased['quantity_purchased'],
					'price'   	 => $price,
					'special' 	 => $special,
					'rating'     => $rating,
					'reviews'    => sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']),
					'href'    	 => $this->url->link('product/product', 'product_id=' . $product_info['product_id']),
				);
			}
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/productAccordion.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/productAccordion.tpl';
		} else {
			$this->template = 'default/template/module/productAccordion.tpl';
		}

		$this->render();
	}
}
?>