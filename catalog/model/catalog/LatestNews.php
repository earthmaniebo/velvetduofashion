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

class ModelCatalogLatestNews extends Model {

	public function getLatestNewsStory($LatestNews_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "LatestNews n LEFT JOIN " . DB_PREFIX . "LatestNews_description nd ON (n.LatestNews_id = nd.LatestNews_id) LEFT JOIN " . DB_PREFIX . "LatestNews_to_store n2s ON (n.LatestNews_id = n2s.LatestNews_id) WHERE n.LatestNews_id = '" . (int)$LatestNews_id . "' AND nd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND n2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND n.status = '1'");
		return $query->row;
	}

	public function getLatestNews($data) {
		$sql = "SELECT * FROM " . DB_PREFIX . "LatestNews n LEFT JOIN " . DB_PREFIX . "LatestNews_description nd ON (n.LatestNews_id = nd.LatestNews_id) LEFT JOIN " . DB_PREFIX . "LatestNews_to_store n2s ON (n.LatestNews_id = n2s.LatestNews_id) WHERE nd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND n2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND n.status = '1' ORDER BY n.date_added DESC";
		
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}		
				if ($data['limit'] < 1) {
				$data['limit'] = 10;
			}	
		
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}	
		
		$query = $this->db->query($sql);
		
		return $query->rows;
	}
	
	public function countLatestNews() {
		$count = $this->db->query("SELECT * FROM " . DB_PREFIX . "LatestNews");
	
		return $count->num_rows;
	}

	public function getLatestNewsShorts($limit) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "LatestNews n LEFT JOIN " . DB_PREFIX . "LatestNews_description nd ON (n.LatestNews_id = nd.LatestNews_id) LEFT JOIN " . DB_PREFIX . "LatestNews_to_store n2s ON (n.LatestNews_id = n2s.LatestNews_id) WHERE nd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND n2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND n.status = '1' ORDER BY n.date_added DESC LIMIT " . (int)$limit); 
		return $query->rows;
	}

	public function getTotalLatestNews() {
     	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "LatestNews n LEFT JOIN " . DB_PREFIX . "LatestNews_to_store n2s ON (n.LatestNews_id = n2s.LatestNews_id) WHERE n2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND n.status = '1'");
		if ($query->row) {
			return $query->row['total'];
		} else {
			return FALSE;
		}
	}	
}
?>
