<?php
/*------------------------------------------------------------------------
//-----------------------------------------------------
// GraboCountdown Module for Universum Premium theme by Dimitar Koev 
// Copyright (C) 2012 Dimitar Koev. All Rights Reserved!
// Author: Dimitar Koev
// Author websites: http://www.althemist.com  /  http://www.dimitarkoev.com
// @license - Copyrighted Commercial Software                           
// support@althemist.com                         
//-----------------------------------------------------
-------------------------------------------------------------------------*/

class ModelCatalogUniversumGraboCount extends ModelCatalogProduct {
	
	public function getProductDiscountDates($product_id) {
      if ($this->customer->isLogged()) {
         $customer_group_id = $this->customer->getCustomerGroupId();
      } else {
         $customer_group_id = $this->config->get('config_customer_group_id');
      }   
      
      $query = $this->db->query("SELECT *, UNIX_TIMESTAMP(date_end) AS date_end_timestamp FROM " . DB_PREFIX . "product_special WHERE product_id = '" . (int)$product_id . "' AND customer_group_id = '" . (int)$customer_group_id . "' AND ((date_start = '0000-00-00' OR date_start < NOW()) AND (date_end = '0000-00-00' OR date_end > NOW())) ORDER BY priority ASC, price ASC LIMIT 1");
      
      if ($query->num_rows) {
         return $query->row;
      } else {
         return FALSE;
      }
   }
   
   public function getVouchersBought($product_id) {      
      
      $query = $this->db->query("SELECT SUM( quantity ) AS quantity_purchased FROM " . DB_PREFIX . "order_product WHERE product_id = '" . (int)$product_id . "' GROUP BY product_id");
      
      if ($query->num_rows) {
         return $query->row;
      } else {
         return FALSE;
      }
   }

}
?>