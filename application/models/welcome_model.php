<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome_model extends CI_Model {

function get_select_currency() {
	$this->db->group_by('NumCode'); 
	$a = $this->db->get('currency');
	return $a->result_array(); 
}

function get_table_currency() {
	$this->db->group_by(array("NumCode", "Date")); 
	$a = $this->db->get('currency');
	return $a->result_array(); 
}

}