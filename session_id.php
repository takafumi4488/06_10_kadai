<?php
session_start();
$id = session_id();
$_SESSION["name"]="yamazaki";
$_SESSION["amonu"]=1000;
echo $id;

?>