<?php

$currentPath = __DIR__;
$currentPathArray = explode("\\", $currentPath);
array_pop($currentPathArray);
$var_file = implode("\\", $currentPathArray);

require_once ($var_file . "\\var.php");

require_once ($_SERVER['DOCUMENT_ROOT'] . $CONFIG_FILE);

header("Location: /tugas-kuliah/leafleat.js/tugas/index.php");
session_start();
session_destroy();
session_unset();