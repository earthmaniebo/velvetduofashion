<?php
################################################################################################
#  DIY Module Builder for Opencart 1.5.0.x From HostJars http://opencart.hostjars.com    	   #
################################################################################################
?>

<?php

class ControllerModuleUniversumControl extends Controller {
	protected function index() {
		//Load the language file for this module - catalog/language/module/my_module.php
		$this->language->load('module/UniversumControl');

		//Get the title from the language file
      	$this->data['heading_title'] = $this->language->get('heading_title');


/*
 * 
 * 
 * What you do here depends on what you want your module to do. You should call your model methods to get some
 * data out of the DB and then make it accessible to your view file by putting it in the $this->data[] array.
 * 
 * 
 * 
 */

//Example functionality: pull through customer firstnames and make them available to the view.

		$this->data['customers'] = $this->model_module_my_module->getCustomerFirstnames();


		//Choose which template to display this module with

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/UniversumControl.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/UniversumControl.tpl';
		} else {
			$this->template = 'default/template/module/UniversumControl.tpl';
		}

		//Render the page with the chosen template
		$this->render();
	}
}
?>