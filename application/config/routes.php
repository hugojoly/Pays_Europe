<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'accueil';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
$route['REST/([a-zA-Z0-9]+)/(\d+)'] = "REST/$1/index/$2";