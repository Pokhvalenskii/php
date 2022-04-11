<?php
  class DBConfig {

    public $connect;

    public function __construct() {
      $this -> db_connect();
    }

    public function db_connect() {
      $this->connect = mysqli_connect('localhost', 'root', '','vedita');
      if(mysqli_connect_error()) {
        die('DB ERROR');
      }
    }
  }

  class CProduct {

    // public $query;

    public function showAll($connect, $SQL, $LIMIT) {
      $LIMIT = $LIMIT === NULL ? 'LIMIT 3' : 'LIMIT '.$_GET['page'].', 3';
      $query = mysqli_query($connect, $SQL.$LIMIT);
      // $this -> query = $query;
      return $query;
    }

    public function query($connect, $SQL) {
      mysqli_query($connect, $SQL);
    }

  }
  $page = $_GET['page'];
  $prevPage = $page >= 2 ? $page - 2: $page;

  $dbConfig = new DBConfig();
  $cProduct = new CProduct();
  $products = mysqli_fetch_all($cProduct -> showAll($dbConfig -> connect, "SELECT * FROM `products` WHERE `Hidden` > 0 ORDER BY `DATE_CREATE` ASC ", $page));
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <table>
    <tr>
      <th>Название</th>
      <th>Цена</th>
      <th>#Артикул</th>
      <th>Количество на складе</th>
      <th>Дата создания</th>
      <th>Скрыть</th>
    </tr>
    <?
      foreach($products as $item) {
        ?>
          <tr>
            <td><? echo $item[2]?></td>
            <td><? echo $item[3]?></td>
            <td><? echo $item[4]?></td>
            <td>
              <a href="amount.php/?amount=<? echo $item[5] + 1 ?>&article=<? echo $item[4]?>&page=<? echo $page ?>">+</a>
                <? echo $item[5]?>
              <a href="amount.php/?amount=<? echo $item[5] - 1 ?>&article=<? echo $item[4]?>&page=<? echo $page ?>">-</a>
            </td>
            <td><? echo $item[6]?></td>
            <td><a href="hide.php/?article=<? echo $item[4]?>&page=<? echo $page ?>">&#10006;</a></td>
          </tr>
        <?
      }
    ?>
  </table>
  <div class="nav">
    <a href="/?page=<? echo $prevPage ?>">&#8592;</a>
    <a href="/?page=<? echo $page += 2 ?>">&#8594;</a>
  </div>
  <style type="text/css">
    a {
      height: 10px;
      text-decoration: none;
      padding: 3px;
    }
    table {
      display: flex;
      justify-content: center;
    }
    td {
      text-align: center;
    }
    .nav {
      margin-top: 35px;
      display: flex;
      justify-content: center;
    }
  </style>
</body>
</html>