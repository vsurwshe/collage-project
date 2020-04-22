<?php
session_start();
unset($_SESSION["pairaVee"]);
unset($_SESSION["supriPolice"]);
unset($_SESSION["policeStation"]);
header("Location: index.php");
?>