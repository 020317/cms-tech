<?php
require 'environment.php';

define("BASE", "http://localhost/techleadlibrary")

global $config;
$config = array();
if(ENVIRONMENT == 'development') {

	  $config['dbname'] = 'techleadlibrary';
      $config['host'] = 'localhost';
      $config['dbuser'] = 'WRG';
      $config['dbpass'] = '020317WRG'
} else {
      $config['dbname'] = 'techleadlibrary';
      $config['host'] = 'localhost'
      $config['dbuser'] = 'WRG'
      $config['dbpass'] = '020317WRG'

}
?>