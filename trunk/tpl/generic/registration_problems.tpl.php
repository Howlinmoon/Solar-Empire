<?php
class_exists('Savant2') || exit;

if (!function_exists('makeList')) {
	require('inc/list.inc.php');
}

$this->pageName = 'Register';
$this->title = 'Problems while registering your new account';

include($this->loadTemplate('inc/header_splash.tpl.php'));

?><h1>Register an account</h1>
<?php

echo makeList($this, 'Problems', $this->problems);

?><h2><a href="register.php" onclick="history.back(); return false;">Try 
again</a></h2>
<?php

include($this->loadTemplate('inc/footer_splash.tpl.php'));

?>
