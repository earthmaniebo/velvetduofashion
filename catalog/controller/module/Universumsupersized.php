<?php  
class ControllerModuleUniversumsupersized extends Controller {
	protected function index($setting) {
		static $module = 0;
		
		$this->load->model('design/banner');
		$this->load->model('tool/image');
		
		$this->document->addScript('catalog/view/theme/' . $this->config->get('config_template') . '/js/supersized/js/supersized.3.2.7.min.js');
		$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/js/supersized/css/supersized.css');
		
		
		$this->data['width'] = $setting['width'];
		$this->data['height'] = $setting['height'];
		
		$this->data['banners'] = array();
		
		$results = $this->model_design_banner->getBanner($setting['banner_id']);
		  
		foreach ($results as $result) {
			if (file_exists(DIR_IMAGE . $result['image'])) {
				$this->data['banners'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
				);
			}
		}
		
		$this->data['module'] = $module++;
						
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/Universumsupersized.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/Universumsupersized.tpl';
		} else {
			$this->template = 'default/template/module/Universumsupersized.tpl';
		}
		
		$this->render();
	}
}
?>