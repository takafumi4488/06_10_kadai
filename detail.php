<?php
$id = $_GET["id"];

//1.  DB接続します
include("functions.php");
$pdo = db_conn();


//２．データ登録SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_an_table WHERE id=:id");
$stmt->bindValue(":id",$id);
$status = $stmt->execute();

//３．データ表示
$view="";
if($status==false){
  //execute（SQL実行時にエラーがある場合）
  errorMsg($stmt);
}else{
  //Selectデータの数だけ自動でループしてくれる
  $rs = $stmt->fetch();
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    $view .='<p>';
    $view .='<a href="detail.php?id='.$result["id"].'">';
    $view .= $result["name"]."[".$result["indate"]."]<br>";
    $view .='</a>';
    $view .='</p>';

  }
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>出張記録</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一覧</a></div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post" action="update.php">
  <div class="jumbotron">
   <fieldset>
    <legend>出張記録</legend>
     <label>会社：<input type="text" name="name" value="<?=$rs["name"]?>"></label><br>
     <label>面談者：<input type="text" name="email" value="<?=$rs["email"]?>"></label><br>
     <label>内容<textArea name="naiyou" rows="4" cols="40"><?=$rs["naiyou"]?></textArea></label><br>
     <input type="submit" value="送信">
     <input type="hidden" name="id" value="<?=$rs["id"]?>">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
