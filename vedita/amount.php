<?php
require_once 'index.php';

$dbConfig = new DBConfig();
$cProduct = new CProduct();

$article = $_GET['article'];
$amount = $_GET['amount'];
$page = $_GET['page'] ? $_GET['page'] : 0;

$cProduct -> query($dbConfig -> connect, "UPDATE `products` SET `PRODUCT_QUANTITY` = $amount WHERE `products`.`PRODUCT_ARTICLE` = $article");

header("Location: /?page=$page");