<?php
if(!defined('ROOT')) exit('Direct Access Is Not Allowed');

$slug=_slug("page/slug1/slug2/slug3");

if(!isset($slug['page']) || strlen($slug['page'])<=0) $slug['page']="home";

$pageFiles=[
		APPROOT.APPS_PAGES_FOLDER."{$slug['page']}.php",
		APPROOT.APPS_PAGES_FOLDER."{$slug['page']}.htm",
		APPROOT.APPS_PAGES_FOLDER."error.php"
	];
foreach ($pageFiles as $file) {
	if(file_exists($file)) {
		include_once $file;
		break;
	}
}
?>
