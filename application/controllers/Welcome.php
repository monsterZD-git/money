<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('top');
		$this->load->view('welcome_message');
		$this->load->view('bottom');
	}

	public function charts()
	{
		$this->load->model("welcome_model");
		$data['get_select_currency'] = $this->welcome_model->get_select_currency();
		$data['table_currency'] = $this->welcome_model->get_table_currency();

		$this->load->view('top');
		$this->load->view('charts', $data);
		$this->load->view('bottom');
	}

	public function charts_filtrs()
	{

		$date1 = htmlspecialchars($this->input->post('date1'));
		$date2 = htmlspecialchars($this->input->post('date2'));
		$NumCode = htmlspecialchars($this->input->post('NumCode'));
		$filtrs = htmlspecialchars($this->input->post('filtrs'));

		$this->db->select('Value, Date, CharCode');
		if($filtrs == 'true'){
			$this->db->where('Date <=', $date2);
			$this->db->where('Date >=', $date1);
			$this->db->where('NumCode', $NumCode);	
		} else {
			$this->db->where('NumCode', 840);	
		}
		$this->db->group_by("Date");

		$a = $this->db->get('currency');
	  	echo json_encode($a->result());
	}

	public function tables()
	{
		$this->load->model("welcome_model");
		$data['get_select_currency'] = $this->welcome_model->get_select_currency();
		$data['table_currency'] = $this->welcome_model->get_table_currency();
		
		$this->load->view('top');
		$this->load->view('tables', $data);
		$this->load->view('bottom');
	}

	public function tables_filtrs()
	{
		$date1 = htmlspecialchars($this->input->post('date1'));
		$date2 = htmlspecialchars($this->input->post('date2'));
		$NumCode = htmlspecialchars($this->input->post('NumCode'));

		$this->db->select('id, NumCode, CharCode, Nominal, Name, Value, Date');
		$this->db->where('Date <=', $date2);
		$this->db->where('Date >=', $date1);
		if($NumCode != 0){
			$this->db->where('NumCode', $NumCode);
		}
		$this->db->group_by(array("NumCode", "Date"));
		$a = $this->db->get('currency');
  		echo json_encode($a->result());
  		//echo $out;
	}

	public function autoload()
	{
		$this->load->view('top');
		$this->load->view('autoload');
		$this->load->view('bottom');
	}

	public function loading()
	{
		$this->load->view('top');
		$this->load->view('loading');
		$this->load->view('bottom');
	}

	public function loading_file()
	{
		if(isset($_FILES['exampleFormControlFile1'])){
		  // ВАЖНО! тут должны быть все проверки безопасности передавемых файлов и вывести ошибки если нужно

		$uploaddir = './upload'; // . - текущая папка где находится submit.php

		// cоздадим папку если её нет
		if( ! is_dir( $uploaddir ) ) mkdir( $uploaddir, 0777 );

		$files      = $_FILES; // полученные файлы
		$done_files = array();

		// переместим файлы из временной директории в указанную
		foreach( $files as $file ){
			$file_name = $file['name'];

			if( move_uploaded_file( $file['tmp_name'], "$uploaddir/$file_name" ) ){
				$done_files[] = realpath( "$uploaddir/$file_name" );
			}
		}

		$data = $done_files ? array('files' => $file_name, 'error' => '0' ) : array('error' => '1');

		die( json_encode( $data ) );
		}	
	}

	public function parser_file()
	{
		$file_xml = './upload/'.htmlspecialchars($this->input->post('files'));
		$affectedRow = 0;

		$xml = simplexml_load_file($file_xml) or die("Error: Cannot create object");

		#Получаем из объекта дату
    	$date = (string) $xml->attributes()->Date;
    	$date = date( "Y-m-d", strtotime( $date ) );
		foreach ($xml->children() as $row) {

		    $NumCode = $row->NumCode;
		    $CharCode = $row->CharCode;
		    $Nominal = $row->Nominal;
		    $Name = $row->Name;
		    $Value = str_ireplace(",", ".", $row->Value);
        	
		    $data = array(
			    'NumCode' => $NumCode,
			    'CharCode' => $CharCode,
			    'Nominal' => $Nominal,
			    'Name' => $Name,
			    'Value' => $Value,
			    'Date' => $date
		    );

		    $this->db->insert('currency', $data);

		}
	}

	public function json()
	{
		$date1 = htmlspecialchars($this->input->get('date1'));
		$date2 = htmlspecialchars($this->input->get('date2'));
		$NumCode = htmlspecialchars($this->input->get('NumCode'));

		$this->db->select('id, NumCode, CharCode, Nominal, Name, Value, Date');
		$this->db->where('Date <=', $date2);
		$this->db->where('Date >=', $date1);
		if($NumCode != 0){
			$this->db->where('NumCode', $NumCode);
		}
		$this->db->group_by(array("NumCode", "Date"));
		$a = $this->db->get('currency');

		//Print the array in a simple JSON format
	  	$data['json'] = json_encode($a->result(), JSON_PRETTY_PRINT);
		$this->load->view('json', $data);
	}

	public function setting()
	{
		$this->load->view('top');
		$this->load->view('setting');
		$this->load->view('bottom');
	}

	public function instruction()
	{
		$this->load->view('top');
		$this->load->view('instruction');
		$this->load->view('bottom');
	}

	public function currency_load()
	{
		$date1 = htmlspecialchars($this->input->post('date1'));
		$date2 = htmlspecialchars($this->input->post('date2'));
		$NumCode = htmlspecialchars($this->input->post('NumCode'));
		# File: usd2.php, v.1.0/20010803
		# Скрипт для вывода информера по поводу курса доллара, установленного ЦБР
		# (c) 2001, Mikhail Turenko, http://www.turenko.net, <mikhail@turenko.net>
		# Использование: <IMG src="usd.php" width="88" height="41" border="0"/>
		# Выводит PNG, размер выбирается автоматически
		# строка "dd/mm/yyyy: 1USD=29.30RUR (+0.02)"

		# Базовый URL скрипта на cbr.ru
		$scripturl = 'http://www.cbr.ru/scripts/XML_dynamic.asp';

		# Начальная дата для запроса 
		$date_1=date('d/m/Y', strtotime($date1));

		# Конечная дата (чтобы учитывать завтра добавьте параметр time()+86400)
		$date_2=date('d/m/Y', strtotime($date2));

		# Таким образом, мы получим данные либо за 2, либо за 3 последних дня.
		# За 2 - если на "сегодня" курс еще не выставили, иначе - за 3

		# Код валюты в архиве данных cbr.ru
		$currency_code=$NumCode;

		# URL для запроса данных
		//$requrl = "{$scripturl}?date_req1={$date_1}&date_req2={$date_2}&VAL_NM_RQ={$currency_code}";
		$requrl = "{$scripturl}?date_req1={$date_1}&date_req2={$date_2}&VAL_NM_RQ={$currency_code}";

		$doc = file($requrl);
		$doc = implode($doc, '');

		//var_dump($requrl);
		# инициализируем массив
		$r = array();

		//var_dump($doc);
		# ищем <ValCurs>...</ValCurs>
		if(preg_match("/<ValCurs.*?>(.*?)<\/ValCurs>/is", $doc))
			# а потом ищем все вхождения <Record>...</Record>
			preg_match_all("/<Record(.*?)>(.*?)<\/Record>/is", $doc, $r, PREG_SET_ORDER);


		print_r($r);
	}
}
