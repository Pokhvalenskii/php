<?php
require_once 'index.php';

$dbConfig = new DBConfig();
$cProduct = new CProduct();

$article = $_GET['article'];
$page = $_GET['page'] ? $_GET['page'] : 0;

$cProduct -> query($dbConfig -> connect, "UPDATE `products` SET `Hidden` = '0' WHERE `products`.`PRODUCT_ARTICLE` = $article");

header("Location: /?page=$page");