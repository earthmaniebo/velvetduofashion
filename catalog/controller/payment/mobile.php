<?php
class ControllerPaymentMobile extends Controller {
	protected function index() {
		$this->language->load('payment/mobile');
		
		$this->data['text_instruction'] = $this->language->get('text_instruction');
		$this->data['text_description'] = $this->language->get('text_description');
		$this->data['text_payment'] = $this->language->get('text_payment');
		
		$this->data['button_confirm'] = $this->language->get('button_confirm');
		
		$this->data['bank'] = nl2br($this->config->get('mobile_bank_' . $this->config->get('config_language_id')));

		$this->data['continue'] = $this->url->link('checkout/success');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/mobile.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/payment/mobile.tpl';
		} else {
			$this->template = 'default/template/payment/mobile.tpl';
		}	
		
		$this->render(); 
	}
	
	public function confirm() {
		$this->language->load('payment/mobile');
		
		$this->load->model('checkout/order');
		
		$comment  = $this->language->get('text_instruction') . "\n\n";
		$comment .= $this->config->get('mobile_bank_' . $this->config->get('config_language_id')) . "\n\n";
		$comment .= $this->language->get('text_payment');
		
		$this->model_checkout_order->confirm($this->session->data['order_id'], $this->config->get('mobile_order_status_id'), $comment, true);
	}
}
?>