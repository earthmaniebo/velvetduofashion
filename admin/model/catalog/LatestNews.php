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

	public function addLatestNews($data) {
	
		$this->db->query("INSERT INTO " . DB_PREFIX . "LatestNews SET status = '" . (int)$data['status'] . "', date_added = now()");
		$LatestNews_id = $this->db->getLastId();
		
		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "LatestNews SET image = '" . $this->db->escape($data['image']) . "' WHERE LatestNews_id = '" . (int)$LatestNews_id . "'");
		}
		
		foreach ($data['LatestNews_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "LatestNews_description SET LatestNews_id = '" . (int)$LatestNews_id . "', language_id = '" . (int)$language_id . "', title = '" . $this->db->escape($value['title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', description = '" . $this->db->escape($value['description']) . "'");
		}
		
		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'LatestNews_id=" . (int)$LatestNews_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}
		
		if (isset($data['LatestNews_store'])) {
			foreach ($data['LatestNews_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "LatestNews_to_store SET LatestNews_id = '" . (int)$LatestNews_id . "', store_id = '" . (int)$store_id . "'");
			}
		}
		
		$this->cache->delete('LatestNews');
	}

	public function editLatestNews($LatestNews_id, $data) {
	
		$this->db->query("UPDATE " . DB_PREFIX . "LatestNews SET status = '" . (int)$data['status'] . "' WHERE LatestNews_id = '" . (int)$LatestNews_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "LatestNews_description WHERE LatestNews_id = '" . (int)$LatestNews_id . "'");
		
		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "LatestNews SET image = '" . $this->db->escape($data['image']) . "' WHERE LatestNews_id = '" . (int)$LatestNews_id . "'");
		}
		
		foreach ($data['LatestNews_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "LatestNews_description SET LatestNews_id = '" . (int)$LatestNews_id . "', language_id = '" . (int)$language_id . "', title = '" . $this->db->escape($value['title']) . "', meta_description = '" . $this->db->escape($value['meta_description']) . "', description = '" . $this->db->escape($value['description']) . "'");
		}
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'LatestNews_id=" . (int)$LatestNews_id. "'");
		
		if ($data['keyword']) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'LatestNews_id=" . (int)$LatestNews_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
		}
		
		$this->db->query("DELETE FROM " . DB_PREFIX . "LatestNews_to_store WHERE LatestNews_id = '" . (int)$LatestNews_id . "'");
		
		if (isset($data['LatestNews_store'])) {		
			foreach ($data['LatestNews_store'] as $store_id) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "LatestNews_to_store SET LatestNews_id = '" . (int)$LatestNews_id . "', store_id = '" . (int)$store_id . "'");
			}
		}
		
		$this->cache->delete('LatestNews');
	}

	public function deleteLatestNews($LatestNews_id) {
	
		$this->db->query("DELETE FROM " . DB_PREFIX . "LatestNews WHERE LatestNews_id = '" . (int)$LatestNews_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "LatestNews_description WHERE LatestNews_id = '" . (int)$LatestNews_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'LatestNews_id=" . (int)$LatestNews_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "LatestNews_to_store WHERE LatestNews_id = '" . (int)$LatestNews_id . "'");
		$this->cache->delete('LatestNews');
	}	

	public function getLatestNewsStory($LatestNews_id) {
	
		$query = $this->db->query("SELECT DISTINCT *, (SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'LatestNews_id=" . (int)$LatestNews_id . "') AS keyword FROM " . DB_PREFIX . "LatestNews WHERE LatestNews_id = '" . (int)$LatestNews_id . "'");
		
		return $query->row;
	}

	public function getLatestNewsDescriptions($LatestNews_id) {
	
		$LatestNews_description_data = array();
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "LatestNews_description WHERE LatestNews_id = '" . (int)$LatestNews_id . "'");
		
		foreach ($query->rows as $result) {
			$LatestNews_description_data[$result['language_id']] = array(
				'title'            => $result['title'],
				'meta_description' => $result['meta_description'],
				'description'      => $result['description']
			);
		}
		
		return $LatestNews_description_data;
	}

	public function getLatestNewsStores($LatestNews_id) {
	
		$LatestNewspage_store_data = array();
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "LatestNews_to_store WHERE LatestNews_id = '" . (int)$LatestNews_id . "'");
		
		foreach ($query->rows as $result) {
			$LatestNewspage_store_data[] = $result['store_id'];
		}
		
		return $LatestNewspage_store_data;
	}

	public function getLatestNews() {
	
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "LatestNews n LEFT JOIN " . DB_PREFIX . "LatestNews_description nd ON (n.LatestNews_id = nd.LatestNews_id) WHERE nd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY n.date_added");

		return $query->rows;
	}

	public function getTotalLatestNews() {
	
		$this->checkLatestNews();
     	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "LatestNews");

		return $query->row['total'];
	}	

	public function checkLatestNews() {
	
		$create_LatestNews = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "LatestNews` (`LatestNews_id` int(11) NOT NULL auto_increment, `status` int(1) NOT NULL default '0', `image` varchar(255) collate utf8_bin default NULL, `image_size` int(1) NOT NULL default '0', `date_added` datetime default NULL, PRIMARY KEY  (`LatestNews_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;";
		$this->db->query($create_LatestNews);
		
		$create_LatestNews_descriptions = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "LatestNews_description` (`LatestNews_id` int(11) NOT NULL default '0', `language_id` int(11) NOT NULL default '0', `title` varchar(64) collate utf8_bin NOT NULL default '', `meta_description` varchar(255) collate utf8_bin NOT NULL, `description` text collate utf8_bin NOT NULL, PRIMARY KEY  (`LatestNews_id`,`language_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;";
		$this->db->query($create_LatestNews_descriptions);
		
		$create_LatestNews_to_store = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "LatestNews_to_store` (`LatestNews_id` int(11) NOT NULL, `store_id` int(11) NOT NULL, PRIMARY KEY  (`LatestNews_id`, `store_id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;";
		$this->db->query($create_LatestNews_to_store);
	}
}
?>